using System.Configuration;
using WinFormsMenuDemo.Presenters;
using WinFormsMenuDemo.Repositories;


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

        private void LoadFormToPanel(Form form)
        {
            PanelMain.Controls.Clear();
            form.TopLevel = false;
            form.FormBorderStyle = FormBorderStyle.None;
            form.Dock = DockStyle.Fill;
            PanelMain.Controls.Add(form);
            form.Show();
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

        private void ShowForm(string key, Type formType)
        {
            if (!_formCache.TryGetValue(key, out var form) || form.IsDisposed)
            {
                form = CreateFormInstance(formType);
                _formCache[key] = form;
            }
            LoadFormToPanel(form);
        }

        private Form CreateFormInstance(Type formType)
        {
            if (formType == typeof(Form受注))
            {
                IForm受注View view = new Form受注();
                string sqlConnectionString = ConfigurationManager.ConnectionStrings["sqlConnectionString"].ConnectionString;
                I受注Repository repository = new 受注Repository(sqlConnectionString);
                new 受注Presenter(view, repository);
                return (Form)view;
            }

            if (formType == typeof(Form得意先))
            {
                IForm得意先View view = new Form得意先();
                string sqlConnectionString = ConfigurationManager.ConnectionStrings["sqlConnectionString"].ConnectionString;
                I得意先Repository repository = new 得意先Repository(sqlConnectionString);
                new 得意先Presenter(view, repository);
                return (Form)view;
            }

            if (formType == typeof(Form障害ログ))
            {
                IForm障害ログView view = new Form障害ログ();
                string sqlConnectionString = ConfigurationManager.ConnectionStrings["sqlConnectionString"].ConnectionString;
                I障害ログRepository repository = new 障害ログRepository(sqlConnectionString);
                new 障害ログPresenter(view, repository);
                return (Form)view;
            }

            if (formType == typeof(Form設定))
            {
                IForm設定View view = new Form設定();
                view.ThemeChanged += (_, _) =>
                {
                    ApplyTheme();
                };
                return (Form)view;
            }

            var requested = Activator.CreateInstance(formType);
            if (requested is not Form f)
                throw new InvalidOperationException($"{formType.Name} のインスタンスを生成できません。");

            return f;
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

        private void Btnログアウト_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

    }
}
