using WinFormsMenuDemo.Controls;

namespace WinFormsMenuDemo.Views
{
    partial class Form受注
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
            TabPage受注一覧 = new TabPage();
            DataGridView = new SelectableGridView();
            PanelTop = new Panel();
            BtnExcel = new ExcelExportButton();
            TextBox検索 = new TextBox();
            Btn追加 = new Button();
            Btn検索 = new Button();
            TabPage受注登録 = new TabPage();
            TextBox得意先Id = new TextBox();
            Btn得意先検索 = new Button();
            Btn削除 = new Button();
            CheckBox売上済み = new CheckBox();
            Btnキャンセル = new Button();
            Btn保存 = new Button();
            TextBox備考 = new TextBox();
            label5 = new Label();
            TextBox合計金額 = new TextBox();
            label4 = new Label();
            TextBox受注日 = new TextBox();
            label3 = new Label();
            TextBox得意先名 = new TextBox();
            label2 = new Label();
            TextBox受注Id = new TextBox();
            label1 = new Label();
            TabControl.SuspendLayout();
            TabPage受注一覧.SuspendLayout();
            PanelTop.SuspendLayout();
            TabPage受注登録.SuspendLayout();
            SuspendLayout();
            // 
            // TabControl
            // 
            TabControl.Controls.Add(TabPage受注一覧);
            TabControl.Controls.Add(TabPage受注登録);
            TabControl.Dock = DockStyle.Fill;
            TabControl.Font = new Font("Yu Gothic UI", 12F, FontStyle.Regular, GraphicsUnit.Point, 128);
            TabControl.Location = new Point(0, 0);
            TabControl.Margin = new Padding(0);
            TabControl.Name = "TabControl";
            TabControl.SelectedIndex = 0;
            TabControl.Size = new Size(1200, 745);
            TabControl.TabIndex = 3;
            // 
            // TabPage受注一覧
            // 
            TabPage受注一覧.BackColor = Color.Transparent;
            TabPage受注一覧.Controls.Add(DataGridView);
            TabPage受注一覧.Controls.Add(PanelTop);
            TabPage受注一覧.Location = new Point(4, 30);
            TabPage受注一覧.Margin = new Padding(4);
            TabPage受注一覧.Name = "TabPage受注一覧";
            TabPage受注一覧.Padding = new Padding(4);
            TabPage受注一覧.Size = new Size(1192, 711);
            TabPage受注一覧.TabIndex = 0;
            TabPage受注一覧.Text = "受注一覧";
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
            PanelTop.Controls.Add(Btn追加);
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
            BtnExcel.Location = new Point(1138, 9);
            BtnExcel.Name = "BtnExcel";
            BtnExcel.Size = new Size(32, 32);
            BtnExcel.TabIndex = 8;
            BtnExcel.TargetGrid = DataGridView;
            BtnExcel.UseVisualStyleBackColor = true;
            // 
            // TextBox検索
            // 
            TextBox検索.Location = new Point(13, 12);
            TextBox検索.Name = "TextBox検索";
            TextBox検索.PlaceholderText = "受注Id(数値)   または  得意先名の一部を入力";
            TextBox検索.Size = new Size(475, 29);
            TextBox検索.TabIndex = 7;
            // 
            // Btn追加
            // 
            Btn追加.BackColor = Color.DeepSkyBlue;
            Btn追加.FlatAppearance.BorderSize = 0;
            Btn追加.FlatStyle = FlatStyle.Flat;
            Btn追加.ForeColor = Color.Black;
            Btn追加.Location = new Point(672, 12);
            Btn追加.Margin = new Padding(4);
            Btn追加.Name = "Btn追加";
            Btn追加.Size = new Size(120, 30);
            Btn追加.TabIndex = 5;
            Btn追加.Text = "追加";
            Btn追加.UseVisualStyleBackColor = false;
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
            // TabPage受注登録
            // 
            TabPage受注登録.BackColor = Color.Transparent;
            TabPage受注登録.Controls.Add(TextBox得意先Id);
            TabPage受注登録.Controls.Add(Btn得意先検索);
            TabPage受注登録.Controls.Add(Btn削除);
            TabPage受注登録.Controls.Add(CheckBox売上済み);
            TabPage受注登録.Controls.Add(Btnキャンセル);
            TabPage受注登録.Controls.Add(Btn保存);
            TabPage受注登録.Controls.Add(TextBox備考);
            TabPage受注登録.Controls.Add(label5);
            TabPage受注登録.Controls.Add(TextBox合計金額);
            TabPage受注登録.Controls.Add(label4);
            TabPage受注登録.Controls.Add(TextBox受注日);
            TabPage受注登録.Controls.Add(label3);
            TabPage受注登録.Controls.Add(TextBox得意先名);
            TabPage受注登録.Controls.Add(label2);
            TabPage受注登録.Controls.Add(TextBox受注Id);
            TabPage受注登録.Controls.Add(label1);
            TabPage受注登録.Location = new Point(4, 30);
            TabPage受注登録.Margin = new Padding(4);
            TabPage受注登録.Name = "TabPage受注登録";
            TabPage受注登録.Padding = new Padding(4);
            TabPage受注登録.Size = new Size(1192, 711);
            TabPage受注登録.TabIndex = 1;
            TabPage受注登録.Text = "受注登録";
            // 
            // TextBox得意先Id
            // 
            TextBox得意先Id.Location = new Point(37, 141);
            TextBox得意先Id.Margin = new Padding(4);
            TextBox得意先Id.Name = "TextBox得意先Id";
            TextBox得意先Id.ReadOnly = true;
            TextBox得意先Id.Size = new Size(81, 29);
            TextBox得意先Id.TabIndex = 15;
            TextBox得意先Id.TabStop = false;
            // 
            // Btn得意先検索
            // 
            Btn得意先検索.BackColor = Color.LightBlue;
            Btn得意先検索.FlatAppearance.BorderSize = 0;
            Btn得意先検索.FlatStyle = FlatStyle.Flat;
            Btn得意先検索.Location = new Point(593, 139);
            Btn得意先検索.Margin = new Padding(4);
            Btn得意先検索.Name = "Btn得意先検索";
            Btn得意先検索.Size = new Size(73, 30);
            Btn得意先検索.TabIndex = 14;
            Btn得意先検索.Text = "検索";
            Btn得意先検索.UseVisualStyleBackColor = false;
            // 
            // Btn削除
            // 
            Btn削除.BackColor = Color.FromArgb(192, 0, 0);
            Btn削除.FlatAppearance.BorderSize = 0;
            Btn削除.FlatStyle = FlatStyle.Flat;
            Btn削除.ForeColor = Color.White;
            Btn削除.Location = new Point(31, 618);
            Btn削除.Margin = new Padding(4);
            Btn削除.Name = "Btn削除";
            Btn削除.Size = new Size(120, 40);
            Btn削除.TabIndex = 13;
            Btn削除.Text = "削除";
            Btn削除.UseVisualStyleBackColor = false;
            // 
            // CheckBox売上済み
            // 
            CheckBox売上済み.AutoSize = true;
            CheckBox売上済み.Location = new Point(253, 49);
            CheckBox売上済み.Margin = new Padding(4);
            CheckBox売上済み.Name = "CheckBox売上済み";
            CheckBox売上済み.Size = new Size(91, 25);
            CheckBox売上済み.TabIndex = 12;
            CheckBox売上済み.Text = "売上済み";
            CheckBox売上済み.UseVisualStyleBackColor = true;
            // 
            // Btnキャンセル
            // 
            Btnキャンセル.BackColor = Color.Gray;
            Btnキャンセル.FlatAppearance.BorderSize = 0;
            Btnキャンセル.FlatStyle = FlatStyle.Flat;
            Btnキャンセル.ForeColor = Color.White;
            Btnキャンセル.Location = new Point(593, 618);
            Btnキャンセル.Margin = new Padding(4);
            Btnキャンセル.Name = "Btnキャンセル";
            Btnキャンセル.Size = new Size(120, 40);
            Btnキャンセル.TabIndex = 11;
            Btnキャンセル.Text = "キャンセル";
            Btnキャンセル.UseVisualStyleBackColor = false;
            // 
            // Btn保存
            // 
            Btn保存.BackColor = Color.Green;
            Btn保存.FlatAppearance.BorderSize = 0;
            Btn保存.FlatStyle = FlatStyle.Flat;
            Btn保存.ForeColor = Color.White;
            Btn保存.Location = new Point(372, 615);
            Btn保存.Margin = new Padding(4);
            Btn保存.Name = "Btn保存";
            Btn保存.Size = new Size(120, 40);
            Btn保存.TabIndex = 10;
            Btn保存.Text = "保存";
            Btn保存.UseVisualStyleBackColor = false;
            // 
            // TextBox備考
            // 
            TextBox備考.Location = new Point(33, 375);
            TextBox備考.Margin = new Padding(4);
            TextBox備考.Multiline = true;
            TextBox備考.Name = "TextBox備考";
            TextBox備考.Size = new Size(685, 182);
            TextBox備考.TabIndex = 9;
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Font = new Font("Yu Gothic UI", 9.75F, FontStyle.Regular, GraphicsUnit.Point, 128);
            label5.Location = new Point(29, 351);
            label5.Margin = new Padding(4, 0, 4, 0);
            label5.Name = "label5";
            label5.Size = new Size(34, 17);
            label5.TabIndex = 8;
            label5.Text = "備考";
            // 
            // TextBox合計金額
            // 
            TextBox合計金額.Location = new Point(397, 255);
            TextBox合計金額.Margin = new Padding(4);
            TextBox合計金額.Name = "TextBox合計金額";
            TextBox合計金額.Size = new Size(172, 29);
            TextBox合計金額.TabIndex = 7;
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Font = new Font("Yu Gothic UI", 9.75F, FontStyle.Regular, GraphicsUnit.Point, 128);
            label4.ForeColor = Color.Red;
            label4.Location = new Point(393, 231);
            label4.Margin = new Padding(4, 0, 4, 0);
            label4.Name = "label4";
            label4.Size = new Size(60, 17);
            label4.TabIndex = 6;
            label4.Text = "合計金額";
            // 
            // TextBox受注日
            // 
            TextBox受注日.Location = new Point(37, 255);
            TextBox受注日.Margin = new Padding(4);
            TextBox受注日.Name = "TextBox受注日";
            TextBox受注日.Size = new Size(172, 29);
            TextBox受注日.TabIndex = 5;
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Font = new Font("Yu Gothic UI", 9.75F, FontStyle.Regular, GraphicsUnit.Point, 128);
            label3.ForeColor = Color.Red;
            label3.Location = new Point(33, 231);
            label3.Margin = new Padding(4, 0, 4, 0);
            label3.Name = "label3";
            label3.Size = new Size(47, 17);
            label3.TabIndex = 4;
            label3.Text = "受注日";
            // 
            // TextBox得意先名
            // 
            TextBox得意先名.Location = new Point(132, 142);
            TextBox得意先名.Margin = new Padding(4);
            TextBox得意先名.Name = "TextBox得意先名";
            TextBox得意先名.ReadOnly = true;
            TextBox得意先名.Size = new Size(448, 29);
            TextBox得意先名.TabIndex = 3;
            TextBox得意先名.TabStop = false;
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Font = new Font("Yu Gothic UI", 9.75F, FontStyle.Regular, GraphicsUnit.Point, 128);
            label2.ForeColor = Color.Red;
            label2.Location = new Point(33, 118);
            label2.Margin = new Padding(4, 0, 4, 0);
            label2.Name = "label2";
            label2.Size = new Size(47, 17);
            label2.TabIndex = 2;
            label2.Text = "得意先";
            // 
            // TextBox受注Id
            // 
            TextBox受注Id.Location = new Point(37, 49);
            TextBox受注Id.Margin = new Padding(4);
            TextBox受注Id.Name = "TextBox受注Id";
            TextBox受注Id.ReadOnly = true;
            TextBox受注Id.Size = new Size(172, 29);
            TextBox受注Id.TabIndex = 1;
            TextBox受注Id.TabStop = false;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Yu Gothic UI", 9.75F, FontStyle.Regular, GraphicsUnit.Point, 128);
            label1.Location = new Point(33, 25);
            label1.Margin = new Padding(4, 0, 4, 0);
            label1.Name = "label1";
            label1.Size = new Size(45, 17);
            label1.TabIndex = 0;
            label1.Text = "受注Id";
            // 
            // Form受注
            // 
            AutoScaleDimensions = new SizeF(9F, 21F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.WhiteSmoke;
            ClientSize = new Size(1200, 745);
            Controls.Add(TabControl);
            Font = new Font("Yu Gothic UI", 12F, FontStyle.Regular, GraphicsUnit.Point, 128);
            FormBorderStyle = FormBorderStyle.None;
            Margin = new Padding(4);
            Name = "Form受注";
            Text = "Form受注";
            TabControl.ResumeLayout(false);
            TabPage受注一覧.ResumeLayout(false);
            PanelTop.ResumeLayout(false);
            PanelTop.PerformLayout();
            TabPage受注登録.ResumeLayout(false);
            TabPage受注登録.PerformLayout();
            ResumeLayout(false);
        }

        #endregion

        private TabControl TabControl;
        private TabPage TabPage受注一覧;
        private Panel PanelTop;
        private Button Btn検索;
        private TabPage TabPage受注登録;
        private TextBox TextBox受注Id;
        private Label label1;
        private TextBox TextBox得意先名;
        private Label label2;
        private TextBox TextBox合計金額;
        private Label label4;
        private TextBox TextBox受注日;
        private Label label3;
        private TextBox TextBox備考;
        private Label label5;
        private Button Btnキャンセル;
        private Button Btn保存;
        private CheckBox CheckBox売上済み;
        private Button Btn追加;
        private Button Btn削除;
        private Button Btn得意先検索;
        private TextBox TextBox得意先Id;
        private TextBox TextBox検索;
        private SelectableGridView DataGridView;
        private ExcelExportButton BtnExcel;
    }
}