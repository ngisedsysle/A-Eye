namespace AEye
{
    /// <summary>
    /// Structure for the JSON.
    /// Use to store the configuration.
    /// </summary>
    public class ConfigFile
    {
        /// <summary>
        /// Empty constructor.
        /// </summary>
        public ConfigFile()
        {
        }

        /// <summary>
        /// Full constructor with nullable value.
        /// </summary>
        /// <param name="config">Ref to Config object.</param>
        /// <param name="weights">Ref to Weights object.</param>
        /// <param name="takePicture">Ref to TakePicture object.</param>
        public ConfigFile(Config? config, Weights? weights, TakePicture? takePicture)
        {
            this.Config = config;
            this.Weights = weights;
            this.TakePicture = takePicture;
        }

        public Config? Config { get; set; }
        public Weights? Weights { get; set; }
        public TakePicture? TakePicture { get; set; }
    }

    /// <summary>
    /// Structure to indicate if a manual picture must be taken.
    /// </summary>
    public class TakePicture
    {
        /// <summary>
        /// Boolean to indicate the status.
        /// </summary>
        public string Valid { get; set; }

        /// <summary>
        /// Full constructor.
        /// </summary>
        /// <param name="v">Boolean value</param>
        public TakePicture(string v)
        {
            Valid = v;
        }
        /// <summary>
        /// Empty constructor.
        /// </summary>
        public TakePicture()
        {
            Valid = false.ToString();
        }
    }

    /// <summary>
    /// Structure to indicate if new weights are available.
    /// </summary>
    public class Weights
    {
        /// <summary>
        /// Boolean to indicate the status.
        /// </summary>
        public string Valid { get; set; }
        /// <summary>
        /// Full constructor.
        /// </summary>
        /// <param name="v">Boolean value</param>
        public Weights(string v)
        {
            Valid = v;
        }
        /// <summary>
        /// Empty constructor.
        /// </summary>
        public Weights()
        {
            this.Valid = false.ToString();
        }
    }

    /// <summary>
    /// Configuration of the Visor app.
    /// </summary>
    public class Config
    {
        /// <summary>
        /// Boolean start / stop.
        /// </summary>
        public string StartStop { get; set; }
        /// <summary>
        /// Integer value to indicate the mode.
        /// See documentation.
        /// </summary>
        public string ModeSelector { get; set; }

        /// <summary>
        /// Full constructor.
        /// </summary>
        /// <param name="checked">Start / Stop string value</param>
        /// <param name="selectedIndex">Mode as integer string value</param>
        public Config(string @checked, string selectedIndex)
        {
            this.StartStop = @checked;
            this.ModeSelector = selectedIndex;
        }
        /// <summary>
        /// Empty constructor.
        /// </summary>
        public Config()
        {
            this.StartStop = false.ToString();
            this.ModeSelector = false.ToString();
        }
    }
}