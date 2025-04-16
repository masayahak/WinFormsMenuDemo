using System.ComponentModel;
using System.Runtime.InteropServices;

namespace WinFormsMenuDemo.Controls
{
    public partial class BottomBarControl : UserControl
    {
        [DllImport("user32.dll", CharSet = CharSet.Auto)]
        private static extern IntPtr SendMessage(IntPtr hWnd, int msg, int wParam, int lParam);

        [DllImport("user32.dll")]
        private static extern bool ReleaseCapture();

        private const int WM_NCLBUTTONDOWN = 0xA1;
        private const int HTBOTTOMRIGHT = 17;

        public BottomBarControl()
        {
            InitializeComponent();
            PictureBoxResize.MouseDown += PictureBoxResize_MouseDown;
        }

        [Browsable(true)]
        [Category("表示")]
        [Description("メッセージ表示用テキスト")]
        public string MessageText
        {
            get => LabelMessage.Text;
            set
            {
                if (string.IsNullOrEmpty(value))
                {
                    LabelMessage.Text = string.Empty;
                    return;
                }
                var timePrefix = DateTime.Now.ToString("HH:mm");
                LabelMessage.Text = $"{timePrefix} {value}";
            }
        }

        private void PictureBoxResize_MouseDown(object? sender, MouseEventArgs e)
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
    }
}
