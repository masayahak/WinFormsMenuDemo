namespace WinFormsMenuDemo.Views
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
            PanelMenu = new Panel();
            Btn障害ログ = new Button();
            Btn設定 = new Button();
            Btnログアウト = new Button();
            Panelマスター = new Panel();
            Btn製品 = new Button();
            Btn得意先 = new Button();
            Btnマスター = new Button();
            Btn受注 = new Button();
            Panelロゴ = new Panel();
            label3 = new Label();
            label2 = new Label();
            PictureBox = new PictureBox();
            PanelMain = new Panel();
            PanelBottom = new WinFormsMenuDemo.Controls.BottomBarControl();
            PanelTop = new WinFormsMenuDemo.Controls.TopBarControl();
            PanelMenu.SuspendLayout();
            Panelマスター.SuspendLayout();
            Panelロゴ.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)PictureBox).BeginInit();
            SuspendLayout();
            // 
            // PanelMenu
            // 
            PanelMenu.BackColor = Color.FromArgb(64, 64, 64);
            PanelMenu.Controls.Add(Btn障害ログ);
            PanelMenu.Controls.Add(Btn設定);
            PanelMenu.Controls.Add(Btnログアウト);
            PanelMenu.Controls.Add(Panelマスター);
            PanelMenu.Controls.Add(Btnマスター);
            PanelMenu.Controls.Add(Btn受注);
            PanelMenu.Controls.Add(Panelロゴ);
            PanelMenu.Dock = DockStyle.Left;
            PanelMenu.Location = new Point(0, 30);
            PanelMenu.Margin = new Padding(4);
            PanelMenu.Name = "PanelMenu";
            PanelMenu.Size = new Size(200, 770);
            PanelMenu.TabIndex = 0;
            // 
            // Btn障害ログ
            // 
            Btn障害ログ.BackColor = Color.FromArgb(64, 64, 64);
            Btn障害ログ.BackgroundImageLayout = ImageLayout.Zoom;
            Btn障害ログ.Dock = DockStyle.Bottom;
            Btn障害ログ.FlatAppearance.BorderSize = 0;
            Btn障害ログ.FlatAppearance.MouseOverBackColor = Color.Gray;
            Btn障害ログ.FlatStyle = FlatStyle.Flat;
            Btn障害ログ.Font = new Font("Yu Gothic UI", 12F, FontStyle.Bold, GraphicsUnit.Point, 128);
            Btn障害ログ.ForeColor = Color.White;
            Btn障害ログ.Image = Properties.Resources.error;
            Btn障害ログ.ImageAlign = ContentAlignment.MiddleLeft;
            Btn障害ログ.Location = new Point(0, 620);
            Btn障害ログ.Margin = new Padding(4);
            Btn障害ログ.Name = "Btn障害ログ";
            Btn障害ログ.Padding = new Padding(6, 0, 0, 0);
            Btn障害ログ.Size = new Size(200, 50);
            Btn障害ログ.TabIndex = 12;
            Btn障害ログ.Text = "障害ログ";
            Btn障害ログ.UseVisualStyleBackColor = false;
            Btn障害ログ.Click += Btn障害ログ_Click;
            // 
            // Btn設定
            // 
            Btn設定.BackColor = Color.FromArgb(64, 64, 64);
            Btn設定.BackgroundImageLayout = ImageLayout.Zoom;
            Btn設定.Dock = DockStyle.Bottom;
            Btn設定.FlatAppearance.BorderSize = 0;
            Btn設定.FlatAppearance.MouseOverBackColor = Color.Gray;
            Btn設定.FlatStyle = FlatStyle.Flat;
            Btn設定.Font = new Font("Yu Gothic UI", 12F, FontStyle.Bold, GraphicsUnit.Point, 128);
            Btn設定.ForeColor = Color.White;
            Btn設定.Image = Properties.Resources.gear;
            Btn設定.ImageAlign = ContentAlignment.MiddleLeft;
            Btn設定.Location = new Point(0, 670);
            Btn設定.Margin = new Padding(4);
            Btn設定.Name = "Btn設定";
            Btn設定.Padding = new Padding(6, 0, 0, 0);
            Btn設定.Size = new Size(200, 50);
            Btn設定.TabIndex = 7;
            Btn設定.Text = "設定";
            Btn設定.UseVisualStyleBackColor = false;
            Btn設定.Click += Btn設定_Click;
            // 
            // Btnログアウト
            // 
            Btnログアウト.BackColor = Color.FromArgb(64, 64, 64);
            Btnログアウト.BackgroundImageLayout = ImageLayout.Zoom;
            Btnログアウト.Dock = DockStyle.Bottom;
            Btnログアウト.FlatAppearance.BorderSize = 0;
            Btnログアウト.FlatAppearance.MouseOverBackColor = Color.Gray;
            Btnログアウト.FlatStyle = FlatStyle.Flat;
            Btnログアウト.Font = new Font("Yu Gothic UI", 12F, FontStyle.Bold, GraphicsUnit.Point, 128);
            Btnログアウト.ForeColor = Color.White;
            Btnログアウト.Image = Properties.Resources.box_arrow_left;
            Btnログアウト.ImageAlign = ContentAlignment.MiddleLeft;
            Btnログアウト.Location = new Point(0, 720);
            Btnログアウト.Margin = new Padding(4);
            Btnログアウト.Name = "Btnログアウト";
            Btnログアウト.Padding = new Padding(6, 0, 0, 0);
            Btnログアウト.Size = new Size(200, 50);
            Btnログアウト.TabIndex = 10;
            Btnログアウト.Text = "ログアウト";
            Btnログアウト.UseVisualStyleBackColor = false;
            Btnログアウト.Click += Btnログアウト_Click;
            // 
            // Panelマスター
            // 
            Panelマスター.Controls.Add(Btn製品);
            Panelマスター.Controls.Add(Btn得意先);
            Panelマスター.Dock = DockStyle.Top;
            Panelマスター.Location = new Point(0, 180);
            Panelマスター.Margin = new Padding(4);
            Panelマスター.Name = "Panelマスター";
            Panelマスター.Size = new Size(200, 80);
            Panelマスター.TabIndex = 6;
            Panelマスター.Visible = false;
            // 
            // Btn製品
            // 
            Btn製品.BackColor = Color.FromArgb(64, 64, 64);
            Btn製品.BackgroundImageLayout = ImageLayout.Zoom;
            Btn製品.Dock = DockStyle.Top;
            Btn製品.FlatAppearance.BorderSize = 0;
            Btn製品.FlatAppearance.MouseOverBackColor = Color.Gray;
            Btn製品.FlatStyle = FlatStyle.Flat;
            Btn製品.Font = new Font("Yu Gothic UI", 12F, FontStyle.Bold, GraphicsUnit.Point, 128);
            Btn製品.ForeColor = Color.White;
            Btn製品.ImageAlign = ContentAlignment.MiddleLeft;
            Btn製品.Location = new Point(0, 40);
            Btn製品.Margin = new Padding(4);
            Btn製品.Name = "Btn製品";
            Btn製品.Padding = new Padding(26, 0, 0, 0);
            Btn製品.Size = new Size(200, 40);
            Btn製品.TabIndex = 4;
            Btn製品.Text = "製品";
            Btn製品.TextAlign = ContentAlignment.MiddleLeft;
            Btn製品.UseVisualStyleBackColor = false;
            Btn製品.Click += Btn製品_Click;
            // 
            // Btn得意先
            // 
            Btn得意先.BackColor = Color.FromArgb(64, 64, 64);
            Btn得意先.BackgroundImageLayout = ImageLayout.Zoom;
            Btn得意先.Dock = DockStyle.Top;
            Btn得意先.FlatAppearance.BorderSize = 0;
            Btn得意先.FlatAppearance.MouseOverBackColor = Color.Gray;
            Btn得意先.FlatStyle = FlatStyle.Flat;
            Btn得意先.Font = new Font("Yu Gothic UI", 12F, FontStyle.Bold, GraphicsUnit.Point, 128);
            Btn得意先.ForeColor = Color.White;
            Btn得意先.ImageAlign = ContentAlignment.MiddleLeft;
            Btn得意先.Location = new Point(0, 0);
            Btn得意先.Margin = new Padding(4);
            Btn得意先.Name = "Btn得意先";
            Btn得意先.Padding = new Padding(26, 0, 0, 0);
            Btn得意先.Size = new Size(200, 40);
            Btn得意先.TabIndex = 3;
            Btn得意先.Text = "得意先";
            Btn得意先.TextAlign = ContentAlignment.MiddleLeft;
            Btn得意先.UseVisualStyleBackColor = false;
            Btn得意先.Click += Btn得意先_Click;
            // 
            // Btnマスター
            // 
            Btnマスター.BackColor = Color.FromArgb(64, 64, 64);
            Btnマスター.BackgroundImageLayout = ImageLayout.Zoom;
            Btnマスター.Dock = DockStyle.Top;
            Btnマスター.FlatAppearance.BorderSize = 0;
            Btnマスター.FlatAppearance.MouseOverBackColor = Color.Gray;
            Btnマスター.FlatStyle = FlatStyle.Flat;
            Btnマスター.Font = new Font("Yu Gothic UI", 12F, FontStyle.Bold, GraphicsUnit.Point, 128);
            Btnマスター.ForeColor = Color.White;
            Btnマスター.Image = Properties.Resources.database;
            Btnマスター.ImageAlign = ContentAlignment.MiddleLeft;
            Btnマスター.Location = new Point(0, 130);
            Btnマスター.Margin = new Padding(4);
            Btnマスター.Name = "Btnマスター";
            Btnマスター.Padding = new Padding(6, 0, 0, 0);
            Btnマスター.Size = new Size(200, 50);
            Btnマスター.TabIndex = 5;
            Btnマスター.Text = "マスター";
            Btnマスター.UseVisualStyleBackColor = false;
            Btnマスター.Click += Btnマスター_Click;
            // 
            // Btn受注
            // 
            Btn受注.BackColor = Color.FromArgb(64, 64, 64);
            Btn受注.BackgroundImageLayout = ImageLayout.Zoom;
            Btn受注.Dock = DockStyle.Top;
            Btn受注.FlatAppearance.BorderSize = 0;
            Btn受注.FlatAppearance.MouseOverBackColor = Color.Gray;
            Btn受注.FlatStyle = FlatStyle.Flat;
            Btn受注.Font = new Font("Yu Gothic UI", 12F, FontStyle.Bold, GraphicsUnit.Point, 128);
            Btn受注.ForeColor = Color.White;
            Btn受注.Image = Properties.Resources.cart_plus;
            Btn受注.ImageAlign = ContentAlignment.MiddleLeft;
            Btn受注.Location = new Point(0, 80);
            Btn受注.Margin = new Padding(4);
            Btn受注.Name = "Btn受注";
            Btn受注.Padding = new Padding(6, 0, 0, 0);
            Btn受注.Size = new Size(200, 50);
            Btn受注.TabIndex = 0;
            Btn受注.Text = "受注";
            Btn受注.UseVisualStyleBackColor = false;
            Btn受注.Click += Btn受注_Click;
            // 
            // Panelロゴ
            // 
            Panelロゴ.BackColor = Color.DimGray;
            Panelロゴ.Controls.Add(label3);
            Panelロゴ.Controls.Add(label2);
            Panelロゴ.Controls.Add(PictureBox);
            Panelロゴ.Dock = DockStyle.Top;
            Panelロゴ.Location = new Point(0, 0);
            Panelロゴ.Margin = new Padding(4);
            Panelロゴ.Name = "Panelロゴ";
            Panelロゴ.Size = new Size(200, 80);
            Panelロゴ.TabIndex = 11;
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
            // PictureBox
            // 
            PictureBox.BackColor = Color.DimGray;
            PictureBox.Image = Properties.Resources.menu_up;
            PictureBox.Location = new Point(15, 15);
            PictureBox.Margin = new Padding(4);
            PictureBox.Name = "PictureBox";
            PictureBox.Size = new Size(41, 45);
            PictureBox.SizeMode = PictureBoxSizeMode.StretchImage;
            PictureBox.TabIndex = 0;
            PictureBox.TabStop = false;
            // 
            // PanelMain
            // 
            PanelMain.Dock = DockStyle.Fill;
            PanelMain.Location = new Point(200, 30);
            PanelMain.Margin = new Padding(4);
            PanelMain.Name = "PanelMain";
            PanelMain.Size = new Size(1200, 745);
            PanelMain.TabIndex = 7;
            // 
            // PanelBottom
            // 
            PanelBottom.BackColor = Color.Gray;
            PanelBottom.Dock = DockStyle.Bottom;
            PanelBottom.Location = new Point(200, 775);
            PanelBottom.MessageText = "08:56 08:49 ";
            PanelBottom.Name = "PanelBottom";
            PanelBottom.Size = new Size(1200, 25);
            PanelBottom.TabIndex = 0;
            // 
            // PanelTop
            // 
            PanelTop.BackColor = Color.DarkOrange;
            PanelTop.BarBackColor = Color.DarkOrange;
            PanelTop.Dock = DockStyle.Top;
            PanelTop.Font = new Font("Yu Gothic UI", 12F);
            PanelTop.Location = new Point(0, 0);
            PanelTop.Name = "PanelTop";
            PanelTop.ShowCloseButton = true;
            PanelTop.ShowMaximizeButton = true;
            PanelTop.ShowMinimizeButton = true;
            PanelTop.Size = new Size(1400, 30);
            PanelTop.TabIndex = 0;
            PanelTop.Title = "モダンUIデモ";
            // 
            // FormMain
            // 
            AutoScaleDimensions = new SizeF(9F, 21F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.White;
            ClientSize = new Size(1400, 800);
            Controls.Add(PanelMain);
            Controls.Add(PanelBottom);
            Controls.Add(PanelMenu);
            Controls.Add(PanelTop);
            Font = new Font("Yu Gothic UI", 12F, FontStyle.Regular, GraphicsUnit.Point, 128);
            FormBorderStyle = FormBorderStyle.None;
            Icon = (Icon)resources.GetObject("$this.Icon");
            Margin = new Padding(4);
            Name = "FormMain";
            Text = "Menuデモ";
            FormClosing += FormMain_FormClosing;
            Load += FormMain_Load;
            PanelMenu.ResumeLayout(false);
            Panelマスター.ResumeLayout(false);
            Panelロゴ.ResumeLayout(false);
            Panelロゴ.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)PictureBox).EndInit();
            ResumeLayout(false);
        }

        #endregion

        private Panel PanelMenu;
        private Button Btn受注;
        private Panel PanelMain;
        private Panel Panelマスター;
        private Button Btn得意先;
        private Button Btnマスター;
        private Button Btn設定;
        private Button Btnログアウト;
        private Panel Panelロゴ;
        private PictureBox PictureBox;
        private Label label3;
        private Label label2;
        private Button Btn製品;
        private Controls.TopBarControl PanelTop;
        private Controls.BottomBarControl PanelBottom;
        private Button Btn障害ログ;
    }
}
