using WinFormsMenuDemo.Controls;

namespace WinFormsMenuDemo.Views
{
    public interface IForm得意先View
    {
        // 列
        string 得意先Id { get; set; }
        string 得意先名 { get; set; }
        string 住所 { get; set; }
        string 電話番号 { get; set; }
        string メール { get; set; }
        bool Is削除済み { get; set; }
        string 備考 { get; set; }
        int Version { get; set; }

        string SearchValue { get; set; }
        bool IsEdit { get; set; }
        bool IsSuccessful { get; set; }
        string Message { get; set; }

        // イベント
        event EventHandler SearchEvent;
        event EventHandler AddNewEvent;
        event EventHandler EditEvent;
        event EventHandler DeleteEvent;
        event EventHandler SaveEvent;
        event EventHandler CancelEvent;

        // メソッド
        void Set得意先ListBindingSource(BindingSource 得意先list);
        void Show();
    }

    public partial class Form得意先 : Form, IForm得意先View, Iテーマ適用可能
    {
        private bool _isEdit;
        private bool _isSuccessful;
        private string _message = string.Empty;

        public Form得意先()
        {
            InitializeComponent();

            this.TabControl.TabPages.Remove(TabPage得意先登録);

            AssociateAndRaiseViewEvents();
        }

        // イベント
        public event EventHandler? SearchEvent;
        public event EventHandler? AddNewEvent;
        public event EventHandler? EditEvent;
        public event EventHandler? DeleteEvent;
        public event EventHandler? SaveEvent;
        public event EventHandler? CancelEvent;

