namespace AEye
{
    partial class Controller
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Controller));
            this.tableLayoutPanel1 = new System.Windows.Forms.TableLayoutPanel();
            this.visionneuse = new System.Windows.Forms.PictureBox();
            this.flowLayoutPanel1 = new System.Windows.Forms.FlowLayoutPanel();
            this.SelectPict_btn = new System.Windows.Forms.Button();
            this.auto_cb = new System.Windows.Forms.CheckBox();
            this.tableLayoutPanel2 = new System.Windows.Forms.TableLayoutPanel();
            this.SetConfig = new System.Windows.Forms.Button();
            this.tableLayoutPanel3 = new System.Windows.Forms.TableLayoutPanel();
            this.label1 = new System.Windows.Forms.Label();
            this.mode_cb = new System.Windows.Forms.ComboBox();
            this.tableLayoutPanel5 = new System.Windows.Forms.TableLayoutPanel();
            this.takePict_btn = new System.Windows.Forms.Button();
            this.viewLog_btn = new System.Windows.Forms.Button();
            this.tableLayoutPanel6 = new System.Windows.Forms.TableLayoutPanel();
            this.startStop_cb = new System.Windows.Forms.CheckBox();
            this.Status = new System.Windows.Forms.Label();
            this.tableLayoutPanel4 = new System.Windows.Forms.TableLayoutPanel();
            this.ip_tb = new System.Windows.Forms.TextBox();
            this.ip_btn = new System.Windows.Forms.Button();
            this.openFileDialog1 = new System.Windows.Forms.OpenFileDialog();
            this.tableLayoutPanel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.visionneuse)).BeginInit();
            this.flowLayoutPanel1.SuspendLayout();
            this.tableLayoutPanel2.SuspendLayout();
            this.tableLayoutPanel3.SuspendLayout();
            this.tableLayoutPanel5.SuspendLayout();
            this.tableLayoutPanel6.SuspendLayout();
            this.tableLayoutPanel4.SuspendLayout();
            this.SuspendLayout();
            // 
            // tableLayoutPanel1
            // 
            this.tableLayoutPanel1.ColumnCount = 2;
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 30F));
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 70F));
            this.tableLayoutPanel1.Controls.Add(this.visionneuse, 1, 0);
            this.tableLayoutPanel1.Controls.Add(this.flowLayoutPanel1, 1, 1);
            this.tableLayoutPanel1.Controls.Add(this.tableLayoutPanel2, 0, 0);
            this.tableLayoutPanel1.Controls.Add(this.tableLayoutPanel4, 0, 1);
            this.tableLayoutPanel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tableLayoutPanel1.Location = new System.Drawing.Point(0, 0);
            this.tableLayoutPanel1.Name = "tableLayoutPanel1";
            this.tableLayoutPanel1.RowCount = 2;
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 90F));
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 10F));
            this.tableLayoutPanel1.Size = new System.Drawing.Size(893, 479);
            this.tableLayoutPanel1.TabIndex = 0;
            // 
            // visionneuse
            // 
            this.visionneuse.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.visionneuse.Dock = System.Windows.Forms.DockStyle.Fill;
            this.visionneuse.Image = ((System.Drawing.Image)(resources.GetObject("visionneuse.Image")));
            this.visionneuse.Location = new System.Drawing.Point(270, 3);
            this.visionneuse.Name = "visionneuse";
            this.visionneuse.Size = new System.Drawing.Size(620, 425);
            this.visionneuse.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.visionneuse.TabIndex = 0;
            this.visionneuse.TabStop = false;
            // 
            // flowLayoutPanel1
            // 
            this.flowLayoutPanel1.Controls.Add(this.SelectPict_btn);
            this.flowLayoutPanel1.Controls.Add(this.auto_cb);
            this.flowLayoutPanel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.flowLayoutPanel1.Location = new System.Drawing.Point(270, 434);
            this.flowLayoutPanel1.Name = "flowLayoutPanel1";
            this.flowLayoutPanel1.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.flowLayoutPanel1.Size = new System.Drawing.Size(620, 42);
            this.flowLayoutPanel1.TabIndex = 1;
            // 
            // SelectPict_btn
            // 
            this.SelectPict_btn.AutoSize = true;
            this.SelectPict_btn.Dock = System.Windows.Forms.DockStyle.Top;
            this.SelectPict_btn.Location = new System.Drawing.Point(491, 3);
            this.SelectPict_btn.Name = "SelectPict_btn";
            this.SelectPict_btn.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.SelectPict_btn.Size = new System.Drawing.Size(126, 35);
            this.SelectPict_btn.TabIndex = 0;
            this.SelectPict_btn.Text = "Select Picture";
            this.SelectPict_btn.UseVisualStyleBackColor = true;
            this.SelectPict_btn.Click += new System.EventHandler(this.SelectPict_btn_Click);
            // 
            // auto_cb
            // 
            this.auto_cb.AutoSize = true;
            this.auto_cb.Dock = System.Windows.Forms.DockStyle.Fill;
            this.auto_cb.Location = new System.Drawing.Point(373, 3);
            this.auto_cb.Name = "auto_cb";
            this.auto_cb.Size = new System.Drawing.Size(112, 35);
            this.auto_cb.TabIndex = 1;
            this.auto_cb.Text = "Autoload";
            this.auto_cb.UseVisualStyleBackColor = true;
            // 
            // tableLayoutPanel2
            // 
            this.tableLayoutPanel2.ColumnCount = 1;
            this.tableLayoutPanel2.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 100F));
            this.tableLayoutPanel2.Controls.Add(this.SetConfig, 0, 1);
            this.tableLayoutPanel2.Controls.Add(this.tableLayoutPanel3, 0, 0);
            this.tableLayoutPanel2.Controls.Add(this.tableLayoutPanel5, 0, 2);
            this.tableLayoutPanel2.Controls.Add(this.tableLayoutPanel6, 0, 9);
            this.tableLayoutPanel2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tableLayoutPanel2.Location = new System.Drawing.Point(3, 3);
            this.tableLayoutPanel2.Name = "tableLayoutPanel2";
            this.tableLayoutPanel2.RowCount = 10;
            this.tableLayoutPanel2.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 10F));
            this.tableLayoutPanel2.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 10F));
            this.tableLayoutPanel2.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 10F));
            this.tableLayoutPanel2.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 10F));
            this.tableLayoutPanel2.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 10F));
            this.tableLayoutPanel2.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 10F));
            this.tableLayoutPanel2.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 10F));
            this.tableLayoutPanel2.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 10F));
            this.tableLayoutPanel2.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 10F));
            this.tableLayoutPanel2.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 10F));
            this.tableLayoutPanel2.Size = new System.Drawing.Size(261, 425);
            this.tableLayoutPanel2.TabIndex = 2;
            // 
            // SetConfig
            // 
            this.SetConfig.Dock = System.Windows.Forms.DockStyle.Fill;
            this.SetConfig.Location = new System.Drawing.Point(3, 45);
            this.SetConfig.Name = "SetConfig";
            this.SetConfig.Size = new System.Drawing.Size(255, 36);
            this.SetConfig.TabIndex = 4;
            this.SetConfig.Text = "Set configuration";
            this.SetConfig.UseVisualStyleBackColor = true;
            this.SetConfig.Click += new System.EventHandler(this.SetConfig_Click);
            // 
            // tableLayoutPanel3
            // 
            this.tableLayoutPanel3.ColumnCount = 2;
            this.tableLayoutPanel3.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 26.66667F));
            this.tableLayoutPanel3.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 73.33334F));
            this.tableLayoutPanel3.Controls.Add(this.label1, 0, 0);
            this.tableLayoutPanel3.Controls.Add(this.mode_cb, 1, 0);
            this.tableLayoutPanel3.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tableLayoutPanel3.Location = new System.Drawing.Point(3, 3);
            this.tableLayoutPanel3.Name = "tableLayoutPanel3";
            this.tableLayoutPanel3.RowCount = 1;
            this.tableLayoutPanel3.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.tableLayoutPanel3.Size = new System.Drawing.Size(255, 36);
            this.tableLayoutPanel3.TabIndex = 0;
            // 
            // label1
            // 
            this.label1.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(4, 5);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(59, 25);
            this.label1.TabIndex = 0;
            this.label1.Text = "Mode";
            // 
            // mode_cb
            // 
            this.mode_cb.AutoCompleteCustomSource.AddRange(new string[] {
            "Auto (with AI)",
            "Manual capture",
            "Video flux"});
            this.mode_cb.FormattingEnabled = true;
            this.mode_cb.Items.AddRange(new object[] {
            "Auto (with AI)",
            "Manual capture",
            "Video flux"});
            this.mode_cb.Location = new System.Drawing.Point(71, 3);
            this.mode_cb.Name = "mode_cb";
            this.mode_cb.Size = new System.Drawing.Size(181, 33);
            this.mode_cb.TabIndex = 6;
            // 
            // tableLayoutPanel5
            // 
            this.tableLayoutPanel5.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tableLayoutPanel5.AutoSize = true;
            this.tableLayoutPanel5.ColumnCount = 2;
            this.tableLayoutPanel5.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.tableLayoutPanel5.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.tableLayoutPanel5.Controls.Add(this.takePict_btn, 1, 0);
            this.tableLayoutPanel5.Controls.Add(this.viewLog_btn, 0, 0);
            this.tableLayoutPanel5.Location = new System.Drawing.Point(3, 87);
            this.tableLayoutPanel5.Name = "tableLayoutPanel5";
            this.tableLayoutPanel5.RowCount = 1;
            this.tableLayoutPanel5.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100F));
            this.tableLayoutPanel5.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.tableLayoutPanel5.Size = new System.Drawing.Size(255, 36);
            this.tableLayoutPanel5.TabIndex = 3;
            // 
            // takePict_btn
            // 
            this.takePict_btn.Dock = System.Windows.Forms.DockStyle.Fill;
            this.takePict_btn.Enabled = false;
            this.takePict_btn.Location = new System.Drawing.Point(130, 3);
            this.takePict_btn.Name = "takePict_btn";
            this.takePict_btn.Size = new System.Drawing.Size(122, 30);
            this.takePict_btn.TabIndex = 5;
            this.takePict_btn.Text = "TakePicture";
            this.takePict_btn.UseVisualStyleBackColor = true;
            this.takePict_btn.Click += new System.EventHandler(this.TakePict_btn_Click);
            // 
            // viewLog_btn
            // 
            this.viewLog_btn.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.viewLog_btn.Location = new System.Drawing.Point(3, 3);
            this.viewLog_btn.Name = "viewLog_btn";
            this.viewLog_btn.Size = new System.Drawing.Size(121, 30);
            this.viewLog_btn.TabIndex = 6;
            this.viewLog_btn.Text = "View Log";
            this.viewLog_btn.UseVisualStyleBackColor = true;
            this.viewLog_btn.Click += new System.EventHandler(this.ViewLog_btn_Click);
            // 
            // tableLayoutPanel6
            // 
            this.tableLayoutPanel6.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tableLayoutPanel6.AutoSize = true;
            this.tableLayoutPanel6.ColumnCount = 2;
            this.tableLayoutPanel6.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.tableLayoutPanel6.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.tableLayoutPanel6.Controls.Add(this.startStop_cb, 0, 0);
            this.tableLayoutPanel6.Controls.Add(this.Status, 1, 0);
            this.tableLayoutPanel6.Location = new System.Drawing.Point(3, 381);
            this.tableLayoutPanel6.Name = "tableLayoutPanel6";
            this.tableLayoutPanel6.RowCount = 1;
            this.tableLayoutPanel6.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100F));
            this.tableLayoutPanel6.Size = new System.Drawing.Size(255, 41);
            this.tableLayoutPanel6.TabIndex = 5;
            // 
            // startStop_cb
            // 
            this.startStop_cb.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.startStop_cb.AutoSize = true;
            this.startStop_cb.Checked = true;
            this.startStop_cb.CheckState = System.Windows.Forms.CheckState.Checked;
            this.startStop_cb.Location = new System.Drawing.Point(3, 3);
            this.startStop_cb.Name = "startStop_cb";
            this.startStop_cb.Size = new System.Drawing.Size(121, 35);
            this.startStop_cb.TabIndex = 4;
            this.startStop_cb.Text = "Start/Stop";
            this.startStop_cb.UseVisualStyleBackColor = true;
            // 
            // Status
            // 
            this.Status.BackColor = System.Drawing.Color.IndianRed;
            this.Status.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.Status.Dock = System.Windows.Forms.DockStyle.Fill;
            this.Status.Location = new System.Drawing.Point(130, 0);
            this.Status.Name = "Status";
            this.Status.Size = new System.Drawing.Size(122, 41);
            this.Status.TabIndex = 5;
            this.Status.Text = "Wrong IP";
            this.Status.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // tableLayoutPanel4
            // 
            this.tableLayoutPanel4.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.tableLayoutPanel4.AutoSize = true;
            this.tableLayoutPanel4.ColumnCount = 2;
            this.tableLayoutPanel4.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 30.2682F));
            this.tableLayoutPanel4.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 69.7318F));
            this.tableLayoutPanel4.Controls.Add(this.ip_tb, 1, 0);
            this.tableLayoutPanel4.Controls.Add(this.ip_btn, 0, 0);
            this.tableLayoutPanel4.Location = new System.Drawing.Point(3, 434);
            this.tableLayoutPanel4.Name = "tableLayoutPanel4";
            this.tableLayoutPanel4.RowCount = 1;
            this.tableLayoutPanel4.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100F));
            this.tableLayoutPanel4.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 20F));
            this.tableLayoutPanel4.Size = new System.Drawing.Size(261, 42);
            this.tableLayoutPanel4.TabIndex = 3;
            // 
            // ip_tb
            // 
            this.ip_tb.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.ip_tb.Location = new System.Drawing.Point(82, 3);
            this.ip_tb.Name = "ip_tb";
            this.ip_tb.Size = new System.Drawing.Size(176, 31);
            this.ip_tb.TabIndex = 1;
            this.ip_tb.Text = "192.168.1.38";
            // 
            // ip_btn
            // 
            this.ip_btn.Dock = System.Windows.Forms.DockStyle.Fill;
            this.ip_btn.Location = new System.Drawing.Point(3, 3);
            this.ip_btn.Name = "ip_btn";
            this.ip_btn.Size = new System.Drawing.Size(73, 36);
            this.ip_btn.TabIndex = 2;
            this.ip_btn.Text = "Set IP";
            this.ip_btn.UseVisualStyleBackColor = true;
            this.ip_btn.Click += new System.EventHandler(this.Ip_btn_Click);
            // 
            // openFileDialog1
            // 
            this.openFileDialog1.FileName = "openFileDialog1";
            // 
            // Controller
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(10F, 25F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(893, 479);
            this.Controls.Add(this.tableLayoutPanel1);
            this.Name = "Controller";
            this.Text = "A-Eye Controller";
            this.tableLayoutPanel1.ResumeLayout(false);
            this.tableLayoutPanel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.visionneuse)).EndInit();
            this.flowLayoutPanel1.ResumeLayout(false);
            this.flowLayoutPanel1.PerformLayout();
            this.tableLayoutPanel2.ResumeLayout(false);
            this.tableLayoutPanel2.PerformLayout();
            this.tableLayoutPanel3.ResumeLayout(false);
            this.tableLayoutPanel3.PerformLayout();
            this.tableLayoutPanel5.ResumeLayout(false);
            this.tableLayoutPanel6.ResumeLayout(false);
            this.tableLayoutPanel6.PerformLayout();
            this.tableLayoutPanel4.ResumeLayout(false);
            this.tableLayoutPanel4.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private TableLayoutPanel tableLayoutPanel1;
        private PictureBox visionneuse;
        private FlowLayoutPanel flowLayoutPanel1;
        private Button SelectPict_btn;
        private TableLayoutPanel tableLayoutPanel2;
        private TableLayoutPanel tableLayoutPanel3;
        private Label label1;
        private CheckBox startStop_cb;
        private TableLayoutPanel tableLayoutPanel4;
        private TextBox ip_tb;
        private OpenFileDialog openFileDialog1;
        private Button ip_btn;
        private TableLayoutPanel tableLayoutPanel5;
        private Button takePict_btn;
        private CheckBox auto_cb;
        private Button SetConfig;
        private TableLayoutPanel tableLayoutPanel6;
        private Label Status;
        private ComboBox mode_cb;
        private Button viewLog_btn;
    }
}