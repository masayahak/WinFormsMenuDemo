namespace WinFormsMenuDemo.Views
{
    partial class Form障害ログ
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
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
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            TabControl = new TabControl();
            TabPage障害ログ一覧 = new TabPage();
            DataGridView = new WinFormsMenuDemo.Controls.SelectableGridView();
            PanelTop = new Panel();
            BtnExcel = new WinFormsMenuDemo.Controls.ExcelExportButton();
            TextBox検索 = new TextBox();
            Btn検索 = new Button();
            TabPage障害ログ詳細 = new TabPage();
            Btnキャンセル = new Button();
            TextBoxスタックトレース = new TextBox();
            label5 = new Label();
            TextBox発生日時 = new TextBox();
            label4 = new Label();
            TextBox画面名 = new TextBox();
            label3 = new Label();
            TextBoxId = new TextBox();
            label1 = new Label();
            TextBox処理名 = new TextBox();
            label2 = new Label();
            TextBoxメッセージ = new TextBox();
            label6 = new Label();
            TextBox備考 = new TextBox();
            label7 = new Label();
            TextBoxクライアント情報 = new TextBox();
            label8 = new Label();
            TabControl.SuspendLayout();
            TabPage障害ログ一覧.SuspendLayout();
            PanelTop.SuspendLayout();
            TabPage障害ログ詳細.SuspendLayout();
            SuspendLayout();
            // 
            // TabControl
            // 
            TabControl.Controls.Add(TabPage障害ログ一覧);
            TabControl.Controls.Add(TabPage障害ログ詳細);
            TabControl.Dock = DockStyle.Fill;
            TabControl.Font = new Font("Yu Gothic UI", 12F, FontStyle.Regular, GraphicsUnit.Point, 128);
            TabControl.Location = new Point(0, 0);
            TabControl.Margin = new Padding(0);
            TabControl.Name = "TabControl";
            TabControl.SelectedIndex = 0;
            TabControl.Size = new Size(1200, 745);
            TabControl.TabIndex = 5;
            // 
            // TabPage障害ログ一覧
            // 
            TabPage障害ログ一覧.BackColor = Color.Transparent;
            TabPage障害ログ一覧.Controls.Add(DataGridView);
            TabPage障害ログ一覧.Controls.Add(PanelTop);
            TabPage障害ログ一覧.Location = new Point(4, 30);
            TabPage障害ログ一覧.Margin = new Padding(4);
            TabPage障害ログ一覧.Name = "TabPage障害ログ一覧";
            TabPage障害ログ一覧.Padding = new Padding(4);
            TabPage障害ログ一覧.Size = new Size(1192, 711);
            TabPage障害ログ一覧.TabIndex = 0;
            TabPage障害ログ一覧.Text = "障害ログ一覧";
            // 
            // DataGridView
            // 
            DataGridView.BarGraphColumnName = null;
            DataGridView.DataSource = null;
            DataGridView.Dock = DockStyle.Fill;
            DataGridView.Location = new Point(4, 54);
            DataGridView.Name = "DataGridView";
            DataGridView.Size = new Size(1184, 653);
            DataGridView.TabIndex = 3;
            // 
            // PanelTop
            // 
            PanelTop.BackColor = Color.WhiteSmoke;
            PanelTop.Controls.Add(BtnExcel);
            PanelTop.Controls.Add(TextBox検索);
            PanelTop.Controls.Add(Btn検索);
            PanelTop.Dock = DockStyle.Top;
            PanelTop.Location = new Point(4, 4);
            PanelTop.Margin = new Padding(4);
            PanelTop.Name = "PanelTop";
            PanelTop.Size = new Size(1184, 50);
            PanelTop.TabIndex = 2;
            // 
            // BtnExcel
            // 
            BtnExcel.Anchor = AnchorStyles.Top | AnchorStyles.Right;
            BtnExcel.Image = Properties.Resources.Excel;
            BtnExcel.Location = new Point(2123, 9);
            BtnExcel.Name = "BtnExcel";
            BtnExcel.Size = new Size(32, 32);
            BtnExcel.TabIndex = 9;
            BtnExcel.TargetGrid = DataGridView;
            BtnExcel.UseVisualStyleBackColor = true;
            // 
            // TextBox検索
            // 
            TextBox検索.Location = new Point(13, 12);
            TextBox検索.Name = "TextBox検索";
            TextBox検索.PlaceholderText = "例 2025/04/01 10:00, 2025/04/02 (TOは省略可)";
            TextBox検索.Size = new Size(475, 29);
            TextBox検索.TabIndex = 7;
            // 
            // Btn検索
            // 
            Btn検索.BackColor = Color.LightBlue;
            Btn検索.FlatAppearance.BorderSize = 0;
            Btn検索.FlatStyle = FlatStyle.Flat;
            Btn検索.Location = new Point(495, 12);
            Btn検索.Margin = new Padding(4);
            Btn検索.Name = "Btn検索";
            Btn検索.Size = new Size(73, 30);
            Btn検索.TabIndex = 2;
            Btn検索.Text = "検索";
            Btn検索.UseVisualStyleBackColor = false;
            // 
            // TabPage障害ログ詳細
            // 
            TabPage障害ログ詳細.BackColor = Color.Transparent;
            TabPage障害ログ詳細.Controls.Add(TextBoxクライアント情報);
            TabPage障害ログ詳細.Controls.Add(label8);
            TabPage障害ログ詳細.Controls.Add(TextBox備考);
            TabPage障害ログ詳細.Controls.Add(label7);
            TabPage障害ログ詳細.Controls.Add(TextBoxメッセージ);
            TabPage障害ログ詳細.Controls.Add(label6);
            TabPage障害ログ詳細.Controls.Add(TextBox処理名);
            TabPage障害ログ詳細.Controls.Add(label2);
            TabPage障害ログ詳細.Controls.Add(Btnキャンセル);
            TabPage障害ログ詳細.Controls.Add(TextBoxスタックトレース);
            TabPage障害ログ詳細.Controls.Add(label5);
            TabPage障害ログ詳細.Controls.Add(TextBox発生日時);
            TabPage障害ログ詳細.Controls.Add(label4);
            TabPage障害ログ詳細.Controls.Add(TextBox画面名);
            TabPage障害ログ詳細.Controls.Add(label3);
            TabPage障害ログ詳細.Controls.Add(TextBoxId);
            TabPage障害ログ詳細.Controls.Add(label1);
            TabPage障害ログ詳細.Location = new Point(4, 30);
            TabPage障害ログ詳細.Margin = new Padding(4);
            TabPage障害ログ詳細.Name = "TabPage障害ログ詳細";
            TabPage障害ログ詳細.Padding = new Padding(4);
            TabPage障害ログ詳細.RightToLeft = RightToLeft.No;
            TabPage障害ログ詳細.Size = new Size(1192, 711);
            TabPage障害ログ詳細.TabIndex = 1;
            TabPage障害ログ詳細.Text = "障害ログ詳細";
            // 
            // Btnキャンセル
            // 
            Btnキャンセル.BackColor = Color.Gray;
            Btnキャンセル.FlatAppearance.BorderSize = 0;
            Btnキャンセル.FlatStyle = FlatStyle.Flat;
            Btnキャンセル.ForeColor = Color.White;
            Btnキャンセル.Location = new Point(1063, 662);
            Btnキャンセル.Margin = new Padding(4);
            Btnキャンセル.Name = "Btnキャンセル";
            Btnキャンセル.Size = new Size(120, 40);
            Btnキャンセル.TabIndex = 11;
            Btnキャンセル.Text = "キャンセル";
            Btnキャンセル.UseVisualStyleBackColor = false;
            // 
            // TextBoxスタックトレース
            // 
            TextBoxスタックトレース.Location = new Point(37, 311);
            TextBoxスタックトレース.Margin = new Padding(4);
            TextBoxスタックトレース.Multiline = true;
            TextBoxスタックトレース.Name = "TextBoxスタックトレース";
            TextBoxスタックトレース.ReadOnly = true;
            TextBoxスタックトレース.Size = new Size(685, 116);
            TextBoxスタックトレース.TabIndex = 5;
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Font = new Font("Yu Gothic UI", 9.75F, FontStyle.Regular, GraphicsUnit.Point, 128);
            label5.Location = new Point(45, 290);
            label5.Margin = new Padding(4, 0, 4, 0);
            label5.Name = "label5";
            label5.Size = new Size(83, 17);
            label5.TabIndex = 8;
            label5.Text = "スタックトレース";
            // 
            // TextBox発生日時
            // 
            TextBox発生日時.Location = new Point(355, 49);
            TextBox発生日時.Margin = new Padding(4);
            TextBox発生日時.Name = "TextBox発生日時";
            TextBox発生日時.ReadOnly = true;
            TextBox発生日時.Size = new Size(172, 29);
            TextBox発生日時.TabIndex = 3;
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Font = new Font("Yu Gothic UI", 9.75F, FontStyle.Regular, GraphicsUnit.Point, 128);
            label4.ForeColor = Color.Black;
            label4.Location = new Point(359, 33);
            label4.Margin = new Padding(4, 0, 4, 0);
            label4.Name = "label4";
            label4.Size = new Size(60, 17);
            label4.TabIndex = 6;
            label4.Text = "発生日時";
            // 
            // TextBox画面名
            // 
            TextBox画面名.Location = new Point(37, 116);
            TextBox画面名.Margin = new Padding(4);
            TextBox画面名.Name = "TextBox画面名";
            TextBox画面名.ReadOnly = true;
            TextBox画面名.Size = new Size(676, 29);
            TextBox画面名.TabIndex = 2;
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Font = new Font("Yu Gothic UI", 9.75F, FontStyle.Regular, GraphicsUnit.Point, 128);
            label3.ForeColor = Color.Black;
            label3.Location = new Point(41, 100);
            label3.Margin = new Padding(4, 0, 4, 0);
            label3.Name = "label3";
            label3.Size = new Size(47, 17);
            label3.TabIndex = 4;
            label3.Text = "画面名";
            // 
            // TextBoxId
            // 
            TextBoxId.Location = new Point(37, 49);
            TextBoxId.Margin = new Padding(4);
            TextBoxId.Name = "TextBoxId";
            TextBoxId.ReadOnly = true;
            TextBoxId.Size = new Size(172, 29);
            TextBoxId.TabIndex = 1;
            TextBoxId.TabStop = false;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Yu Gothic UI", 9.75F, FontStyle.Regular, GraphicsUnit.Point, 128);
            label1.Location = new Point(41, 33);
            label1.Margin = new Padding(4, 0, 4, 0);
            label1.Name = "label1";
            label1.Size = new Size(19, 17);
            label1.TabIndex = 0;
            label1.Text = "Id";
            // 
            // TextBox処理名
            // 
            TextBox処理名.Location = new Point(37, 181);
            TextBox処理名.Margin = new Padding(4);
            TextBox処理名.Name = "TextBox処理名";
            TextBox処理名.ReadOnly = true;
            TextBox処理名.Size = new Size(676, 29);
            TextBox処理名.TabIndex = 14;
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Font = new Font("Yu Gothic UI", 9.75F, FontStyle.Regular, GraphicsUnit.Point, 128);
            label2.ForeColor = Color.Black;
            label2.Location = new Point(41, 165);
            label2.Margin = new Padding(4, 0, 4, 0);
            label2.Name = "label2";
            label2.Size = new Size(47, 17);
            label2.TabIndex = 15;
            label2.Text = "処理名";
            // 
            // TextBoxメッセージ
            // 
            TextBoxメッセージ.Location = new Point(41, 251);
            TextBoxメッセージ.Margin = new Padding(4);
            TextBoxメッセージ.Name = "TextBoxメッセージ";
            TextBoxメッセージ.ReadOnly = true;
            TextBoxメッセージ.Size = new Size(676, 29);
            TextBoxメッセージ.TabIndex = 16;
            // 
            // label6
            // 
            label6.AutoSize = true;
            label6.Font = new Font("Yu Gothic UI", 9.75F, FontStyle.Regular, GraphicsUnit.Point, 128);
            label6.ForeColor = Color.Black;
            label6.Location = new Point(45, 235);
            label6.Margin = new Padding(4, 0, 4, 0);
            label6.Name = "label6";
            label6.Size = new Size(56, 17);
            label6.TabIndex = 17;
            label6.Text = "メッセージ";
            // 
            // TextBox備考
            // 
            TextBox備考.Location = new Point(41, 538);
            TextBox備考.Margin = new Padding(4);
            TextBox備考.Multiline = true;
            TextBox備考.Name = "TextBox備考";
            TextBox備考.ReadOnly = true;
            TextBox備考.Size = new Size(685, 164);
            TextBox備考.TabIndex = 18;
            // 
            // label7
            // 
            label7.AutoSize = true;
            label7.Font = new Font("Yu Gothic UI", 9.75F, FontStyle.Regular, GraphicsUnit.Point, 128);
            label7.Location = new Point(49, 517);
            label7.Margin = new Padding(4, 0, 4, 0);
            label7.Name = "label7";
            label7.Size = new Size(34, 17);
            label7.TabIndex = 19;
            label7.Text = "備考";
            // 
            // TextBoxクライアント情報
            // 
            TextBoxクライアント情報.Location = new Point(45, 472);
            TextBoxクライアント情報.Margin = new Padding(4);
            TextBoxクライアント情報.Name = "TextBoxクライアント情報";
            TextBoxクライアント情報.ReadOnly = true;
            TextBoxクライアント情報.Size = new Size(676, 29);
            TextBoxクライアント情報.TabIndex = 20;
            // 
            // label8
            // 
            label8.AutoSize = true;
            label8.Font = new Font("Yu Gothic UI", 9.75F, FontStyle.Regular, GraphicsUnit.Point, 128);
            label8.ForeColor = Color.Black;
            label8.Location = new Point(49, 456);
            label8.Margin = new Padding(4, 0, 4, 0);
            label8.Name = "label8";
            label8.Size = new Size(91, 17);
            label8.TabIndex = 21;
            label8.Text = "クライアント情報";
            // 
            // Form障害ログ
            // 
            AutoScaleDimensions = new SizeF(9F, 21F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(1200, 745);
            Controls.Add(TabControl);
            Font = new Font("Yu Gothic UI", 12F, FontStyle.Regular, GraphicsUnit.Point, 128);
            FormBorderStyle = FormBorderStyle.None;
            Margin = new Padding(4, 4, 4, 4);
            Name = "Form障害ログ";
            Text = "Form障害ログ";
            TabControl.ResumeLayout(false);
            TabPage障害ログ一覧.ResumeLayout(false);
            PanelTop.ResumeLayout(false);
            PanelTop.PerformLayout();
            TabPage障害ログ詳細.ResumeLayout(false);
            TabPage障害ログ詳細.PerformLayout();
            ResumeLayout(false);
        }

        #endregion

        private TabControl TabControl;
        private TabPage TabPage障害ログ一覧;
        private Controls.SelectableGridView DataGridView;
        private Panel PanelTop;
        private Controls.ExcelExportButton BtnExcel;
        private TextBox TextBox検索;
        private Button Btn検索;
        private TabPage TabPage障害ログ詳細;
        private Label label2;
        private Button Btnキャンセル;
        private TextBox TextBoxスタックトレース;
        private Label label5;
        private TextBox TextBox発生日時;
        private Label label4;
        private TextBox TextBox画面名;
        private TextBox TextBox処理名;
        private Label label3;
        private TextBox TextBoxId;
        private Label label1;
        private TextBox TextBoxクライアント情報;
        private Label label8;
        private TextBox TextBox備考;
        private Label label7;
        private TextBox TextBoxメッセージ;
        private Label label6;
    }
}