        public void ApplyTheme()
        {
            // グリッド色を再適用
            DataGridView.ApplyTheme();
        }
        private void AssociateAndRaiseViewEvents()
        {
            // 検索
            this.Btn検索.Click += delegate { SearchEvent?.Invoke(this, EventArgs.Empty); };
            this.TextBox検索.KeyDown += (s, e) =>
            {
                if (e.KeyCode == Keys.Enter)
                {
                    SearchEvent?.Invoke(this, EventArgs.Empty);
                    e.SuppressKeyPress = true; // Enterキーの音を消す
                }
            };

            // 登録系 -----------------------------------------
            // 追加
            this.Btn追加.Click += delegate
            {
                AddNewEvent?.Invoke(this, EventArgs.Empty);
                this.TabControl.TabPages.Add(TabPage得意先登録);
                this.Btn削除.Visible = false;
                this.TabControl.TabPages.Remove(TabPage得意先一覧);
            };

            // 修正
            this.DataGridView.CellDoubleClick += (s, e) =>
            {
                EditEvent?.Invoke(this, EventArgs.Empty);
                this.TabControl.TabPages.Add(TabPage得意先登録);
                this.Btn削除.Visible = true;
                this.TabControl.TabPages.Remove(TabPage得意先一覧);
            };

            this.Btn保存.Click += delegate
            {
                SaveEvent?.Invoke(this, EventArgs.Empty);
                if (IsSuccessful)
                {
                    this.TabControl.TabPages.Add(TabPage得意先一覧);
                    this.TabControl.TabPages.Remove(TabPage得意先登録);
                }
                var toast = new ToastPanel();
                toast.ShowToast(Message, this);
            };
            this.Btnキャンセル.Click += delegate
            {
                CancelEvent?.Invoke(this, EventArgs.Empty);
                this.TabControl.TabPages.Add(TabPage得意先一覧);
                this.TabControl.TabPages.Remove(TabPage得意先登録);
            };
            this.Btn削除.Click += delegate
            {
                var result = MessageBox.Show("削除します。", "警告",
                    MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
                if (result == DialogResult.Yes)
                {
                    DeleteEvent?.Invoke(this, EventArgs.Empty);
                    var toast = new ToastPanel();
                    toast.ShowToast(Message, this);
                    this.TabControl.TabPages.Add(TabPage得意先一覧);
                    this.TabControl.TabPages.Remove(TabPage得意先登録);
                }
            };
        }

        // プロパティ
        public string 得意先Id
        {
            get => TextBox得意先Id.Text;
            set => TextBox得意先Id.Text = value;
        }

        public string 得意先名
        {
            get => TextBox得意先名.Text;
            set => TextBox得意先名.Text = value;
        }

        public string 住所
        {
            get => TextBox住所.Text;
            set => TextBox住所.Text = value;
        }

        public string 電話番号
        {
            get => TextBox電話番号.Text;
            set => TextBox電話番号.Text = value;
        }

        public string メール
        {
            get => TextBoxメール.Text;
            set => TextBoxメール.Text = value;
        }

        public bool Is削除済み
        {
            get => CheckBox削除済み.Checked;
            set => CheckBox削除済み.Checked = value;
        }

        public string 備考
        {
            get => TextBox備考.Text;
            set => TextBox備考.Text = value;
        }

        private int _version = 0;
        public int Version
        {
            get => _version;
            set => _version = value;
        }

        public string SearchValue
        {
            get => TextBox検索.Text;
            set => TextBox検索.Text = value;
        }

        public bool IsEdit
        {
            get { return _isEdit; }
            set { _isEdit = value; }
        }

        public bool IsSuccessful
        {
            get { return _isSuccessful; }
            set { _isSuccessful = value; }
        }

        public string Message
        {
            get { return _message; }
            set
            {
                _message = value;
                ShowMessageToUser(value);
            }
        }

        // メッセージ表示
        private void ShowMessageToUser(string message)
        {
            this._message = message;

            // トースト表示
            var toast = new ToastPanel();
            toast.ShowToast(message, this);

            // 親フォームのボトムバーにも表示
            var parentForm = this.Parent;
            while (parentForm != null && parentForm is not FormMain)
            {
                parentForm = parentForm.Parent;
            }

            if (parentForm is FormMain main)
            {
                main.Message = message;
            }
        }

        // メソッド
        public void Set得意先ListBindingSource(BindingSource 得意先list)
        {
            カスタムDataGridView設定();
            this.DataGridView.DataSource = 得意先list;
        }

        private void カスタムDataGridView設定()
        {
            if (DataGridView is not SelectableGridView) return; // ← 型チェックして保護
            DataGridView.Columns.Clear();

            // 各列を定義して追加する
            DataGridView.Columns.Add(new DataGridViewTextBoxColumn
            {
                DataPropertyName = "得意先Id",
                HeaderText = "得意先Id",
                Width = 100,
                DefaultCellStyle = new DataGridViewCellStyle { Alignment = DataGridViewContentAlignment.MiddleCenter }
            });

            DataGridView.Columns.Add(new DataGridViewTextBoxColumn
            {
                DataPropertyName = "得意先名",
                HeaderText = "得意先名",
                Width = 300
            });

            DataGridView.Columns.Add(new DataGridViewTextBoxColumn
            {
                DataPropertyName = "住所",
                HeaderText = "住所",
                Width = 150
            });

            DataGridView.Columns.Add(new DataGridViewTextBoxColumn
            {
                DataPropertyName = "電話番号",
                HeaderText = "電話番号",
                Width = 150
            });

            DataGridView.Columns.Add(new DataGridViewTextBoxColumn
            {
                DataPropertyName = "メール",
                HeaderText = "メール",
                Width = 150
            });

            DataGridView.Columns.Add(new DataGridViewCheckBoxColumn
            {
                DataPropertyName = "Is削除済み",
                HeaderText = "削除済み",
                Width = 80
            });

            DataGridView.Columns.Add(new DataGridViewTextBoxColumn
            {
                DataPropertyName = "備考",
                HeaderText = "備考",
                AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill
            });

            DataGridView.Columns.Add(new DataGridViewTextBoxColumn
            {
                DataPropertyName = "Version",
                HeaderText = "Version",
                Visible = false
            });

        }

    }
}
