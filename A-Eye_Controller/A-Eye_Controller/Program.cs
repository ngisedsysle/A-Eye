using System.Diagnostics;
using System.Net;

namespace AEye
{
    /// <summary>
    /// Main class of the program.
    /// </summary>
    public static class Program
    {
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
            ApplicationConfiguration.Initialize();
            Thread run_thr = new Thread(RunThread);
            run_thr.Start();
            Application.Run(controller);
            Environment.Exit(0);
        }

        /// <summary>
        /// Thread for backend.
        /// Must run other thread, such as pipe, TCP-client, ...
        /// </summary>
        static void RunThread()
        {
            SubProcess subProcess = new SubProcess();
            Thread pipe_thr = new Thread(subProcess.PipeServer_Run);
            pipe_thr.Start();
            Thread clientTCP_thr = new Thread(subProcess.ClientPythonLaunch);
            clientTCP_thr.Start();
            while (true)
            {
                Thread.Sleep(1000);
            }
        }
    }
}