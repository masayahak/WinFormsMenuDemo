namespace WinFormsMenuDemo.Controls
{
    partial class TopBarControl
    {
        private Label LblTitle;
        private Button BtnMin;
        private Button BtnMax;
        private Button BtnClose;

        private void InitializeComponent()
        {
            this.LblTitle = new System.Windows.Forms.Label();
            this.BtnMin = new System.Windows.Forms.Button();
            this.BtnMax = new System.Windows.Forms.Button();
            this.BtnClose = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // lblTitle
            // 
            this.LblTitle.AutoSize = true;
            this.LblTitle.ForeColor = System.Drawing.Color.White;
            this.LblTitle.Location = new System.Drawing.Point(10, 5);
            this.LblTitle.Name = "lblTitle";
            this.LblTitle.Size = new System.Drawing.Size(100, 21);
            this.LblTitle.TabIndex = 0;
            this.LblTitle.Text = "アプリタイトル";
            this.LblTitle.BackColor = System.Drawing.Color.Transparent;
            // 
            // btnMin
            // 
            this.BtnMin.FlatAppearance.BorderSize = 0;
            this.BtnMin.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnMin.Image = Properties.Resources.dash;
            this.BtnMin.Name = "btnMin";
            this.BtnMin.Size = new System.Drawing.Size(30, 30);
            this.BtnMin.TabIndex = 1;
            this.BtnMin.UseVisualStyleBackColor = true;
            this.BtnMin.Click += new System.EventHandler(this.BtnMin_Click);
            this.BtnMin.BackColor = System.Drawing.Color.Transparent;
            // 
            // btnMax
            // 
            this.BtnMax.FlatAppearance.BorderSize = 0;
            this.BtnMax.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnMax.Image = Properties.Resources.square;
            this.BtnMax.Name = "btnMax";
            this.BtnMax.Size = new System.Drawing.Size(30, 30);
            this.BtnMax.TabIndex = 2;
            this.BtnMax.UseVisualStyleBackColor = true;
            this.BtnMax.Click += new System.EventHandler(this.BtnMax_Click);
            this.BtnMax.BackColor = System.Drawing.Color.Transparent;
            // 
            // btnClose
            // 
            this.BtnClose.FlatAppearance.BorderSize = 0;
            this.BtnClose.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnClose.Image = Properties.Resources.x;
            this.BtnClose.Name = "btnClose";
            this.BtnClose.Size = new System.Drawing.Size(30, 30);
            this.BtnClose.TabIndex = 3;
            this.BtnClose.UseVisualStyleBackColor = true;
            this.BtnClose.Click += new System.EventHandler(this.BtnClose_Click);
            this.BtnClose.BackColor = System.Drawing.Color.Transparent;
            // 
            // TopBarControl
            // 
            this.BackColor = System.Drawing.Color.DarkOrange;
            this.Controls.Add(this.LblTitle);
            this.Controls.Add(this.BtnMin);
            this.Controls.Add(this.BtnMax);
            this.Controls.Add(this.BtnClose);
            this.Font = new System.Drawing.Font("Yu Gothic UI", 12F);
            this.Name = "TopBarControl";
            this.Size = new System.Drawing.Size(1400, 30);
            this.ResumeLayout(false);
            this.PerformLayout();
        }
    }
}
