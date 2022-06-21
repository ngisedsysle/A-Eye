using System.Net;
using System.Net.NetworkInformation;
using System.Text;
using System.Text.Json;
using System.Text.Json.Serialization;
using uPLibrary.Networking.M2Mqtt;
using uPLibrary.Networking.M2Mqtt.Messages;

namespace AEye
{
    public partial class Controller : Form
    {
        /// <summary>
        /// Used to know which file to show.
        /// </summary>
        private bool dispSecond = false;

        ConfigFile lastConfig = new ConfigFile(new Config(true.ToString(), false.ToString()), new Weights(), new TakePicture());

        MqttClient mqttClient;

        public void set_ip_tb(string p0)
        {
            ip_tb.Text = p0;
        }

        /// <summary>
        /// Initialize the component.
        /// Give selected index an initial value.
        /// </summary>
        public Controller()
        {
            InitializeComponent();
            mode_cb.SelectedIndex = 0;
        }

        /// <summary>
        /// Write the configuration to the config.json.
        /// Goal is to send it to the board.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void SetConfig_Click(object sender, EventArgs e)
        {
            if (Program.comMode == 0)
                Build_json_with_actual_config();
            else if (Program.comMode == 1)
                SendTCByMQTT();
            else
            {
                Program.log += "Mode not implemented in set config !!!";
                return;
            }

            // Activate button
            if (mode_cb.SelectedIndex == 1)
            {
                takePict_btn.Enabled = true;
            }
            else
            {
                takePict_btn.Enabled = false;
            }
        }

        private void SendTCByMQTT()
        {
            // Get the current config
            var config = new ConfigFile(
                new Config(startStop_cb.Checked.ToString(), mode_cb.SelectedIndex.ToString()),
                new Weights(false.ToString()),
                new TakePicture(false.ToString()));

            // Compare to the last one 
            string topic = "A-Eye/toServer";
            if (!lastConfig.Config.ModeSelector.Equals(config.Config.ModeSelector))
            {
                Send_mqtt("1" + mode_cb.SelectedIndex.ToString(), topic);
            }
            if (!lastConfig.Config.StartStop.Equals(config.Config.StartStop))
            {
                if (config.Config.StartStop == true.ToString())
                {
                    Send_mqtt("31", topic);
                }
                else
                {
                    Send_mqtt("30", topic);
                }
            }
            if (!lastConfig.TakePicture.Valid.Equals(config.TakePicture.Valid))
            {
                if (config.TakePicture.Valid == true.ToString())
                {
                    Send_mqtt("21", topic);
                }
                else
                {
                    Send_mqtt("20", topic);
                }
            }
            lastConfig = config;
        }

        private void Build_json_with_actual_config()
        {
            // Get the current config
            var config = new ConfigFile(
                new Config(startStop_cb.Checked.ToString(), mode_cb.SelectedIndex.ToString()),
                new Weights(false.ToString()),
                new TakePicture(false.ToString()));

            // Serialize in Json
            string jsonString = JsonSerializer.Serialize(config);

            // Write in file
            File.WriteAllText("config.json", jsonString);
        }

        public void SetMode(int mode)
        {
            mode_cb.SelectedIndex = mode;
        }

        public Label getStatus()
        {
            return this.Status;
        }

        /// <summary>
        /// Only in manual mode.
        /// Ask the board to take a picture and give it back.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void TakePict_btn_Click(object sender, EventArgs e)
        {
            if (Program.comMode == 0)
            {
                Write_json_take_pict();
            }
            else if (Program.comMode == 1)
            {
                string message = "21";
                string topic = "A-Eye/toServer";
                Send_mqtt(message, topic);
            }
        }

        private static void Send_mqtt(string message, string topic)
        {
            MqttClient client = new MqttClient(AEye.Program.Ip);
            string clientId = Guid.NewGuid().ToString();
            client.Connect(clientId);
            client.Publish(topic, Encoding.UTF8.GetBytes(message));
        }

        private static void Write_json_take_pict()
        {
            // Open the file
            String str;
            try
            {
                str = File.ReadAllText("config.json");
            }
            catch (Exception)
            {
                MessageBox.Show("Cannot read config.json");
                return;
            }
            if (str == null)
            {
                MessageBox.Show("Invalid content in config.json file");
                return;
            }

            // Deserialize
            var options = new JsonSerializerOptions
            {
                PropertyNameCaseInsensitive = true
            };
            ConfigFile? config = JsonSerializer.Deserialize<ConfigFile>(str, options);
            if (config == null)
            {
                MessageBox.Show("Invalid json structure in config.json file");
                return;
            }

            // Modify the JSON
            if (config.TakePicture == null)
            {
                config.TakePicture = new TakePicture(true.ToString());
            }
            else
            {
                config.TakePicture.Valid = true.ToString();
            }

            // Save in JSON
            File.WriteAllText("config.json", JsonSerializer.Serialize<ConfigFile>(config));
        }

        /// <summary>
        /// Set the IP to communicate with the board.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void Ip_btn_Click(object sender, EventArgs e)
        {
            try
            {
                Program.Ip = IPAddress.Parse(ip_tb.Text);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return;
            }

            Verify_Ping();

            SetCallback();
        }

        private void SetCallback()
        {
            if (mqttClient.IsConnected)
            {
                mqttClient.Disconnect();
            }
            mqttClient = new MqttClient(Program.Ip.ToString());
            mqttClient.MqttMsgPublishReceived += client_MqttMsgPublishReceived;
            mqttClient.Connect(Guid.NewGuid().ToString());
            mqttClient.Subscribe(new string[] { "A-Eye/toClient" }, new byte[] { MqttMsgBase.QOS_LEVEL_AT_LEAST_ONCE });
            Program.log += "[MQTT] Callback set !\n";
        }

        private void client_MqttMsgPublishReceived(object sender, MqttMsgPublishEventArgs e)
        {
            File.WriteAllBytes("A-Eye_Communication/content.msg", e.Message);
            new SubProcess().run_cmd("A-Eye_Communication/decodageTM.py", "");
        }

        private void Verify_Ping()
        {
            var pingSender = new Ping();
            PingReply reply = pingSender.Send(Program.Ip);
            if (reply.Status == IPStatus.Success)
            {
                //MessageBox.Show("New IP set : " + Program.Ip);
                Status.Text = "Connected";
                Status.BackColor = Color.YellowGreen;
            }
            else
            {
                MessageBox.Show("Wrong IP set : " + Program.Ip);
                Program.Ip = null;
                Status.Text = "Wrong IP";
                Status.BackColor = Color.Red;
            }
        }

        /// <summary>
        /// Open File Dialog to select the picture to display
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void SelectPict_btn_Click(object sender, EventArgs e)
        {
            if (openFileDialog1.ShowDialog() == DialogResult.OK)
            {
                visionneuse.Load(openFileDialog1.FileName);
            }
        }

        /// <summary>
        /// Display the log string in a messageBox.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void ViewLog_btn_Click(object sender, EventArgs e)
        {
            FlexibleMessageBox.Show(Program.log);
        }

        /// <summary>
        /// This method is in charge of displaying the incomming picture.
        /// </summary>
        public void Refresh_img()
        {
            if (auto_cb.Checked)
            {
                if (dispSecond)
                {
                    dispSecond = false;
                    File.Copy("temp.bmp", "disp2.bmp", true);
                    visionneuse.Load("disp2.bmp");
                }
                else
                {
                    dispSecond = true;
                    File.Copy("temp.bmp", "disp1.bmp", true);
                    visionneuse.Load("disp1.bmp");
                }
            }
        }
    }
}
