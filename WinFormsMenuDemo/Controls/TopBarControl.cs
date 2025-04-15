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
            get => LblTitle.Text;
            set => LblTitle.Text = value;
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
            get => BtnMin.Visible;
            set => BtnMin.Visible = value;
        }

        [Browsable(true)]
        [Category("表示")]
        [Description("最大化ボタンを表示するかどうか")]
        public bool ShowMaximizeButton
        {
            get => BtnMax.Visible;
            set => BtnMax.Visible = value;
        }

        [Browsable(true)]
        [Category("表示")]
        [Description("閉じるボタンを表示するかどうか")]
        public bool ShowCloseButton
        {
            get => BtnClose.Visible;
            set => BtnClose.Visible = value;
        }

        // ================ テーマ適用 ========================
        public void ApplyTheme()
        {
            ApplyThemeColor(Properties.Settings.Default.TopBarColor);
        }

        private void ApplyThemeColor(Color color)
        {
            this.BackColor = color;
            LblTitle.BackColor = color;
            BtnMin.BackColor = color;
            BtnMax.BackColor = color;
            BtnClose.BackColor = color;
        }

        private void TopBarControl_Layout(object? sender, EventArgs e)
        {
            int buttonWidth = 30;
            int spacing = 5;
            int right = this.Width;

            if (BtnClose.Visible)
            {
                right -= spacing;
                BtnClose.Location = new Point(right - buttonWidth, 0);
                BtnClose.BringToFront();
                right -= buttonWidth + spacing;
            }

            if (BtnMax.Visible)
            {
                BtnMax.Location = new Point(right - buttonWidth, 0);
                BtnMax.BringToFront();
                right -= buttonWidth + spacing;
            }

            if (BtnMin.Visible)
            {
                BtnMin.Location = new Point(right - buttonWidth, 0);
                BtnMin.BringToFront();
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

        [LibraryImport("user32.dll")]
        private static partial void ReleaseCapture();

        [LibraryImport("user32.dll")]
        private static partial IntPtr SendMessage(IntPtr hWnd, int msg, int wParam, int lParam);

        private const int WM_NCLBUTTONDOWN = 0xA1;
        private const int HTCAPTION = 0x2;


        private void BtnMin_Click(object sender, EventArgs e)
        {
            var form = this.FindForm();
            if (form != null)
            {
                form.WindowState = FormWindowState.Minimized;
            }
        }

        private void BtnMax_Click(object sender, EventArgs e)
        {
            var form = this.FindForm();
            if (form != null)
            {
                form.WindowState = (form.WindowState == FormWindowState.Maximized)
                    ? FormWindowState.Normal
                    : FormWindowState.Maximized;
            }
        }

        private void BtnClose_Click(object sender, EventArgs e)
        {
            var form = this.FindForm();
            form?.Close();
        }
    }
}
