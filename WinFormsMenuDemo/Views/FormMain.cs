using WinFormsMenuDemo.Views.Common;

namespace WinFormsMenuDemo.Views
{
    public partial class FormMain : Form, I�e�[�}�K�p�\
    {
        public FormMain()
        {
            InitializeComponent();
            ApplyTheme();

            // ���j���[�̏�����
            ShowForm("Welcome", typeof(FormWelcome));
        }

        // �qForm���烁�b�Z�[�W�󂯎��p
        public string Message
        {
            get => PanelBottom.MessageText;
            set
            {
                PanelBottom.MessageText = value;
            }
        }

        // ------------------------------------------------
        // �ݒ�i�e�[�}�j�ύX��
        // ------------------------------------------------
        public void ApplyTheme()
        {
            this.PanelTop.BackColor = Properties.Settings.Default.TopBarColor;
            this.PanelMenu.BackColor = Properties.Settings.Default.MenuBackColor;

            // ���j���[�F�̍ēK�p
            SetDefaultMenuColor();

            // �L���b�V�����t�H�[�����ׂĂɒʒm
            foreach (var form in _formCache.Values)
            {
                if (form is I�e�[�}�K�p�\ target)
                {
                    target.ApplyTheme();
                }
            }
        }

        // ------------------------------------------------
        // �ʒu�L�^
        // ------------------------------------------------
        // ���[�h�ŕ���
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
        // Panel�ؑփ��W�b�N
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

            // �{�^���̐F��������
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

        private void Btn��_Click(object sender, EventArgs e)
        {
            SetDefaultMenuColor();
            Btn��.BackColor = Properties.Settings.Default.TopBarColor;

            ShowForm("��", typeof(Form��));
        }

        private void Btn�}�X�^�[_Click(object sender, EventArgs e)
        {
            if (Panel�}�X�^�[.Visible)
            {
                Panel�}�X�^�[.Visible = false;
            }
            else
            {
                Panel�}�X�^�[.Visible = true;
            }
        }

        private void Btn���Ӑ�_Click(object sender, EventArgs e)
        {
            SetDefaultMenuColor();
            Btn���Ӑ�.BackColor = Properties.Settings.Default.TopBarColor;

            ShowForm("���Ӑ�", typeof(Form���Ӑ�));
        }

        private void Btn���i_Click(object sender, EventArgs e)
        {
            SetDefaultMenuColor();
            Btn���i.BackColor = Properties.Settings.Default.TopBarColor;

            ShowForm("���i", typeof(Form���i));
        }

        private void Btn�ݒ�_Click(object sender, EventArgs e)
        {
            SetDefaultMenuColor();
            Btn�ݒ�.BackColor = Properties.Settings.Default.TopBarColor;

            ShowForm("�ݒ�", typeof(Form�ݒ�));
        }

        private void Btn��Q���O_Click(object sender, EventArgs e)
        {
            SetDefaultMenuColor();
            Btn��Q���O.BackColor = Properties.Settings.Default.TopBarColor;

            ShowForm("��Q���O", typeof(Form��Q���O));
        }

        private void Btn�I��_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}
