using WinFormsMenuDemo.Controls;

namespace WinFormsMenuDemo.Views
{
    partial class Form得意先
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
            TabPage得意先一覧 = new TabPage();
            DataGridView = new SelectableGridView();
            PanelTop = new Panel();
            TextBox検索 = new TextBox();
            Btn追加 = new Button();
            Btn検索 = new Button();
            TabPage得意先登録 = new TabPage();
            TextBoxメール = new TextBox();
            label6 = new Label();
            Btn削除 = new Button();
            CheckBox削除済み = new CheckBox();
            Btnキャンセル = new Button();
            Btn保存 = new Button();
            TextBox備考 = new TextBox();
            label5 = new Label();
            TextBox電話番号 = new TextBox();
            label4 = new Label();
            TextBox住所 = new TextBox();
            label3 = new Label();
            TextBox得意先名 = new TextBox();
            label2 = new Label();
            TextBox得意先Id = new TextBox();
            label1 = new Label();
            BtnExcel = new ExcelExportButton();
            TabControl.SuspendLayout();
            TabPage得意先一覧.SuspendLayout();
            PanelTop.SuspendLayout();
            TabPage得意先登録.SuspendLayout();
            SuspendLayout();
            // 
            // tabControl
            // 
            TabControl.Controls.Add(TabPage得意先一覧);
            TabControl.Controls.Add(TabPage得意先登録);
            TabControl.Dock = DockStyle.Fill;
            TabControl.Font = new Font("Yu Gothic UI", 12F, FontStyle.Regular, GraphicsUnit.Point, 128);
            TabControl.Location = new Point(0, 0);
            TabControl.Margin = new Padding(0);
            TabControl.Name = "tabControl";
            TabControl.SelectedIndex = 0;
            TabControl.Size = new Size(1200, 745);
            TabControl.TabIndex = 4;
            // 
            // tabPage得意先一覧
            // 
            TabPage得意先一覧.BackColor = Color.Transparent;
            TabPage得意先一覧.Controls.Add(DataGridView);
            TabPage得意先一覧.Controls.Add(PanelTop);
            TabPage得意先一覧.Location = new Point(4, 30);
            TabPage得意先一覧.Margin = new Padding(4);
            TabPage得意先一覧.Name = "tabPage得意先一覧";
            TabPage得意先一覧.Padding = new Padding(4);
            TabPage得意先一覧.Size = new Size(1192, 711);
            TabPage得意先一覧.TabIndex = 0;
            TabPage得意先一覧.Text = "得意先一覧";
            // 
            // dataGridView
            // 
            DataGridView.DataSource = null;
            DataGridView.Dock = DockStyle.Fill;
            DataGridView.Location = new Point(4, 54);
            DataGridView.Name = "dataGridView";
            DataGridView.Size = new Size(1184, 653);
            DataGridView.TabIndex = 3;
            // 
            // panelTop
            // 
            PanelTop.BackColor = Color.WhiteSmoke;
            PanelTop.Controls.Add(BtnExcel);
            PanelTop.Controls.Add(TextBox検索);
            PanelTop.Controls.Add(Btn追加);
            PanelTop.Controls.Add(Btn検索);
            PanelTop.Dock = DockStyle.Top;
            PanelTop.Location = new Point(4, 4);
            PanelTop.Margin = new Padding(4);
            PanelTop.Name = "panelTop";
            PanelTop.Size = new Size(1184, 50);
            PanelTop.TabIndex = 2;
            // 
            // textBox検索
            // 
            TextBox検索.Location = new Point(13, 12);
            TextBox検索.Name = "textBox検索";
            TextBox検索.PlaceholderText = "得意先Id(数値)   または  得意先名の一部を入力";
            TextBox検索.Size = new Size(475, 29);
            TextBox検索.TabIndex = 7;
            // 
            // button追加
            // 
            Btn追加.BackColor = Color.DeepSkyBlue;
            Btn追加.FlatAppearance.BorderSize = 0;
            Btn追加.FlatStyle = FlatStyle.Flat;
            Btn追加.ForeColor = Color.Black;
            Btn追加.Location = new Point(672, 12);
            Btn追加.Margin = new Padding(4);
            Btn追加.Name = "button追加";
            Btn追加.Size = new Size(120, 30);
            Btn追加.TabIndex = 5;
            Btn追加.Text = "追加";
            Btn追加.UseVisualStyleBackColor = false;
            // 
            // button検索
            // 
            Btn検索.BackColor = Color.LightBlue;
            Btn検索.FlatAppearance.BorderSize = 0;
            Btn検索.FlatStyle = FlatStyle.Flat;
            Btn検索.Location = new Point(495, 12);
            Btn検索.Margin = new Padding(4);
            Btn検索.Name = "button検索";
            Btn検索.Size = new Size(73, 30);
            Btn検索.TabIndex = 2;
            Btn検索.Text = "検索";
            Btn検索.UseVisualStyleBackColor = false;
            // 
            // tabPage得意先登録
            // 
            TabPage得意先登録.BackColor = Color.Transparent;
            TabPage得意先登録.Controls.Add(TextBoxメール);
            TabPage得意先登録.Controls.Add(label6);
            TabPage得意先登録.Controls.Add(Btn削除);
            TabPage得意先登録.Controls.Add(CheckBox削除済み);
            TabPage得意先登録.Controls.Add(Btnキャンセル);
            TabPage得意先登録.Controls.Add(Btn保存);
            TabPage得意先登録.Controls.Add(TextBox備考);
            TabPage得意先登録.Controls.Add(label5);
            TabPage得意先登録.Controls.Add(TextBox電話番号);
            TabPage得意先登録.Controls.Add(label4);
            TabPage得意先登録.Controls.Add(TextBox住所);
            TabPage得意先登録.Controls.Add(label3);
            TabPage得意先登録.Controls.Add(TextBox得意先名);
            TabPage得意先登録.Controls.Add(label2);
            TabPage得意先登録.Controls.Add(TextBox得意先Id);
            TabPage得意先登録.Controls.Add(label1);
            TabPage得意先登録.Location = new Point(4, 30);
            TabPage得意先登録.Margin = new Padding(4);
            TabPage得意先登録.Name = "tabPage得意先登録";
            TabPage得意先登録.Padding = new Padding(4);
            TabPage得意先登録.RightToLeft = RightToLeft.No;
            TabPage得意先登録.Size = new Size(1232, 716);
            TabPage得意先登録.TabIndex = 1;
            TabPage得意先登録.Text = "得意先登録";
            // 
            // textBoxメール
            // 
            TextBoxメール.Location = new Point(372, 255);
            TextBoxメール.Margin = new Padding(4);
            TextBoxメール.Name = "textBoxメール";
            TextBoxメール.Size = new Size(341, 29);
            TextBoxメール.TabIndex = 4;
            // 
            // label6
            // 
            label6.AutoSize = true;
            label6.Font = new Font("Yu Gothic UI", 9.75F, FontStyle.Regular, GraphicsUnit.Point, 128);
            label6.ForeColor = Color.Black;
            label6.Location = new Point(372, 235);
            label6.Margin = new Padding(4, 0, 4, 0);
            label6.Name = "label6";
            label6.Size = new Size(36, 17);
            label6.TabIndex = 14;
            label6.Text = "メール";
            // 
            // button削除
            // 
            Btn削除.BackColor = Color.FromArgb(192, 0, 0);
            Btn削除.FlatAppearance.BorderSize = 0;
            Btn削除.FlatStyle = FlatStyle.Flat;
            Btn削除.ForeColor = Color.White;
            Btn削除.Location = new Point(31, 618);
            Btn削除.Margin = new Padding(4);
            Btn削除.Name = "button削除";
            Btn削除.Size = new Size(120, 40);
            Btn削除.TabIndex = 13;
            Btn削除.Text = "削除";
            Btn削除.UseVisualStyleBackColor = false;
            // 
            // checkBox削除済み
            // 
            CheckBox削除済み.AutoSize = true;
            CheckBox削除済み.Location = new Point(257, 53);
            CheckBox削除済み.Margin = new Padding(4);
            CheckBox削除済み.Name = "checkBox削除済み";
            CheckBox削除済み.Size = new Size(91, 25);
            CheckBox削除済み.TabIndex = 12;
            CheckBox削除済み.Text = "削除済み";
            CheckBox削除済み.UseVisualStyleBackColor = true;
            // 
            // buttonキャンセル
            // 
            Btnキャンセル.BackColor = Color.Gray;
            Btnキャンセル.FlatAppearance.BorderSize = 0;
            Btnキャンセル.FlatStyle = FlatStyle.Flat;
            Btnキャンセル.ForeColor = Color.White;
            Btnキャンセル.Location = new Point(593, 618);
            Btnキャンセル.Margin = new Padding(4);
            Btnキャンセル.Name = "buttonキャンセル";
            Btnキャンセル.Size = new Size(120, 40);
            Btnキャンセル.TabIndex = 11;
            Btnキャンセル.Text = "キャンセル";
            Btnキャンセル.UseVisualStyleBackColor = false;
            // 
            // button保存
            // 
            Btn保存.BackColor = Color.Green;
            Btn保存.FlatAppearance.BorderSize = 0;
            Btn保存.FlatStyle = FlatStyle.Flat;
            Btn保存.ForeColor = Color.White;
            Btn保存.Location = new Point(372, 615);
            Btn保存.Margin = new Padding(4);
            Btn保存.Name = "button保存";
            Btn保存.Size = new Size(120, 40);
            Btn保存.TabIndex = 10;
            Btn保存.Text = "保存";
            Btn保存.UseVisualStyleBackColor = false;
            // 
            // textBox備考
            // 
            TextBox備考.Location = new Point(33, 375);
            TextBox備考.Margin = new Padding(4);
            TextBox備考.Multiline = true;
            TextBox備考.Name = "textBox備考";
            TextBox備考.Size = new Size(685, 182);
            TextBox備考.TabIndex = 5;
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Font = new Font("Yu Gothic UI", 9.75F, FontStyle.Regular, GraphicsUnit.Point, 128);
            label5.Location = new Point(33, 355);
            label5.Margin = new Padding(4, 0, 4, 0);
            label5.Name = "label5";
            label5.Size = new Size(34, 17);
            label5.TabIndex = 8;
            label5.Text = "備考";
            // 
            // textBox電話番号
            // 
            TextBox電話番号.Location = new Point(37, 255);
            TextBox電話番号.Margin = new Padding(4);
            TextBox電話番号.Name = "textBox電話番号";
            TextBox電話番号.Size = new Size(172, 29);
            TextBox電話番号.TabIndex = 3;
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Font = new Font("Yu Gothic UI", 9.75F, FontStyle.Regular, GraphicsUnit.Point, 128);
            label4.ForeColor = Color.Black;
            label4.Location = new Point(37, 235);
            label4.Margin = new Padding(4, 0, 4, 0);
            label4.Name = "label4";
            label4.Size = new Size(60, 17);
            label4.TabIndex = 6;
            label4.Text = "電話番号";
            // 
            // textBox住所
            // 
            TextBox住所.Location = new Point(37, 186);
            TextBox住所.Margin = new Padding(4);
            TextBox住所.Name = "textBox住所";
            TextBox住所.Size = new Size(676, 29);
            TextBox住所.TabIndex = 2;
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Font = new Font("Yu Gothic UI", 9.75F, FontStyle.Regular, GraphicsUnit.Point, 128);
            label3.ForeColor = Color.Black;
            label3.Location = new Point(37, 166);
            label3.Margin = new Padding(4, 0, 4, 0);
            label3.Name = "label3";
            label3.Size = new Size(34, 17);
            label3.TabIndex = 4;
            label3.Text = "住所";
            // 
            // textBox得意先名
            // 
            TextBox得意先名.Location = new Point(37, 123);
            TextBox得意先名.Margin = new Padding(4);
            TextBox得意先名.Name = "textBox得意先名";
            TextBox得意先名.Size = new Size(448, 29);
            TextBox得意先名.TabIndex = 1;
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Font = new Font("Yu Gothic UI", 9.75F, FontStyle.Regular, GraphicsUnit.Point, 128);
            label2.ForeColor = Color.Red;
            label2.Location = new Point(37, 102);
            label2.Margin = new Padding(4, 0, 4, 0);
            label2.Name = "label2";
            label2.Size = new Size(60, 17);
            label2.TabIndex = 2;
            label2.Text = "得意先名";
            // 
            // textBox得意先Id
            // 
            TextBox得意先Id.Location = new Point(37, 49);
            TextBox得意先Id.Margin = new Padding(4);
            TextBox得意先Id.Name = "textBox得意先Id";
            TextBox得意先Id.ReadOnly = true;
            TextBox得意先Id.Size = new Size(172, 29);
            TextBox得意先Id.TabIndex = 1;
            TextBox得意先Id.TabStop = false;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Yu Gothic UI", 9.75F, FontStyle.Regular, GraphicsUnit.Point, 128);
            label1.Location = new Point(37, 29);
            label1.Margin = new Padding(4, 0, 4, 0);
            label1.Name = "label1";
            label1.Size = new Size(58, 17);
            label1.TabIndex = 0;
            label1.Text = "得意先Id";
            // 
            // buttonExcel
            // 
            BtnExcel.Anchor = AnchorStyles.Top | AnchorStyles.Right;
            BtnExcel.Image = Properties.Resources.Excel;
            BtnExcel.Location = new Point(1139, 9);
            BtnExcel.Name = "buttonExcel";
            BtnExcel.Size = new Size(32, 32);
            BtnExcel.TabIndex = 9;
            BtnExcel.TargetGrid = DataGridView;
            BtnExcel.UseVisualStyleBackColor = true;
            // 
            // Form得意先
            // 
            AutoScaleDimensions = new SizeF(9F, 21F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.WhiteSmoke;
            ClientSize = new Size(1200, 745);
            Controls.Add(TabControl);
            Font = new Font("Yu Gothic UI", 12F, FontStyle.Regular, GraphicsUnit.Point, 128);
            FormBorderStyle = FormBorderStyle.None;
            Margin = new Padding(4);
            Name = "Form得意先";
            Text = "Form得意先";
            TabControl.ResumeLayout(false);
            TabPage得意先一覧.ResumeLayout(false);
            PanelTop.ResumeLayout(false);
            PanelTop.PerformLayout();
            TabPage得意先登録.ResumeLayout(false);
            TabPage得意先登録.PerformLayout();
            ResumeLayout(false);
        }

        #endregion

        private TabControl TabControl;
        private TabPage TabPage得意先一覧;
        private Panel PanelTop;
        private TextBox TextBox検索;
        private Button Btn追加;
        private Button Btn検索;
        private TabPage TabPage得意先登録;
        private Button Btn削除;
        private CheckBox CheckBox削除済み;
        private Button Btnキャンセル;
        private Button Btn保存;
        private TextBox TextBox備考;
        private Label label5;
        private TextBox TextBox電話番号;
        private Label label4;
        private TextBox TextBox住所;
        private Label label3;
        private TextBox TextBox得意先名;
        private Label label2;
        private TextBox TextBox得意先Id;
        private Label label1;
        private TextBox TextBoxメール;
        private Label label6;
        private SelectableGridView DataGridView;
        private ExcelExportButton BtnExcel;
    }
}