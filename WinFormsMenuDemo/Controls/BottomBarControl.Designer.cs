namespace WinFormsMenuDemo.Controls
{
    partial class BottomBarControl
    {
        private Label labelMessage;
        private PictureBox pictureBoxResize;

        private void InitializeComponent()
        {
            labelMessage = new Label();
            pictureBoxResize = new PictureBox();
            ((System.ComponentModel.ISupportInitialize)pictureBoxResize).BeginInit();
            SuspendLayout();
            // 
            // labelMessage
            // 
            labelMessage.AutoSize = true;
            labelMessage.ForeColor = Color.White;
            labelMessage.Location = new Point(20, 2);
            labelMessage.Name = "labelMessage";
            labelMessage.Size = new Size(51, 15);
            labelMessage.TabIndex = 0;
            labelMessage.Text = "メッセージ";
            // 
            // pictureBoxResize
            // 
            pictureBoxResize.Cursor = Cursors.SizeNWSE;
            pictureBoxResize.Dock = DockStyle.Right;
            pictureBoxResize.Image = Properties.Resources.resize;
            pictureBoxResize.Location = new Point(1373, 0);
            pictureBoxResize.Name = "pictureBoxResize";
            pictureBoxResize.Size = new Size(26, 25);
            pictureBoxResize.SizeMode = PictureBoxSizeMode.StretchImage;
            pictureBoxResize.TabIndex = 1;
            pictureBoxResize.TabStop = false;
            // 
            // BottomBarControl
            // 
            BackColor = Color.Gray;
            Controls.Add(labelMessage);
            Controls.Add(pictureBoxResize);
            Name = "BottomBarControl";
            Size = new Size(1399, 25);
            ((System.ComponentModel.ISupportInitialize)pictureBoxResize).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }
    }
}
