namespace WinFormsMenuDemo.Controls
{
    partial class BottomBarControl
    {
        private Label LabelMessage;
        private PictureBox PictureBoxResize;

        private void InitializeComponent()
        {
            LabelMessage = new Label();
            PictureBoxResize = new PictureBox();
            ((System.ComponentModel.ISupportInitialize)PictureBoxResize).BeginInit();
            SuspendLayout();
            // 
            // labelMessage
            // 
            LabelMessage.AutoSize = true;
            LabelMessage.ForeColor = Color.White;
            LabelMessage.Location = new Point(20, 2);
            LabelMessage.Name = "labelMessage";
            LabelMessage.Size = new Size(51, 15);
            LabelMessage.TabIndex = 0;
            LabelMessage.Text = "メッセージ";
            // 
            // pictureBoxResize
            // 
            PictureBoxResize.Cursor = Cursors.SizeNWSE;
            PictureBoxResize.Dock = DockStyle.Right;
            PictureBoxResize.Image = Properties.Resources.resize;
            PictureBoxResize.Location = new Point(1373, 0);
            PictureBoxResize.Name = "pictureBoxResize";
            PictureBoxResize.Size = new Size(26, 25);
            PictureBoxResize.SizeMode = PictureBoxSizeMode.StretchImage;
            PictureBoxResize.TabIndex = 1;
            PictureBoxResize.TabStop = false;
            // 
            // BottomBarControl
            // 
            BackColor = Color.Gray;
            Controls.Add(LabelMessage);
            Controls.Add(PictureBoxResize);
            Name = "BottomBarControl";
            Size = new Size(1399, 25);
            ((System.ComponentModel.ISupportInitialize)PictureBoxResize).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }
    }
}
