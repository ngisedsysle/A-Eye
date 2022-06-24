using System.Diagnostics;
using System.Net;
using System.Text.Json;

namespace AEye
{
    /// <summary>
    /// Main class of the program.
    /// </summary>
    public static class Program
    {
        /// <summary>
        /// Different communication model can be used. 
        /// Here you can see which one. 
        /// </summary>
        public enum ComMode
        {
            /// <summary>
            /// Historical way of communication, you will use named pipe for TM, 
            /// comparison between json file for TC, and TCP connection implemented in python. 
            /// This is deprecated.
            /// </summary>
            JSONxNAMEDPIPE_e,
            /// <summary>
            /// New way of communication, every data transits by MQTT. 
            /// There's no more TCP client and python client are not used. 
            /// Every communication are directly in C#.
            /// Python is still used for naming and ordering images. 
            /// </summary>
            MQTT_e
        }

        /// <summary>
        /// By setting this variable, you choose which communication you want to use. 
        /// See enum type. 
        /// </summary>
        public static ComMode comMode = ComMode.MQTT_e;

        /// <summary>
        /// Force to send TC, even if the previous config was the same.
        /// Can repeat a TC.
        /// </summary>
        public static bool forceTC = true;

        /// <summary>
        /// Store the IP address.
        /// </summary>
        public static IPAddress? Ip;

        /// <summary>
        /// Store the controller.
        /// </summary>
        public static Controller controller = new Controller();

        /// <summary>
        /// Store the log.
        /// </summary>
        public static string log = "";


        /// <summary>
        ///  The main entry point for the application.
        /// </summary>
        [STAThread]
        public static void Main()
        {
            // To customize application configuration such as set high DPI settings or default font,
            // see https://aka.ms/applicationconfiguration.

            /*// DEBUG --> This will kill the previous process.
            foreach (var process in Process.GetProcessesByName("pythonw"))
            {
                process.Kill();
            }*/

            ApplicationConfiguration.Initialize();
            if (comMode == ComMode.JSONxNAMEDPIPE_e)
            {
                resetConfig(); 
            }
            Thread run_thr = new Thread(RunThread);
            run_thr.Start();
            Application.Run(controller);

            if (comMode == ComMode.JSONxNAMEDPIPE_e)
            {
                // Clean spaces
                Thread.Sleep(3000);
                foreach (var process in Process.GetProcessesByName("pythonw"))
                {
                    process.Kill();
                }
            }

            Environment.Exit(0);
        }

        /// <summary>
        /// Initialise last_config.json with init parameters.
        /// </summary>
        private static void resetConfig()
        {
            // Create empty configuration 
            ConfigFile conf = new ConfigFile(new Config("true",""), new Weights("false"), new TakePicture("false"));

            // Serialize in Json
            string jsonString = JsonSerializer.Serialize(conf);

            // Write in file
            File.WriteAllText("last_config.json", jsonString);
        }

        /// <summary>
        /// Thread for backend.
        /// Must run other thread, such as pipe, TCP-client, ...
        /// </summary>
        static void RunThread()
        {
            SubProcess subProcess = new SubProcess();
            Thread localCom_thr = new Thread(subProcess.LocalCom_run);
            localCom_thr.Start();

            if (comMode == ComMode.JSONxNAMEDPIPE_e)
            {
                Thread clientTCP_thr = new Thread(subProcess.ClientPythonLaunch);
                clientTCP_thr.Start();
            }
            while (true)
            {
                Thread.Sleep(1000);
            }
        }
    }
}