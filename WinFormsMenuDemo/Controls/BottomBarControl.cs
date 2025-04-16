using System.ComponentModel;
using System.Runtime.InteropServices;

namespace WinFormsMenuDemo.Controls
{
    public partial class BottomBarControl : UserControl
    {
        [LibraryImport("user32.dll", EntryPoint = "ReleaseCapture")]
        private static partial void ReleaseCapture();

        [LibraryImport("user32.dll", EntryPoint = "SendMessage", StringMarshalling = StringMarshalling.Utf16)]
        private static partial IntPtr SendMessage(IntPtr hWnd, int msg, int wParam, int lParam);

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
