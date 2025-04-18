using WinFormsMenuDemo.Views.Common;

namespace WinFormsMenuDemo.Views
{
    public partial class FormMain : Form, Iテーマ適用可能
    {
        public FormMain()
        {
            InitializeComponent();
            ApplyTheme();

            // メニューの初期化
            ShowForm("Welcome", typeof(FormWelcome));
        }

        // 子Formからメッセージ受け取り用
        public string Message
        {
            get => PanelBottom.MessageText;
            set
            {
                PanelBottom.MessageText = value;
            }
        }

        // ------------------------------------------------
        // 設定（テーマ）変更時
        // ------------------------------------------------
        public void ApplyTheme()
        {
            this.PanelTop.BackColor = Properties.Settings.Default.TopBarColor;
            this.PanelMenu.BackColor = Properties.Settings.Default.MenuBackColor;

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
        private readonly Dictionary<string, Form> _formCache = new();

        private void ShowForm(string key, Type formType)
        {
            if (!_formCache.TryGetValue(key, out var form) || form.IsDisposed)
            {
                form = CreateFormInstance(formType);
                _formCache[key] = form;
            }
            LoadFormToPanel(form);
        }

        private void LoadFormToPanel(Form form)
        {
            PanelMain.Controls.Clear();
            form.TopLevel = false;
            form.FormBorderStyle = FormBorderStyle.None;
            form.Dock = DockStyle.Fill;
            PanelMain.Controls.Add(form);
            form.Show();
        }

        private Form CreateFormInstance(Type formType)
        {
            return FormFactory.Create(formType, onThemeChanged: ApplyTheme);
        }

        private void SetDefaultMenuColor(Control? parent = null)
        {
            parent ??= this.PanelMenu;

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

        private void Btn受注_Click(object sender, EventArgs e)
        {
            SetDefaultMenuColor();
            Btn受注.BackColor = Properties.Settings.Default.TopBarColor;

            ShowForm("受注", typeof(Form受注));
        }

        private void Btnマスター_Click(object sender, EventArgs e)
        {
            if (Panelマスター.Visible)
            {
                Panelマスター.Visible = false;
            }
            else
            {
                Panelマスター.Visible = true;
            }
        }

        private void Btn得意先_Click(object sender, EventArgs e)
        {
            SetDefaultMenuColor();
            Btn得意先.BackColor = Properties.Settings.Default.TopBarColor;

            ShowForm("得意先", typeof(Form得意先));
        }

        private void Btn製品_Click(object sender, EventArgs e)
        {
            SetDefaultMenuColor();
            Btn製品.BackColor = Properties.Settings.Default.TopBarColor;

            ShowForm("製品", typeof(Form製品));
        }

        private void Btn設定_Click(object sender, EventArgs e)
        {
            SetDefaultMenuColor();
            Btn設定.BackColor = Properties.Settings.Default.TopBarColor;

            ShowForm("設定", typeof(Form設定));
        }

        private void Btn障害ログ_Click(object sender, EventArgs e)
        {
            SetDefaultMenuColor();
            Btn障害ログ.BackColor = Properties.Settings.Default.TopBarColor;

            ShowForm("障害ログ", typeof(Form障害ログ));
        }

        private void Btn終了_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}
