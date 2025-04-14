using WinFormsMenuDemo.Controls;
using WinFormsMenuDemo.Views.Shared;

namespace WinFormsMenuDemo.Forms.Shared
{
    public partial class Form得意先一覧 : Form, IForm得意先一覧View
    {
        public Form得意先一覧()
        {
            InitializeComponent();
            AssociateAndRaiseViewEvents();
        }

        // イベント
        public event EventHandler? SearchEvent;
        public event EventHandler? SelectEvent;
        public event EventHandler? CancelEvent;

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

            this.button決定.Click += delegate
            {
                SelectEvent?.Invoke(this, EventArgs.Empty);
                this.DialogResult = DialogResult.OK;
                this.Close();
            };
            this.dataGridView.CellDoubleClick += (s, e) =>
            {
                SelectEvent?.Invoke(this, EventArgs.Empty);
                this.DialogResult = DialogResult.OK;
                this.Close();
            };

            this.buttonキャンセル.Click += delegate
            {
                CancelEvent?.Invoke(this, EventArgs.Empty);
                this.DialogResult = DialogResult.Cancel;
                this.Close();
            };

        }

        // プロパティ
        private string _得意先Id = string.Empty;
        public string 得意先Id
        {
            get => _得意先Id;
            set => _得意先Id = value;
        }

        private string _得意先名 = string.Empty;
        public string 得意先名
        {
            get => _得意先名;
            set => _得意先名 = value;
        }

        public string SearchValue
        {
            get => textBox検索.Text;
            set => textBox検索.Text = value;
        }

        // メソッド
        public void Set得意先一覧ListBindingSource(BindingSource 得意先list)
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
                AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill
            });
        }
    }
}
