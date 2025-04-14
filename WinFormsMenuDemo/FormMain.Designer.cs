namespace WinFormsMenuDemo
{
    partial class FormMain
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormMain));
            panelMenu = new Panel();
            button設定 = new Button();
            buttonログアウト = new Button();
            panelマスター = new Panel();
            button製品 = new Button();
            button得意先 = new Button();
            buttonマスター = new Button();
            button受注 = new Button();
            panelロゴ = new Panel();
            label3 = new Label();
            label2 = new Label();
            pictureBox1 = new PictureBox();
            panelMain = new Panel();
            panelBottom = new WinFormsMenuDemo.Controls.BottomBarControl();
            panelTop = new WinFormsMenuDemo.Controls.TopBarControl();
            panelMenu.SuspendLayout();
            panelマスター.SuspendLayout();
            panelロゴ.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)pictureBox1).BeginInit();
            panelMain.SuspendLayout();
            SuspendLayout();
            // 
            // panelMenu
            // 
            panelMenu.BackColor = Color.FromArgb(64, 64, 64);
            panelMenu.Controls.Add(button設定);
            panelMenu.Controls.Add(buttonログアウト);
            panelMenu.Controls.Add(panelマスター);
            panelMenu.Controls.Add(buttonマスター);
            panelMenu.Controls.Add(button受注);
            panelMenu.Controls.Add(panelロゴ);
            panelMenu.Dock = DockStyle.Left;
            panelMenu.Location = new Point(0, 30);
            panelMenu.Margin = new Padding(4);
            panelMenu.Name = "panelMenu";
            panelMenu.Size = new Size(200, 770);
            panelMenu.TabIndex = 0;
            // 
            // button設定
            // 
            button設定.BackColor = Color.FromArgb(64, 64, 64);
            button設定.BackgroundImageLayout = ImageLayout.Zoom;
            button設定.Dock = DockStyle.Bottom;
            button設定.FlatAppearance.BorderSize = 0;
            button設定.FlatAppearance.MouseOverBackColor = Color.Gray;
            button設定.FlatStyle = FlatStyle.Flat;
            button設定.Font = new Font("Yu Gothic UI", 12F, FontStyle.Bold, GraphicsUnit.Point, 128);
            button設定.ForeColor = Color.White;
            button設定.Image = Properties.Resources.gear;
            button設定.ImageAlign = ContentAlignment.MiddleLeft;
            button設定.Location = new Point(0, 670);
            button設定.Margin = new Padding(4);
            button設定.Name = "button設定";
            button設定.Padding = new Padding(6, 0, 0, 0);
            button設定.Size = new Size(200, 50);
            button設定.TabIndex = 7;
            button設定.Text = "設定";
            button設定.UseVisualStyleBackColor = false;
            button設定.Click += button設定_Click;
            // 
            // buttonログアウト
            // 
            buttonログアウト.BackColor = Color.FromArgb(64, 64, 64);
            buttonログアウト.BackgroundImageLayout = ImageLayout.Zoom;
            buttonログアウト.Dock = DockStyle.Bottom;
            buttonログアウト.FlatAppearance.BorderSize = 0;
            buttonログアウト.FlatAppearance.MouseOverBackColor = Color.Gray;
            buttonログアウト.FlatStyle = FlatStyle.Flat;
            buttonログアウト.Font = new Font("Yu Gothic UI", 12F, FontStyle.Bold, GraphicsUnit.Point, 128);
            buttonログアウト.ForeColor = Color.White;
            buttonログアウト.Image = Properties.Resources.box_arrow_left;
            buttonログアウト.ImageAlign = ContentAlignment.MiddleLeft;
            buttonログアウト.Location = new Point(0, 720);
            buttonログアウト.Margin = new Padding(4);
            buttonログアウト.Name = "buttonログアウト";
            buttonログアウト.Padding = new Padding(6, 0, 0, 0);
            buttonログアウト.Size = new Size(200, 50);
            buttonログアウト.TabIndex = 10;
            buttonログアウト.Text = "ログアウト";
            buttonログアウト.UseVisualStyleBackColor = false;
            buttonログアウト.Click += buttonログアウト_Click;
            // 
            // panelマスター
            // 
            panelマスター.Controls.Add(button製品);
            panelマスター.Controls.Add(button得意先);
            panelマスター.Dock = DockStyle.Top;
            panelマスター.Location = new Point(0, 180);
            panelマスター.Margin = new Padding(4);
            panelマスター.Name = "panelマスター";
            panelマスター.Size = new Size(200, 80);
            panelマスター.TabIndex = 6;
            panelマスター.Visible = false;
            // 
            // button製品
            // 
            button製品.BackColor = Color.FromArgb(64, 64, 64);
            button製品.BackgroundImageLayout = ImageLayout.Zoom;
            button製品.Dock = DockStyle.Top;
            button製品.FlatAppearance.BorderSize = 0;
            button製品.FlatAppearance.MouseOverBackColor = Color.Gray;
            button製品.FlatStyle = FlatStyle.Flat;
            button製品.Font = new Font("Yu Gothic UI", 12F, FontStyle.Bold, GraphicsUnit.Point, 128);
            button製品.ForeColor = Color.White;
            button製品.ImageAlign = ContentAlignment.MiddleLeft;
            button製品.Location = new Point(0, 40);
            button製品.Margin = new Padding(4);
            button製品.Name = "button製品";
            button製品.Padding = new Padding(26, 0, 0, 0);
            button製品.Size = new Size(200, 40);
            button製品.TabIndex = 4;
            button製品.Text = "製品";
            button製品.TextAlign = ContentAlignment.MiddleLeft;
            button製品.UseVisualStyleBackColor = false;
            button製品.Click += button製品_Click;
            // 
            // button得意先
            // 
            button得意先.BackColor = Color.FromArgb(64, 64, 64);
            button得意先.BackgroundImageLayout = ImageLayout.Zoom;
            button得意先.Dock = DockStyle.Top;
            button得意先.FlatAppearance.BorderSize = 0;
            button得意先.FlatAppearance.MouseOverBackColor = Color.Gray;
            button得意先.FlatStyle = FlatStyle.Flat;
            button得意先.Font = new Font("Yu Gothic UI", 12F, FontStyle.Bold, GraphicsUnit.Point, 128);
            button得意先.ForeColor = Color.White;
            button得意先.ImageAlign = ContentAlignment.MiddleLeft;
            button得意先.Location = new Point(0, 0);
            button得意先.Margin = new Padding(4);
            button得意先.Name = "button得意先";
            button得意先.Padding = new Padding(26, 0, 0, 0);
            button得意先.Size = new Size(200, 40);
            button得意先.TabIndex = 3;
            button得意先.Text = "得意先";
            button得意先.TextAlign = ContentAlignment.MiddleLeft;
            button得意先.UseVisualStyleBackColor = false;
            button得意先.Click += button得意先_Click;
            // 
            // buttonマスター
            // 
            buttonマスター.BackColor = Color.FromArgb(64, 64, 64);
            buttonマスター.BackgroundImageLayout = ImageLayout.Zoom;
            buttonマスター.Dock = DockStyle.Top;
            buttonマスター.FlatAppearance.BorderSize = 0;
            buttonマスター.FlatAppearance.MouseOverBackColor = Color.Gray;
            buttonマスター.FlatStyle = FlatStyle.Flat;
            buttonマスター.Font = new Font("Yu Gothic UI", 12F, FontStyle.Bold, GraphicsUnit.Point, 128);
            buttonマスター.ForeColor = Color.White;
            buttonマスター.Image = Properties.Resources.database;
            buttonマスター.ImageAlign = ContentAlignment.MiddleLeft;
            buttonマスター.Location = new Point(0, 130);
            buttonマスター.Margin = new Padding(4);
            buttonマスター.Name = "buttonマスター";
            buttonマスター.Padding = new Padding(6, 0, 0, 0);
            buttonマスター.Size = new Size(200, 50);
            buttonマスター.TabIndex = 5;
            buttonマスター.Text = "マスター";
            buttonマスター.UseVisualStyleBackColor = false;
            buttonマスター.Click += buttonマスター_Click;
            // 
            // button受注
            // 
            button受注.BackColor = Color.FromArgb(64, 64, 64);
            button受注.BackgroundImageLayout = ImageLayout.Zoom;
            button受注.Dock = DockStyle.Top;
            button受注.FlatAppearance.BorderSize = 0;
            button受注.FlatAppearance.MouseOverBackColor = Color.Gray;
            button受注.FlatStyle = FlatStyle.Flat;
            button受注.Font = new Font("Yu Gothic UI", 12F, FontStyle.Bold, GraphicsUnit.Point, 128);
            button受注.ForeColor = Color.White;
            button受注.Image = Properties.Resources.cart_plus;
            button受注.ImageAlign = ContentAlignment.MiddleLeft;
            button受注.Location = new Point(0, 80);
            button受注.Margin = new Padding(4);
            button受注.Name = "button受注";
            button受注.Padding = new Padding(6, 0, 0, 0);
            button受注.Size = new Size(200, 50);
            button受注.TabIndex = 0;
            button受注.Text = "受注";
            button受注.UseVisualStyleBackColor = false;
            button受注.Click += button受注_Click;
            // 
            // panelロゴ
            // 
            panelロゴ.BackColor = Color.DimGray;
            panelロゴ.Controls.Add(label3);
            panelロゴ.Controls.Add(label2);
            panelロゴ.Controls.Add(pictureBox1);
            panelロゴ.Dock = DockStyle.Top;
            panelロゴ.Location = new Point(0, 0);
            panelロゴ.Margin = new Padding(4);
            panelロゴ.Name = "panelロゴ";
            panelロゴ.Size = new Size(200, 80);
            panelロゴ.TabIndex = 11;
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Font = new Font("Yu Gothic UI", 14.25F, FontStyle.Bold, GraphicsUnit.Point, 128);
            label3.ForeColor = Color.White;
            label3.Location = new Point(63, 16);
            label3.Margin = new Padding(4, 0, 4, 0);
            label3.Name = "label3";
            label3.Size = new Size(108, 25);
            label3.TabIndex = 8;
            label3.Text = "masayahak";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Font = new Font("Yu Gothic UI", 9F, FontStyle.Regular, GraphicsUnit.Point, 128);
            label2.ForeColor = Color.White;
            label2.Location = new Point(65, 43);
            label2.Margin = new Padding(4, 0, 4, 0);
            label2.Name = "label2";
            label2.Size = new Size(66, 15);
            label2.TabIndex = 7;
            label2.Text = "モダンUI デモ";
            // 
            // pictureBox1
            // 
            pictureBox1.BackColor = Color.DimGray;
            pictureBox1.Image = Properties.Resources.menu_up;
            pictureBox1.Location = new Point(15, 15);
            pictureBox1.Margin = new Padding(4);
            pictureBox1.Name = "pictureBox1";
            pictureBox1.Size = new Size(41, 45);
            pictureBox1.SizeMode = PictureBoxSizeMode.StretchImage;
            pictureBox1.TabIndex = 0;
            pictureBox1.TabStop = false;
            // 
            // panelMain
            // 
            panelMain.Dock = DockStyle.Fill;
            panelMain.Location = new Point(200, 30);
            panelMain.Margin = new Padding(4);
            panelMain.Name = "panelMain";
            panelMain.Size = new Size(1200, 770);
            panelMain.TabIndex = 7;
            // 
            // panelBottom
            // 
            panelBottom.BackColor = Color.Gray;
            panelBottom.Dock = DockStyle.Bottom;
            panelBottom.Location = new Point(0, 745);
            panelBottom.MessageText = "";
            panelBottom.Name = "panelBottom";
            panelBottom.Size = new Size(1200, 25);
            panelBottom.TabIndex = 0;
            // 
            // panelTop
            // 
            panelTop.BackColor = Color.DarkOrange;
            panelTop.BarBackColor = Color.DarkOrange;
            panelTop.Dock = DockStyle.Top;
            panelTop.Font = new Font("Yu Gothic UI", 12F);
            panelTop.Location = new Point(0, 0);
            panelTop.Name = "panelTop";
            panelTop.ShowCloseButton = true;
            panelTop.ShowMaximizeButton = true;
            panelTop.ShowMinimizeButton = true;
            panelTop.Size = new Size(1400, 30);
            panelTop.TabIndex = 0;
            panelTop.Title = "モダンUIデモ";
            // 
            // FormMain
            // 
            AutoScaleDimensions = new SizeF(9F, 21F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.White;
            ClientSize = new Size(1400, 800);
            Controls.Add(panelMain);
            Controls.Add(panelBottom);
            Controls.Add(panelMenu);
            Controls.Add(panelTop);
            Font = new Font("Yu Gothic UI", 12F, FontStyle.Regular, GraphicsUnit.Point, 128);
            FormBorderStyle = FormBorderStyle.None;
            Icon = (Icon)resources.GetObject("$this.Icon");
            Margin = new Padding(4);
            Name = "FormMain";
            Text = "Menuデモ";
            FormClosing += FormMain_FormClosing;
            Load += FormMain_Load;
            panelMenu.ResumeLayout(false);
            panelマスター.ResumeLayout(false);
            panelロゴ.ResumeLayout(false);
            panelロゴ.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)pictureBox1).EndInit();
            panelMain.ResumeLayout(false);
            ResumeLayout(false);
        }

        #endregion

        private Panel panelMenu;
        private Button button受注;
        private Panel panelMain;
        private Panel panelマスター;
        private Button button得意先;
        private Button buttonマスター;
        private Button button設定;
        private Button buttonログアウト;
        private Panel panelロゴ;
        private PictureBox pictureBox1;
        private Label label3;
        private Label label2;
        private Button button製品;
        private Controls.TopBarControl panelTop;
        private Controls.BottomBarControl panelBottom;
    }
}
