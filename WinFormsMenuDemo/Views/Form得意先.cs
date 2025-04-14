using WinFormsMenuDemo.Controls;

namespace WinFormsMenuDemo.Views
{
    public partial class Form得意先 : Form, IForm得意先View, Iテーマ適用可能
    {
        private bool isEdit;
        private bool isSuccessful;
        private string message = string.Empty;

        public Form得意先()
        {
            InitializeComponent();

            this.tabControl.TabPages.Remove(tabPage得意先登録);

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
            dataGridView.ApplyTheme();
        }
        private void AssociateAndRaiseViewEvents()
        {
            // 検索
            this.button検索.Click += delegate { SearchEvent?.Invoke(this, EventArgs.Empty); };
            this.textBox検索.KeyDown += (s, e) =>
            {
                if (e.KeyCode == Keys.Enter)
                {
                    SearchEvent?.Invoke(this, EventArgs.Empty);
                    e.SuppressKeyPress = true; // Enterキーの音を消す
                }
            };

            // 登録系 -----------------------------------------
            // 追加
            this.button追加.Click += delegate
            {
                AddNewEvent?.Invoke(this, EventArgs.Empty);
                this.tabControl.TabPages.Add(tabPage得意先登録);
                this.button削除.Visible = false;
                this.tabControl.TabPages.Remove(tabPage得意先一覧);
            };

            // 修正
            this.dataGridView.CellDoubleClick += (s, e) =>
            {
                EditEvent?.Invoke(this, EventArgs.Empty);
                this.tabControl.TabPages.Add(tabPage得意先登録);
                this.button削除.Visible = true;
                this.tabControl.TabPages.Remove(tabPage得意先一覧);
            };

            this.button保存.Click += delegate
            {
                SaveEvent?.Invoke(this, EventArgs.Empty);
                if (IsSuccessful)
                {
                    this.tabControl.TabPages.Add(tabPage得意先一覧);
                    this.tabControl.TabPages.Remove(tabPage得意先登録);
                }
                var toast = new ToastPanel();
                toast.ShowToast(Message, this);
            };
            this.buttonキャンセル.Click += delegate
            {
                CancelEvent?.Invoke(this, EventArgs.Empty);
                this.tabControl.TabPages.Add(tabPage得意先一覧);
                this.tabControl.TabPages.Remove(tabPage得意先登録);
            };
            this.button削除.Click += delegate
            {
                var result = MessageBox.Show("削除します。", "警告",
                    MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
                if (result == DialogResult.Yes)
                {
                    DeleteEvent?.Invoke(this, EventArgs.Empty);
                    var toast = new ToastPanel();
                    toast.ShowToast(Message, this);
                    this.tabControl.TabPages.Add(tabPage得意先一覧);
                    this.tabControl.TabPages.Remove(tabPage得意先登録);
                }
            };
        }

        // プロパティ
        public string 得意先Id
        {
            get => textBox得意先Id.Text;
            set => textBox得意先Id.Text = value;
        }

        public string 得意先名
        {
            get => textBox得意先名.Text;
            set => textBox得意先名.Text = value;
        }

        public string 住所
        {
            get => textBox住所.Text;
            set => textBox住所.Text = value;
        }

        public string 電話番号
        {
            get => textBox電話番号.Text;
            set => textBox電話番号.Text = value;
        }

        public string メール
        {
            get => textBoxメール.Text;
            set => textBoxメール.Text = value;
        }

        public bool Is削除済み
        {
            get => checkBox削除済み.Checked;
            set => checkBox削除済み.Checked = value;
        }

        public string 備考
        {
            get => textBox備考.Text;
            set => textBox備考.Text = value;
        }

        private int _version = 0;
        public int Version
        {
            get => _version;
            set => _version = value;
        }

        public string SearchValue
        {
            get => textBox検索.Text;
            set => textBox検索.Text = value;
        }

        public bool IsEdit
        {
            get { return isEdit; }
            set { isEdit = value; }
        }

        public bool IsSuccessful
        {
            get { return isSuccessful; }
            set { isSuccessful = value; }
        }

        public string Message
        {
            get { return message; }
            set { message = value; }
        }

        // メソッド
        public void Set得意先ListBindingSource(BindingSource 得意先list)
        {
            カスタムDataGridView設定();
            this.dataGridView.DataSource = 得意先list;
        }

        private void カスタムDataGridView設定()
        {
            if (dataGridView is not SelectableGridView) return; // ← 型チェックして保護
            dataGridView.Columns.Clear();

            // 各列を定義して追加する
            dataGridView.Columns.Add(new DataGridViewTextBoxColumn
            {
                DataPropertyName = "得意先Id",
                HeaderText = "得意先Id",
                Width = 100,
                DefaultCellStyle = new DataGridViewCellStyle { Alignment = DataGridViewContentAlignment.MiddleCenter }
            });

            dataGridView.Columns.Add(new DataGridViewTextBoxColumn
            {
                DataPropertyName = "得意先名",
                HeaderText = "得意先名",
                Width = 300
            });

            dataGridView.Columns.Add(new DataGridViewTextBoxColumn
            {
                DataPropertyName = "住所",
                HeaderText = "住所",
                Width = 150
            });

            dataGridView.Columns.Add(new DataGridViewTextBoxColumn
            {
                DataPropertyName = "電話番号",
                HeaderText = "電話番号",
                Width = 150
            });

            dataGridView.Columns.Add(new DataGridViewTextBoxColumn
            {
                DataPropertyName = "メール",
                HeaderText = "メール",
                Width = 150
            });

            dataGridView.Columns.Add(new DataGridViewCheckBoxColumn
            {
                DataPropertyName = "Is削除済み",
                HeaderText = "削除済み",
                Width = 80
            });

            dataGridView.Columns.Add(new DataGridViewTextBoxColumn
            {
                DataPropertyName = "備考",
                HeaderText = "備考",
                AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill
            });

            dataGridView.Columns.Add(new DataGridViewTextBoxColumn
            {
                DataPropertyName = "Version",
                HeaderText = "Version",
                Visible = false
            });

        }

    }
}
