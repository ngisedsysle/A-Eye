using System.Net;
using System.Net.NetworkInformation;
using System.Text.Json;
using System.Text.Json.Serialization;


namespace AEye
{
    public partial class Controller : Form
    {
        /// <summary>
        /// Used to know which file to show.
        /// </summary>
        private bool dispSecond = false;

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
            // Get the current config
            var config = new ConfigFile(
                new Config(startStop_cb.Checked.ToString(), mode_cb.SelectedIndex.ToString()),
                new Weights(false.ToString()),
                new TakePicture(false.ToString()));

            // Serialize in Json
            string jsonString = JsonSerializer.Serialize(config);

            // Write in file
            File.WriteAllText("config.json", jsonString);

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

        /// <summary>
        /// Only in manual mode.
        /// Ask the board to take a picture and give it back.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        public void TakePict_btn_Click(object sender, EventArgs e)
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
            MessageBox.Show(Program.log);
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
