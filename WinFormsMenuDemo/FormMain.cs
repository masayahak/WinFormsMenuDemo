using System.Configuration;
using System.Runtime.InteropServices;
using WinFormsMenuDemo.Presenters;
using WinFormsMenuDemo.Repositories;
using WinFormsMenuDemo.Views;


namespace WinFormsMenuDemo
{
    public partial class FormMain : Form, Iテーマ適用可能
    {
        [DllImport("user32.dll")]
        public static extern bool ReleaseCapture();

        [DllImport("user32.dll")]
        public static extern IntPtr SendMessage(IntPtr hWnd, int Msg, int wParam, int lParam);

        private const int WM_NCLBUTTONDOWN = 0xA1;
        private const int HTCAPTION = 0x2;
        private const int HTBOTTOMRIGHT = 17;


        public FormMain()
        {
            InitializeComponent();

            panelTop.BackColor = Properties.Settings.Default.TopBarColor;
            panelMenu.BackColor = Properties.Settings.Default.MenuBackColor;
            SetDefaultMenuColor();

            ShowForm("Welcome", typeof(FormWelcome));
        }


        #region ================ モダンUI ========================
        // 終了ボタン
        private void buttonClose_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        // 画面最小化
        private void buttonMinScreen_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }


        // 画面最大化
        private void buttonFullScreen_Click(object sender, EventArgs e)
        {
            if (this.WindowState == FormWindowState.Maximized)
            {
                this.WindowState = FormWindowState.Normal;
            }
            else
            {
                this.WindowState = FormWindowState.Maximized;
            }
        }

        // Formドラッグ
        private void panelTop_MouseDown(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Left)
            {
                ReleaseCapture();
                SendMessage(this.Handle, WM_NCLBUTTONDOWN, HTCAPTION, 0);
            }
        }

        // フォームリサイズ
        private void pictureBoxResize_MouseDown(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Left)
            {
                ReleaseCapture();
                SendMessage(this.Handle, WM_NCLBUTTONDOWN, HTBOTTOMRIGHT, 0);
            }

        }

        #endregion ================================================

        // ------------------------------------------------
        // 位置記録
        // ------------------------------------------------
        // ロードで復元
        private void FormMain_Load(object sender, EventArgs e)
        {
            if (Properties.Settings.Default.FormSize.Width > 0 && Properties.Settings.Default.FormSize.Height > 0)
            {
                this.StartPosition = FormStartPosition.Manual;
                this.Location = Properties.Settings.Default.FormLocation;
                this.Size = Properties.Settings.Default.FormSize;
            }
        }

        private void FormMain_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (this.WindowState == FormWindowState.Normal)
            {
                Properties.Settings.Default.FormLocation = this.Location;
                Properties.Settings.Default.FormSize = this.Size;
                Properties.Settings.Default.Save();
            }
        }

        // ------------------------------------------------
        // Panel切替ロジック
        // ------------------------------------------------
        private Dictionary<string, Form> _formCache = new Dictionary<string, Form>();

        private void LoadFormToPanel(Form form)
        {
            panelMain.Controls.Clear();
            form.TopLevel = false;
            form.FormBorderStyle = FormBorderStyle.None;
            form.Dock = DockStyle.Fill;
            panelMain.Controls.Add(form);
            form.Show();
        }

        private void SetDefaultMenuColor(Control? parent = null)
        {
            if (parent == null)
                parent = this.panelMenu;

            // ボタンの色を初期化
            foreach (Control ctrl in parent.Controls)
            {
                if (ctrl is Button btn)
                {
                    btn.BackColor = Properties.Settings.Default.MenuBackColor;
                    btn.FlatAppearance.MouseOverBackColor = Properties.Settings.Default.TopBarColor;
                }

                if (ctrl.HasChildren)
                    SetDefaultMenuColor(ctrl);
            }
        }


        private void ShowForm(string key, Type formType)
        {

            if (!_formCache.TryGetValue(key, out var form) || form.IsDisposed)
            {
                if (formType == typeof(Form受注))
                {
                    IForm受注View view = new Form受注();
                    string sqlConnectionString = ConfigurationManager.ConnectionStrings["sqlConnectionString"].ConnectionString;
                    I受注Repository repository = new 受注Repository(sqlConnectionString);
                    new 受注Presenter(view, repository);

                    form = (Form)view;
                }
                else if (formType == typeof(Form得意先))
                {
                    IForm得意先View view = new Form得意先();
                    string sqlConnectionString = ConfigurationManager.ConnectionStrings["sqlConnectionString"].ConnectionString;
                    I得意先Repository repository = new 得意先Repository(sqlConnectionString);
                    new 得意先Presenter(view, repository);

                    form = (Form)view;
                }
                else if (formType == typeof(Form設定))
                {
                    IForm設定View view = new Form設定();
                    view.ThemeChanged += (_, _) =>
                    {
                        ApplyTheme(); // 現在の Properties.Settings から反映
                    };
                    form = (Form)view;
                }
                else
                {
                    var requested = Activator.CreateInstance(formType);
                    if (requested is not Form)
                        throw new InvalidOperationException($"{formType.Name} のインスタンスを生成できません。");

                    form = (Form)requested;
                }

                _formCache[key] = form;
            }
            LoadFormToPanel(form);
        }

        // 設定（テーマ）変更時
        public void ApplyTheme()
        {
            this.panelTop.BackColor = Properties.Settings.Default.TopBarColor;
            this.panelMenu.BackColor = Properties.Settings.Default.MenuBackColor;

            // メニュー色の再適用
            SetDefaultMenuColor();

            // キャッシュ内フォームすべてに通知
            foreach (var form in _formCache.Values)
            {
                if (form is Iテーマ適用可能 target)
                {
                    target.ApplyTheme();
                }
            }
        }

        private void button受注_Click(object sender, EventArgs e)
        {
            SetDefaultMenuColor();
            button受注.BackColor = Properties.Settings.Default.TopBarColor;

            ShowForm("受注", typeof(Form受注));
        }

        private void buttonマスター_Click(object sender, EventArgs e)
        {
            if (panelマスター.Visible)
            {
                panelマスター.Visible = false;
            }
            else
            {
                panelマスター.Visible = true;
            }
        }

        private void button得意先_Click(object sender, EventArgs e)
        {
            SetDefaultMenuColor();
            button得意先.BackColor = Properties.Settings.Default.TopBarColor;

            ShowForm("得意先", typeof(Form得意先));
        }

        private void button製品_Click(object sender, EventArgs e)
        {
            SetDefaultMenuColor();
            button製品.BackColor = Properties.Settings.Default.TopBarColor;

            ShowForm("製品", typeof(Form製品));
        }

        private void button設定_Click(object sender, EventArgs e)
        {
            SetDefaultMenuColor();
            button設定.BackColor = Properties.Settings.Default.TopBarColor;

            ShowForm("設定", typeof(Form設定));
        }

        private void buttonログアウト_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}
