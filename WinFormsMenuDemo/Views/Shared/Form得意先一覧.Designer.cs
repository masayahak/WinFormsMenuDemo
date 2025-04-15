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
            PanelSearch = new Panel();
            Btn検索 = new Button();
            TextBox検索 = new TextBox();
            PanelBottom = new Panel();
            Btnキャンセル = new Button();
            Btn決定 = new Button();
            dataGridView = new SelectableGridView();
            PanelSearch.SuspendLayout();
            PanelBottom.SuspendLayout();
            SuspendLayout();
            // 
            // panelSearch
            // 
            PanelSearch.BackColor = Color.WhiteSmoke;
            PanelSearch.Controls.Add(Btn検索);
            PanelSearch.Controls.Add(TextBox検索);
            PanelSearch.Dock = DockStyle.Top;
            PanelSearch.Location = new Point(0, 0);
            PanelSearch.Margin = new Padding(4);
            PanelSearch.Name = "panelSearch";
            PanelSearch.Size = new Size(784, 50);
            PanelSearch.TabIndex = 3;
            // 
            // button検索
            // 
            Btn検索.BackColor = Color.LightBlue;
            Btn検索.FlatAppearance.BorderSize = 0;
            Btn検索.FlatStyle = FlatStyle.Flat;
            Btn検索.Font = new Font("Yu Gothic UI", 12F);
            Btn検索.Location = new Point(499, 13);
            Btn検索.Margin = new Padding(4);
            Btn検索.Name = "button検索";
            Btn検索.Size = new Size(73, 30);
            Btn検索.TabIndex = 1;
            Btn検索.Text = "検索";
            Btn検索.UseVisualStyleBackColor = false;
            // 
            // textBox検索
            // 
            TextBox検索.Font = new Font("Yu Gothic UI", 12F);
            TextBox検索.Location = new Point(5, 13);
            TextBox検索.Margin = new Padding(4);
            TextBox検索.Name = "textBox検索";
            TextBox検索.PlaceholderText = "得意先Id(数値)   または  得意先名の一部を入力";
            TextBox検索.Size = new Size(484, 29);
            TextBox検索.TabIndex = 2;
            // 
            // panelBottom
            // 
            PanelBottom.Controls.Add(Btnキャンセル);
            PanelBottom.Controls.Add(Btn決定);
            PanelBottom.Dock = DockStyle.Bottom;
            PanelBottom.Location = new Point(0, 491);
            PanelBottom.Margin = new Padding(4);
            PanelBottom.Name = "panelBottom";
            PanelBottom.Size = new Size(784, 70);
            PanelBottom.TabIndex = 4;
            // 
            // buttonキャンセル
            // 
            Btnキャンセル.Anchor = AnchorStyles.Bottom | AnchorStyles.Right;
            Btnキャンセル.BackColor = Color.Gray;
            Btnキャンセル.FlatAppearance.BorderSize = 0;
            Btnキャンセル.FlatStyle = FlatStyle.Flat;
            Btnキャンセル.Font = new Font("Yu Gothic UI", 12F);
            Btnキャンセル.ForeColor = Color.White;
            Btnキャンセル.Location = new Point(600, 14);
            Btnキャンセル.Margin = new Padding(4);
            Btnキャンセル.Name = "buttonキャンセル";
            Btnキャンセル.Size = new Size(120, 40);
            Btnキャンセル.TabIndex = 13;
            Btnキャンセル.Text = "キャンセル";
            Btnキャンセル.UseVisualStyleBackColor = false;
            // 
            // button決定
            // 
            Btn決定.Anchor = AnchorStyles.Bottom | AnchorStyles.Right;
            Btn決定.BackColor = Color.Green;
            Btn決定.FlatAppearance.BorderSize = 0;
            Btn決定.FlatStyle = FlatStyle.Flat;
            Btn決定.Font = new Font("Yu Gothic UI", 12F);
            Btn決定.ForeColor = Color.White;
            Btn決定.Location = new Point(379, 11);
            Btn決定.Margin = new Padding(4);
            Btn決定.Name = "button決定";
            Btn決定.Size = new Size(120, 40);
            Btn決定.TabIndex = 12;
            Btn決定.Text = "決定";
            Btn決定.UseVisualStyleBackColor = false;
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
            Controls.Add(PanelBottom);
            Controls.Add(PanelSearch);
            Font = new Font("Yu Gothic UI", 12F, FontStyle.Regular, GraphicsUnit.Point, 128);
            Margin = new Padding(4);
            MaximizeBox = false;
            MinimizeBox = false;
            Name = "Form得意先一覧";
            Text = "得意先一覧";
            PanelSearch.ResumeLayout(false);
            PanelSearch.PerformLayout();
            PanelBottom.ResumeLayout(false);
            ResumeLayout(false);
        }

        #endregion

        private Panel PanelSearch;
        private Button Btn検索;
        private TextBox TextBox検索;
        private Panel PanelBottom;
        private Button Btnキャンセル;
        private Button Btn決定;
        private SelectableGridView dataGridView;
    }
}