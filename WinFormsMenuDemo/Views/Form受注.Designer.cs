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
            tabControl = new TabControl();
            tabPage受注一覧 = new TabPage();
            dataGridView = new SelectableGridView();
            panelTop = new Panel();
            buttonExcel = new ExcelExportButton();
            textBox検索 = new TextBox();
            button追加 = new Button();
            button検索 = new Button();
            tabPage受注登録 = new TabPage();
            textBox得意先Id = new TextBox();
            button得意先検索 = new Button();
            button削除 = new Button();
            checkBox売上済み = new CheckBox();
            buttonキャンセル = new Button();
            button保存 = new Button();
            textBox備考 = new TextBox();
            label5 = new Label();
            textBox合計金額 = new TextBox();
            label4 = new Label();
            textBox受注日 = new TextBox();
            label3 = new Label();
            textBox得意先名 = new TextBox();
            label2 = new Label();
            textBox受注Id = new TextBox();
            label1 = new Label();
            tabControl.SuspendLayout();
            tabPage受注一覧.SuspendLayout();
            panelTop.SuspendLayout();
            tabPage受注登録.SuspendLayout();
            SuspendLayout();
            // 
            // tabControl
            // 
            tabControl.Controls.Add(tabPage受注一覧);
            tabControl.Controls.Add(tabPage受注登録);
            tabControl.Dock = DockStyle.Fill;
            tabControl.Font = new Font("Yu Gothic UI", 12F, FontStyle.Regular, GraphicsUnit.Point, 128);
            tabControl.Location = new Point(0, 0);
            tabControl.Margin = new Padding(0);
            tabControl.Name = "tabControl";
            tabControl.SelectedIndex = 0;
            tabControl.Size = new Size(1200, 745);
            tabControl.TabIndex = 3;
            // 
            // tabPage受注一覧
            // 
            tabPage受注一覧.BackColor = Color.Transparent;
            tabPage受注一覧.Controls.Add(dataGridView);
            tabPage受注一覧.Controls.Add(panelTop);
            tabPage受注一覧.Location = new Point(4, 30);
            tabPage受注一覧.Margin = new Padding(4);
            tabPage受注一覧.Name = "tabPage受注一覧";
            tabPage受注一覧.Padding = new Padding(4);
            tabPage受注一覧.Size = new Size(1192, 711);
            tabPage受注一覧.TabIndex = 0;
            tabPage受注一覧.Text = "受注一覧";
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
            // buttonExcel
            // 
            buttonExcel.Image = Properties.Resources.Excel;
            buttonExcel.Location = new Point(1138, 9);
            buttonExcel.Name = "buttonExcel";
            buttonExcel.Size = new Size(32, 32);
            buttonExcel.TabIndex = 8;
            buttonExcel.TargetGrid = dataGridView;
            buttonExcel.UseVisualStyleBackColor = true;
            // 
            // textBox検索
            // 
            textBox検索.Location = new Point(13, 12);
            textBox検索.Name = "textBox検索";
            textBox検索.PlaceholderText = "受注Id(数値)   または  得意先名の一部を入力";
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
            // tabPage受注登録
            // 
            tabPage受注登録.BackColor = Color.Transparent;
            tabPage受注登録.Controls.Add(textBox得意先Id);
            tabPage受注登録.Controls.Add(button得意先検索);
            tabPage受注登録.Controls.Add(button削除);
            tabPage受注登録.Controls.Add(checkBox売上済み);
            tabPage受注登録.Controls.Add(buttonキャンセル);
            tabPage受注登録.Controls.Add(button保存);
            tabPage受注登録.Controls.Add(textBox備考);
            tabPage受注登録.Controls.Add(label5);
            tabPage受注登録.Controls.Add(textBox合計金額);
            tabPage受注登録.Controls.Add(label4);
            tabPage受注登録.Controls.Add(textBox受注日);
            tabPage受注登録.Controls.Add(label3);
            tabPage受注登録.Controls.Add(textBox得意先名);
            tabPage受注登録.Controls.Add(label2);
            tabPage受注登録.Controls.Add(textBox受注Id);
            tabPage受注登録.Controls.Add(label1);
            tabPage受注登録.Location = new Point(4, 30);
            tabPage受注登録.Margin = new Padding(4);
            tabPage受注登録.Name = "tabPage受注登録";
            tabPage受注登録.Padding = new Padding(4);
            tabPage受注登録.Size = new Size(1232, 716);
            tabPage受注登録.TabIndex = 1;
            tabPage受注登録.Text = "受注登録";
            // 
            // textBox得意先Id
            // 
            textBox得意先Id.Location = new Point(37, 141);
            textBox得意先Id.Margin = new Padding(4);
            textBox得意先Id.Name = "textBox得意先Id";
            textBox得意先Id.ReadOnly = true;
            textBox得意先Id.Size = new Size(81, 29);
            textBox得意先Id.TabIndex = 15;
            textBox得意先Id.TabStop = false;
            // 
            // button得意先検索
            // 
            button得意先検索.BackColor = Color.LightBlue;
            button得意先検索.FlatAppearance.BorderSize = 0;
            button得意先検索.FlatStyle = FlatStyle.Flat;
            button得意先検索.Location = new Point(593, 139);
            button得意先検索.Margin = new Padding(4);
            button得意先検索.Name = "button得意先検索";
            button得意先検索.Size = new Size(73, 30);
            button得意先検索.TabIndex = 14;
            button得意先検索.Text = "検索";
            button得意先検索.UseVisualStyleBackColor = false;
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
            // checkBox売上済み
            // 
            checkBox売上済み.AutoSize = true;
            checkBox売上済み.Location = new Point(253, 49);
            checkBox売上済み.Margin = new Padding(4);
            checkBox売上済み.Name = "checkBox売上済み";
            checkBox売上済み.Size = new Size(91, 25);
            checkBox売上済み.TabIndex = 12;
            checkBox売上済み.Text = "売上済み";
            checkBox売上済み.UseVisualStyleBackColor = true;
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
            textBox備考.TabIndex = 9;
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
            // textBox合計金額
            // 
            textBox合計金額.Location = new Point(397, 255);
            textBox合計金額.Margin = new Padding(4);
            textBox合計金額.Name = "textBox合計金額";
            textBox合計金額.Size = new Size(172, 29);
            textBox合計金額.TabIndex = 7;
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
            // textBox受注日
            // 
            textBox受注日.Location = new Point(37, 255);
            textBox受注日.Margin = new Padding(4);
            textBox受注日.Name = "textBox受注日";
            textBox受注日.Size = new Size(172, 29);
            textBox受注日.TabIndex = 5;
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
            // textBox得意先名
            // 
            textBox得意先名.Location = new Point(132, 142);
            textBox得意先名.Margin = new Padding(4);
            textBox得意先名.Name = "textBox得意先名";
            textBox得意先名.ReadOnly = true;
            textBox得意先名.Size = new Size(448, 29);
            textBox得意先名.TabIndex = 3;
            textBox得意先名.TabStop = false;
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
            // textBox受注Id
            // 
            textBox受注Id.Location = new Point(37, 49);
            textBox受注Id.Margin = new Padding(4);
            textBox受注Id.Name = "textBox受注Id";
            textBox受注Id.ReadOnly = true;
            textBox受注Id.Size = new Size(172, 29);
            textBox受注Id.TabIndex = 1;
            textBox受注Id.TabStop = false;
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
            Controls.Add(tabControl);
            Font = new Font("Yu Gothic UI", 12F, FontStyle.Regular, GraphicsUnit.Point, 128);
            FormBorderStyle = FormBorderStyle.None;
            Margin = new Padding(4);
            Name = "Form受注";
            Text = "Form受注";
            tabControl.ResumeLayout(false);
            tabPage受注一覧.ResumeLayout(false);
            panelTop.ResumeLayout(false);
            panelTop.PerformLayout();
            tabPage受注登録.ResumeLayout(false);
            tabPage受注登録.PerformLayout();
            ResumeLayout(false);
        }

        #endregion

        private TabControl tabControl;
        private TabPage tabPage受注一覧;
        private Panel panelTop;
        private Button button検索;
        private TabPage tabPage受注登録;
        private TextBox textBox受注Id;
        private Label label1;
        private TextBox textBox得意先名;
        private Label label2;
        private TextBox textBox合計金額;
        private Label label4;
        private TextBox textBox受注日;
        private Label label3;
        private TextBox textBox備考;
        private Label label5;
        private Button buttonキャンセル;
        private Button button保存;
        private CheckBox checkBox売上済み;
        private Button button追加;
        private Button button削除;
        private Button button得意先検索;
        private TextBox textBox得意先Id;
        private TextBox textBox検索;
        private SelectableGridView dataGridView;
        private ExcelExportButton buttonExcel;
    }
}