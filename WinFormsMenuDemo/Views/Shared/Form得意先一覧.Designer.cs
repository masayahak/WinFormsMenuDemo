using WinFormsMenuDemo.Controls;

namespace WinFormsMenuDemo.Forms.Shared
{
    partial class Form得意先一覧
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
            panelSearch = new Panel();
            button検索 = new Button();
            textBox検索 = new TextBox();
            panelBottom = new Panel();
            buttonキャンセル = new Button();
            button決定 = new Button();
            dataGridView = new SelectableGridView();
            panelSearch.SuspendLayout();
            panelBottom.SuspendLayout();
            SuspendLayout();
            // 
            // panelSearch
            // 
            panelSearch.BackColor = Color.WhiteSmoke;
            panelSearch.Controls.Add(button検索);
            panelSearch.Controls.Add(textBox検索);
            panelSearch.Dock = DockStyle.Top;
            panelSearch.Location = new Point(0, 0);
            panelSearch.Margin = new Padding(4);
            panelSearch.Name = "panelSearch";
            panelSearch.Size = new Size(784, 50);
            panelSearch.TabIndex = 3;
            // 
            // button検索
            // 
            button検索.BackColor = Color.LightBlue;
            button検索.FlatAppearance.BorderSize = 0;
            button検索.FlatStyle = FlatStyle.Flat;
            button検索.Font = new Font("Yu Gothic UI", 12F);
            button検索.Location = new Point(499, 13);
            button検索.Margin = new Padding(4);
            button検索.Name = "button検索";
            button検索.Size = new Size(73, 30);
            button検索.TabIndex = 1;
            button検索.Text = "検索";
            button検索.UseVisualStyleBackColor = false;
            // 
            // textBox検索
            // 
            textBox検索.Font = new Font("Yu Gothic UI", 12F);
            textBox検索.Location = new Point(5, 13);
            textBox検索.Margin = new Padding(4);
            textBox検索.Name = "textBox検索";
            textBox検索.PlaceholderText = "得意先Id(数値)   または  得意先名の一部を入力";
            textBox検索.Size = new Size(484, 29);
            textBox検索.TabIndex = 2;
            // 
            // panelBottom
            // 
            panelBottom.Controls.Add(buttonキャンセル);
            panelBottom.Controls.Add(button決定);
            panelBottom.Dock = DockStyle.Bottom;
            panelBottom.Location = new Point(0, 491);
            panelBottom.Margin = new Padding(4);
            panelBottom.Name = "panelBottom";
            panelBottom.Size = new Size(784, 70);
            panelBottom.TabIndex = 4;
            // 
            // buttonキャンセル
            // 
            buttonキャンセル.Anchor = AnchorStyles.Bottom | AnchorStyles.Right;
            buttonキャンセル.BackColor = Color.Gray;
            buttonキャンセル.FlatAppearance.BorderSize = 0;
            buttonキャンセル.FlatStyle = FlatStyle.Flat;
            buttonキャンセル.Font = new Font("Yu Gothic UI", 12F);
            buttonキャンセル.ForeColor = Color.White;
            buttonキャンセル.Location = new Point(600, 14);
            buttonキャンセル.Margin = new Padding(4);
            buttonキャンセル.Name = "buttonキャンセル";
            buttonキャンセル.Size = new Size(120, 40);
            buttonキャンセル.TabIndex = 13;
            buttonキャンセル.Text = "キャンセル";
            buttonキャンセル.UseVisualStyleBackColor = false;
            // 
            // button決定
            // 
            button決定.Anchor = AnchorStyles.Bottom | AnchorStyles.Right;
            button決定.BackColor = Color.Green;
            button決定.FlatAppearance.BorderSize = 0;
            button決定.FlatStyle = FlatStyle.Flat;
            button決定.Font = new Font("Yu Gothic UI", 12F);
            button決定.ForeColor = Color.White;
            button決定.Location = new Point(379, 11);
            button決定.Margin = new Padding(4);
            button決定.Name = "button決定";
            button決定.Size = new Size(120, 40);
            button決定.TabIndex = 12;
            button決定.Text = "決定";
            button決定.UseVisualStyleBackColor = false;
            // 
            // dataGridView
            // 
            dataGridView.BarGraphColumnName = null;
            dataGridView.DataSource = null;
            dataGridView.Dock = DockStyle.Fill;
            dataGridView.Location = new Point(0, 50);
            dataGridView.Name = "dataGridView";
            dataGridView.Size = new Size(784, 441);
            dataGridView.TabIndex = 5;
            // 
            // Form得意先一覧
            // 
            AutoScaleDimensions = new SizeF(9F, 21F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(784, 561);
            ControlBox = false;
            Controls.Add(dataGridView);
            Controls.Add(panelBottom);
            Controls.Add(panelSearch);
            Font = new Font("Yu Gothic UI", 12F, FontStyle.Regular, GraphicsUnit.Point, 128);
            Margin = new Padding(4);
            MaximizeBox = false;
            MinimizeBox = false;
            Name = "Form得意先一覧";
            Text = "得意先一覧";
            panelSearch.ResumeLayout(false);
            panelSearch.PerformLayout();
            panelBottom.ResumeLayout(false);
            ResumeLayout(false);
        }

        #endregion

        private Panel panelSearch;
        private Button button検索;
        private TextBox textBox検索;
        private Panel panelBottom;
        private Button buttonキャンセル;
        private Button button決定;
        private SelectableGridView dataGridView;
    }
}