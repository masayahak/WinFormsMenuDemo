using System.ComponentModel;
using System.Runtime.InteropServices;

namespace WinFormsMenuDemo.Controls
{
    public partial class BottomBarControl : UserControl
    {
        public BottomBarControl()
        {
            InitializeComponent();
            pictureBoxResize.MouseDown += pictureBoxResize_MouseDown;
        }

        [Browsable(true)]
        [Category("表示")]
        [Description("メッセージ表示用テキスト")]
        public string MessageText
        {
            get => labelMessage.Text;
            set
            {
                var timePrefix = DateTime.Now.ToString("HH:mm");
                labelMessage.Text = $"{timePrefix} {value}";
            }
        }

        private void pictureBoxResize_MouseDown(object? sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Left)
            {
                ReleaseCapture();
                var form = this.FindForm();
                if (form != null)
                {
                    SendMessage(form.Handle, WM_NCLBUTTONDOWN, HTBOTTOMRIGHT, 0);
                }
            }
        }

        [DllImport("user32.dll")] private static extern bool ReleaseCapture();
        [DllImport("user32.dll")] private static extern IntPtr SendMessage(IntPtr hWnd, int msg, int wParam, int lParam);

        private const int WM_NCLBUTTONDOWN = 0xA1;
        private const int HTBOTTOMRIGHT = 17;
    }
}
