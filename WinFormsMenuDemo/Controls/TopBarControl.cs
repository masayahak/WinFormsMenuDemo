using System.ComponentModel;
using System.Runtime.InteropServices;

namespace WinFormsMenuDemo.Controls
{
    public partial class TopBarControl : UserControl, Iテーマ適用可能
    {
        public TopBarControl()
        {
            InitializeComponent();
            this.MouseDown += TopBar_MouseDown;
            this.Layout += TopBarControl_Layout;
        }

        // ================ プロパティ ========================
        [Browsable(true)]
        [Category("表示")]
        [Description("タイトルバーに表示するアプリ名")]
        public string Title
        {
            get => lblTitle.Text;
            set => lblTitle.Text = value;
        }

        [Browsable(true)]
        [Category("外観")]
        [Description("トップバーの背景色")]
        public Color BarBackColor
        {
            get => base.BackColor;
            set => ApplyThemeColor(value);
        }

        [Browsable(true)]
        [Category("表示")]
        [Description("最小化ボタンを表示するかどうか")]
        public bool ShowMinimizeButton
        {
            get => btnMin.Visible;
            set => btnMin.Visible = value;
        }

        [Browsable(true)]
        [Category("表示")]
        [Description("最大化ボタンを表示するかどうか")]
        public bool ShowMaximizeButton
        {
            get => btnMax.Visible;
            set => btnMax.Visible = value;
        }

        [Browsable(true)]
        [Category("表示")]
        [Description("閉じるボタンを表示するかどうか")]
        public bool ShowCloseButton
        {
            get => btnClose.Visible;
            set => btnClose.Visible = value;
        }

        // ================ テーマ適用 ========================
        public void ApplyTheme()
        {
            ApplyThemeColor(Properties.Settings.Default.TopBarColor);
        }

        private void ApplyThemeColor(Color color)
        {
            this.BackColor = color;
            lblTitle.BackColor = color;
            btnMin.BackColor = color;
            btnMax.BackColor = color;
            btnClose.BackColor = color;
        }

        private void TopBarControl_Layout(object? sender, EventArgs e)
        {
            int buttonWidth = 30;
            int spacing = 5;
            int right = this.Width;

            if (btnClose.Visible)
            {
                right -= spacing;
                btnClose.Location = new Point(right - buttonWidth, 0);
                btnClose.BringToFront();
                right -= buttonWidth + spacing;
            }

            if (btnMax.Visible)
            {
                btnMax.Location = new Point(right - buttonWidth, 0);
                btnMax.BringToFront();
                right -= buttonWidth + spacing;
            }

            if (btnMin.Visible)
            {
                btnMin.Location = new Point(right - buttonWidth, 0);
                btnMin.BringToFront();
                right -= buttonWidth + spacing;
            }
        }

        // ================ イベント ========================
        private void TopBar_MouseDown(object? sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Left)
            {
                ReleaseCapture();
                SendMessage(this.FindForm()!.Handle, WM_NCLBUTTONDOWN, HTCAPTION, 0);
            }
        }

        [DllImport("user32.dll")] private static extern bool ReleaseCapture();
        [DllImport("user32.dll")] private static extern IntPtr SendMessage(IntPtr hWnd, int msg, int wParam, int lParam);

        private const int WM_NCLBUTTONDOWN = 0xA1;
        private const int HTCAPTION = 0x2;


        private void btnMin_Click(object sender, EventArgs e)
        {
            var form = this.FindForm();
            if (form != null)
            {
                form.WindowState = FormWindowState.Minimized;
            }
        }

        private void btnMax_Click(object sender, EventArgs e)
        {
            var form = this.FindForm();
            if (form != null)
            {
                form.WindowState = (form.WindowState == FormWindowState.Maximized)
                    ? FormWindowState.Normal
                    : FormWindowState.Maximized;
            }
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            var form = this.FindForm();
            if (form != null)
            {
                form.Close();
            }
        }
    }
}
