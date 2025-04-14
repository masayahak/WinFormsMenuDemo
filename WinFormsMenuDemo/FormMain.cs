using System.Configuration;
using System.Runtime.InteropServices;
using WinFormsMenuDemo.Presenters;
using WinFormsMenuDemo.Repositories;
using WinFormsMenuDemo.Views;


namespace WinFormsMenuDemo
{
    public partial class FormMain : Form, I�e�[�}�K�p�\
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


        #region ================ ���_��UI ========================
        // �I���{�^��
        private void buttonClose_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        // ��ʍŏ���
        private void buttonMinScreen_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }


        // ��ʍő剻
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

        // Form�h���b�O
        private void panelTop_MouseDown(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Left)
            {
                ReleaseCapture();
                SendMessage(this.Handle, WM_NCLBUTTONDOWN, HTCAPTION, 0);
            }
        }

        // �t�H�[�����T�C�Y
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


        private void ShowForm(string key, Type formType)
        {

            if (!_formCache.TryGetValue(key, out var form) || form.IsDisposed)
            {
                if (formType == typeof(Form��))
                {
                    IForm��View view = new Form��();
                    string sqlConnectionString = ConfigurationManager.ConnectionStrings["sqlConnectionString"].ConnectionString;
                    I��Repository repository = new ��Repository(sqlConnectionString);
                    new ��Presenter(view, repository);

                    form = (Form)view;
                }
                else if (formType == typeof(Form���Ӑ�))
                {
                    IForm���Ӑ�View view = new Form���Ӑ�();
                    string sqlConnectionString = ConfigurationManager.ConnectionStrings["sqlConnectionString"].ConnectionString;
                    I���Ӑ�Repository repository = new ���Ӑ�Repository(sqlConnectionString);
                    new ���Ӑ�Presenter(view, repository);

                    form = (Form)view;
                }
                else if (formType == typeof(Form�ݒ�))
                {
                    IForm�ݒ�View view = new Form�ݒ�();
                    view.ThemeChanged += (_, _) =>
                    {
                        ApplyTheme(); // ���݂� Properties.Settings ���甽�f
                    };
                    form = (Form)view;
                }
                else
                {
                    var requested = Activator.CreateInstance(formType);
                    if (requested is not Form)
                        throw new InvalidOperationException($"{formType.Name} �̃C���X�^���X�𐶐��ł��܂���B");

                    form = (Form)requested;
                }

                _formCache[key] = form;
            }
            LoadFormToPanel(form);
        }

        // �ݒ�i�e�[�}�j�ύX��
        public void ApplyTheme()
        {
            this.panelTop.BackColor = Properties.Settings.Default.TopBarColor;
            this.panelMenu.BackColor = Properties.Settings.Default.MenuBackColor;

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

        private void button��_Click(object sender, EventArgs e)
        {
            SetDefaultMenuColor();
            button��.BackColor = Properties.Settings.Default.TopBarColor;

            ShowForm("��", typeof(Form��));
        }

        private void button�}�X�^�[_Click(object sender, EventArgs e)
        {
            if (panel�}�X�^�[.Visible)
            {
                panel�}�X�^�[.Visible = false;
            }
            else
            {
                panel�}�X�^�[.Visible = true;
            }
        }

        private void button���Ӑ�_Click(object sender, EventArgs e)
        {
            SetDefaultMenuColor();
            button���Ӑ�.BackColor = Properties.Settings.Default.TopBarColor;

            ShowForm("���Ӑ�", typeof(Form���Ӑ�));
        }

        private void button���i_Click(object sender, EventArgs e)
        {
            SetDefaultMenuColor();
            button���i.BackColor = Properties.Settings.Default.TopBarColor;

            ShowForm("���i", typeof(Form���i));
        }

        private void button�ݒ�_Click(object sender, EventArgs e)
        {
            SetDefaultMenuColor();
            button�ݒ�.BackColor = Properties.Settings.Default.TopBarColor;

            ShowForm("�ݒ�", typeof(Form�ݒ�));
        }

        private void button���O�A�E�g_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}
