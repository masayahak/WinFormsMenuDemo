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
            tabControl = new TabControl();
            tabPage得意先一覧 = new TabPage();
            dataGridView = new SelectableGridView();
            panelTop = new Panel();
            textBox検索 = new TextBox();
            button追加 = new Button();
            button検索 = new Button();
            tabPage得意先登録 = new TabPage();
            textBoxメール = new TextBox();
            label6 = new Label();
            button削除 = new Button();
            checkBox削除済み = new CheckBox();
            buttonキャンセル = new Button();
            button保存 = new Button();
            textBox備考 = new TextBox();
            label5 = new Label();
            textBox電話番号 = new TextBox();
            label4 = new Label();
            textBox住所 = new TextBox();
            label3 = new Label();
            textBox得意先名 = new TextBox();
            label2 = new Label();
            textBox得意先Id = new TextBox();
            label1 = new Label();
            buttonExcel = new ExcelExportButton();
            tabControl.SuspendLayout();
            tabPage得意先一覧.SuspendLayout();
            panelTop.SuspendLayout();
            tabPage得意先登録.SuspendLayout();
            SuspendLayout();
            // 
            // tabControl
            // 
            tabControl.Controls.Add(tabPage得意先一覧);
            tabControl.Controls.Add(tabPage得意先登録);
            tabControl.Dock = DockStyle.Fill;
            tabControl.Font = new Font("Yu Gothic UI", 12F, FontStyle.Regular, GraphicsUnit.Point, 128);
            tabControl.Location = new Point(0, 0);
            tabControl.Margin = new Padding(0);
            tabControl.Name = "tabControl";
            tabControl.SelectedIndex = 0;
            tabControl.Size = new Size(1200, 745);
            tabControl.TabIndex = 4;
            // 
            // tabPage得意先一覧
            // 
            tabPage得意先一覧.BackColor = Color.Transparent;
            tabPage得意先一覧.Controls.Add(dataGridView);
            tabPage得意先一覧.Controls.Add(panelTop);
            tabPage得意先一覧.Location = new Point(4, 30);
            tabPage得意先一覧.Margin = new Padding(4);
            tabPage得意先一覧.Name = "tabPage得意先一覧";
            tabPage得意先一覧.Padding = new Padding(4);
            tabPage得意先一覧.Size = new Size(1192, 711);
            tabPage得意先一覧.TabIndex = 0;
            tabPage得意先一覧.Text = "得意先一覧";
            // 
            // dataGridView
            // 
            dataGridView.DataSource = null;
            dataGridView.Dock = DockStyle.Fill;
            dataGridView.Location = new Point(4, 54);
            dataGridView.Name = "dataGridView";
            dataGridView.Size = new Size(1184, 653);
            dataGridView.TabIndex = 3;
            // 
            // panelTop
            // 
            panelTop.BackColor = Color.WhiteSmoke;
            panelTop.Controls.Add(buttonExcel);
            panelTop.Controls.Add(textBox検索);
            panelTop.Controls.Add(button追加);
            panelTop.Controls.Add(button検索);
            panelTop.Dock = DockStyle.Top;
            panelTop.Location = new Point(4, 4);
            panelTop.Margin = new Padding(4);
            panelTop.Name = "panelTop";
            panelTop.Size = new Size(1184, 50);
            panelTop.TabIndex = 2;
            // 
            // textBox検索
            // 
            textBox検索.Location = new Point(13, 12);
            textBox検索.Name = "textBox検索";
            textBox検索.PlaceholderText = "得意先Id(数値)   または  得意先名の一部を入力";
            textBox検索.Size = new Size(475, 29);
            textBox検索.TabIndex = 7;
            // 
            // button追加
            // 
            button追加.BackColor = Color.DeepSkyBlue;
            button追加.FlatAppearance.BorderSize = 0;
            button追加.FlatStyle = FlatStyle.Flat;
            button追加.ForeColor = Color.Black;
            button追加.Location = new Point(672, 12);
            button追加.Margin = new Padding(4);
            button追加.Name = "button追加";
            button追加.Size = new Size(120, 30);
            button追加.TabIndex = 5;
            button追加.Text = "追加";
            button追加.UseVisualStyleBackColor = false;
            // 
            // button検索
            // 
            button検索.BackColor = Color.LightBlue;
            button検索.FlatAppearance.BorderSize = 0;
            button検索.FlatStyle = FlatStyle.Flat;
            button検索.Location = new Point(495, 12);
            button検索.Margin = new Padding(4);
            button検索.Name = "button検索";
            button検索.Size = new Size(73, 30);
            button検索.TabIndex = 2;
            button検索.Text = "検索";
            button検索.UseVisualStyleBackColor = false;
            // 
            // tabPage得意先登録
            // 
            tabPage得意先登録.BackColor = Color.Transparent;
            tabPage得意先登録.Controls.Add(textBoxメール);
            tabPage得意先登録.Controls.Add(label6);
            tabPage得意先登録.Controls.Add(button削除);
            tabPage得意先登録.Controls.Add(checkBox削除済み);
            tabPage得意先登録.Controls.Add(buttonキャンセル);
            tabPage得意先登録.Controls.Add(button保存);
            tabPage得意先登録.Controls.Add(textBox備考);
            tabPage得意先登録.Controls.Add(label5);
            tabPage得意先登録.Controls.Add(textBox電話番号);
            tabPage得意先登録.Controls.Add(label4);
            tabPage得意先登録.Controls.Add(textBox住所);
            tabPage得意先登録.Controls.Add(label3);
            tabPage得意先登録.Controls.Add(textBox得意先名);
            tabPage得意先登録.Controls.Add(label2);
            tabPage得意先登録.Controls.Add(textBox得意先Id);
            tabPage得意先登録.Controls.Add(label1);
            tabPage得意先登録.Location = new Point(4, 30);
            tabPage得意先登録.Margin = new Padding(4);
            tabPage得意先登録.Name = "tabPage得意先登録";
            tabPage得意先登録.Padding = new Padding(4);
            tabPage得意先登録.RightToLeft = RightToLeft.No;
            tabPage得意先登録.Size = new Size(1232, 716);
            tabPage得意先登録.TabIndex = 1;
            tabPage得意先登録.Text = "得意先登録";
            // 
            // textBoxメール
            // 
            textBoxメール.Location = new Point(372, 255);
            textBoxメール.Margin = new Padding(4);
            textBoxメール.Name = "textBoxメール";
            textBoxメール.Size = new Size(341, 29);
            textBoxメール.TabIndex = 4;
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
            button削除.BackColor = Color.FromArgb(192, 0, 0);
            button削除.FlatAppearance.BorderSize = 0;
            button削除.FlatStyle = FlatStyle.Flat;
            button削除.ForeColor = Color.White;
            button削除.Location = new Point(31, 618);
            button削除.Margin = new Padding(4);
            button削除.Name = "button削除";
            button削除.Size = new Size(120, 40);
            button削除.TabIndex = 13;
            button削除.Text = "削除";
            button削除.UseVisualStyleBackColor = false;
            // 
            // checkBox削除済み
            // 
            checkBox削除済み.AutoSize = true;
            checkBox削除済み.Location = new Point(257, 53);
            checkBox削除済み.Margin = new Padding(4);
            checkBox削除済み.Name = "checkBox削除済み";
            checkBox削除済み.Size = new Size(91, 25);
            checkBox削除済み.TabIndex = 12;
            checkBox削除済み.Text = "削除済み";
            checkBox削除済み.UseVisualStyleBackColor = true;
            // 
            // buttonキャンセル
            // 
            buttonキャンセル.BackColor = Color.Gray;
            buttonキャンセル.FlatAppearance.BorderSize = 0;
            buttonキャンセル.FlatStyle = FlatStyle.Flat;
            buttonキャンセル.ForeColor = Color.White;
            buttonキャンセル.Location = new Point(593, 618);
            buttonキャンセル.Margin = new Padding(4);
            buttonキャンセル.Name = "buttonキャンセル";
            buttonキャンセル.Size = new Size(120, 40);
            buttonキャンセル.TabIndex = 11;
            buttonキャンセル.Text = "キャンセル";
            buttonキャンセル.UseVisualStyleBackColor = false;
            // 
            // button保存
            // 
            button保存.BackColor = Color.Green;
            button保存.FlatAppearance.BorderSize = 0;
            button保存.FlatStyle = FlatStyle.Flat;
            button保存.ForeColor = Color.White;
            button保存.Location = new Point(372, 615);
            button保存.Margin = new Padding(4);
            button保存.Name = "button保存";
            button保存.Size = new Size(120, 40);
            button保存.TabIndex = 10;
            button保存.Text = "保存";
            button保存.UseVisualStyleBackColor = false;
            // 
            // textBox備考
            // 
            textBox備考.Location = new Point(33, 375);
            textBox備考.Margin = new Padding(4);
            textBox備考.Multiline = true;
            textBox備考.Name = "textBox備考";
            textBox備考.Size = new Size(685, 182);
            textBox備考.TabIndex = 5;
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
            textBox電話番号.Location = new Point(37, 255);
            textBox電話番号.Margin = new Padding(4);
            textBox電話番号.Name = "textBox電話番号";
            textBox電話番号.Size = new Size(172, 29);
            textBox電話番号.TabIndex = 3;
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
            textBox住所.Location = new Point(37, 186);
            textBox住所.Margin = new Padding(4);
            textBox住所.Name = "textBox住所";
            textBox住所.Size = new Size(676, 29);
            textBox住所.TabIndex = 2;
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
            textBox得意先名.Location = new Point(37, 123);
            textBox得意先名.Margin = new Padding(4);
            textBox得意先名.Name = "textBox得意先名";
            textBox得意先名.Size = new Size(448, 29);
            textBox得意先名.TabIndex = 1;
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
            textBox得意先Id.Location = new Point(37, 49);
            textBox得意先Id.Margin = new Padding(4);
            textBox得意先Id.Name = "textBox得意先Id";
            textBox得意先Id.ReadOnly = true;
            textBox得意先Id.Size = new Size(172, 29);
            textBox得意先Id.TabIndex = 1;
            textBox得意先Id.TabStop = false;
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
            buttonExcel.Anchor = AnchorStyles.Top | AnchorStyles.Right;
            buttonExcel.Image = Properties.Resources.Excel;
            buttonExcel.Location = new Point(1139, 9);
            buttonExcel.Name = "buttonExcel";
            buttonExcel.Size = new Size(32, 32);
            buttonExcel.TabIndex = 9;
            buttonExcel.TargetGrid = dataGridView;
            buttonExcel.UseVisualStyleBackColor = true;
            // 
            // Form得意先
            // 
            AutoScaleDimensions = new SizeF(9F, 21F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.WhiteSmoke;
            ClientSize = new Size(1200, 745);
            Controls.Add(tabControl);
            Font = new Font("Yu Gothic UI", 12F, FontStyle.Regular, GraphicsUnit.Point, 128);
            FormBorderStyle = FormBorderStyle.None;
            Margin = new Padding(4);
            Name = "Form得意先";
            Text = "Form得意先";
            tabControl.ResumeLayout(false);
            tabPage得意先一覧.ResumeLayout(false);
            panelTop.ResumeLayout(false);
            panelTop.PerformLayout();
            tabPage得意先登録.ResumeLayout(false);
            tabPage得意先登録.PerformLayout();
            ResumeLayout(false);
        }

        #endregion

        private TabControl tabControl;
        private TabPage tabPage得意先一覧;
        private Panel panelTop;
        private TextBox textBox検索;
        private Button button追加;
        private Button button検索;
        private TabPage tabPage得意先登録;
        private Button button削除;
        private CheckBox checkBox削除済み;
        private Button buttonキャンセル;
        private Button button保存;
        private TextBox textBox備考;
        private Label label5;
        private TextBox textBox電話番号;
        private Label label4;
        private TextBox textBox住所;
        private Label label3;
        private TextBox textBox得意先名;
        private Label label2;
        private TextBox textBox得意先Id;
        private Label label1;
        private TextBox textBoxメール;
        private Label label6;
        private SelectableGridView dataGridView;
        private ExcelExportButton buttonExcel;
    }
}