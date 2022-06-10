using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO.Pipes;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AEye
{
    /// <summary>
    /// Class to store the methods used by thread.
    /// </summary>
    public class SubProcess
    {
        /// <summary>
        /// Run a python script and redirect the python output to the log.
        /// </summary>
        /// <param name="cmd">path to the python script.</param>
        /// <param name="args">arguments to pass to the script.</param>
        public void run_cmd(string cmd, string args)
        {
            ProcessStartInfo start = new ProcessStartInfo();
            start.FileName = "python.exe";
            start.Arguments = string.Format("{0} {1}", cmd, args);
            start.UseShellExecute = false;
            start.RedirectStandardOutput = true;
            Process? process = Process.Start(start);
            if (process == null)
            {
                Program.log += "[ERROR][RUN_CMD] Cannot start " + cmd + " process\n";
                return;
            }
            else
            {
                using (StreamReader reader = process.StandardOutput)
                {
                    string result = reader.ReadToEnd();
                    Program.log += "[PYTHON][" + cmd + "] " + result + "\n";
                }
            }
        }

        /// <summary>
        /// Method to call in a thread.
        /// This will start the python client to initialize the connection
        /// </summary>
        public void ClientPythonLaunch()
        {
            while (Program.Ip == null)
            {
                //MessageBox.Show("Set IP first");
                //return;
            }
            Program.log += "[INFO] Run Python Client\n";
            run_cmd(".\\A-Eye_Communication\\client.py", "-i " + Program.Ip.ToString() + " -p 64000");
        }

        /// <summary>
        /// Named pipe is used to communication between Python and C#.
        /// This will initiate the pipe and listen on it.
        /// </summary>
        public void PipeServer_Run()
        {
            NamedPipeServerStream serverStream = new NamedPipeServerStream("CSServer", PipeDirection.In);
            string line;
            while (true)
            {
                serverStream.WaitForConnection();
                StreamReader reader = new StreamReader(serverStream);
                while ((line = reader.ReadLine()) != null)
                {
                    Program.log += "[INFO][From Python pipe] " + line + "\n";
                    if (line.Contains("Image"))
                    {
                        Thread disp = new Thread(Program.controller.Refresh_img);
                        disp.Start();
                        if (line.Contains("Manual"))
                        {
                            Thread store_thr = new Thread(this.storeManualImg);
                            store_thr.Start();
                        }
                        else
                        {
                            Thread store_thr = new Thread(this.storeAutoImg);
                            store_thr.Start();

                        }
                    }
                }
                serverStream.Disconnect();
            }
        }

        /// <summary>
        /// Run the python script to store the image with the goods arguments "manual".
        /// </summary>
        public void storeManualImg()
        {
            run_cmd("StockagePC/run_stockage.py", "-f temp.bmp -m M");
        }

        /// <summary>
        /// Run the python script to store the image with the goods arguments "auto".
        /// </summary>
        public void storeAutoImg()
        {
            run_cmd("StockagePC/run_stockage.py", "-f temp.bmp");
        }
    }
}
