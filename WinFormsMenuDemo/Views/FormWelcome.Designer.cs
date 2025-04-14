namespace WinFormsMenuDemo.Views
{
    partial class FormWelcome
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
            label1 = new Label();
            SuspendLayout();
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new Font("Yu Gothic UI", 36F, FontStyle.Regular, GraphicsUnit.Point, 128);
            label1.Location = new Point(536, 312);
            label1.Name = "label1";
            label1.Size = new Size(224, 65);
            label1.TabIndex = 0;
            label1.Text = "Welcome";
            // 
            // FormWelcome
            // 
            AutoScaleDimensions = new SizeF(7F, 15F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.FromArgb(224, 224, 224);
            ClientSize = new Size(1200, 745);
            Controls.Add(label1);
            FormBorderStyle = FormBorderStyle.None;
            Name = "FormWelcome";
            Text = "FormWelcome";
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private Label label1;
    }
}