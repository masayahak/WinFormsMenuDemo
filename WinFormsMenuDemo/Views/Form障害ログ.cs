using WinFormsMenuDemo.Controls;

namespace WinFormsMenuDemo.Views
{
    public partial class Form障害ログ : Form, IForm障害ログView, Iテーマ適用可能
    {
        public Form障害ログ()
        {
            InitializeComponent();

            this.TabControl.TabPages.Remove(TabPage障害ログ詳細);

            AssociateAndRaiseViewEvents();
        }

        // イベント
        public event EventHandler? SearchEvent;
        public event EventHandler? ShowDetailEvent;
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

            // 詳細
            this.DataGridView.CellDoubleClick += (s, e) =>
            {
                ShowDetailEvent?.Invoke(this, EventArgs.Empty);
                this.TabControl.TabPages.Add(TabPage障害ログ詳細);
                this.TabControl.TabPages.Remove(TabPage障害ログ一覧);
            };

            this.Btnキャンセル.Click += delegate
            {
                CancelEvent?.Invoke(this, EventArgs.Empty);
                this.TabControl.TabPages.Add(TabPage障害ログ一覧);
                this.TabControl.TabPages.Remove(TabPage障害ログ詳細);
            };
        }

        // プロパティ
        public string Id
        {
            get => TextBoxId.Text;
            set => TextBoxId.Text = value;
        }

        public string 発生日時
        {
            get => TextBox発生日時.Text;
            set => TextBox発生日時.Text = value;
        }

        public string 画面名
        {
            get => TextBox画面名.Text;
            set => TextBox画面名.Text = value;
        }

        public string 処理名
        {
            get => TextBox処理名.Text;
            set => TextBox処理名.Text = value;
        }

        public string メッセージ
        {
            get => TextBoxメッセージ.Text;
            set => TextBoxメッセージ.Text = value;
        }

        public string スタックトレース
        {
            get => TextBoxスタックトレース.Text;
            set => TextBoxスタックトレース.Text = value;
        }

        public string クライアント情報
        {
            get => TextBoxクライアント情報.Text;
            set => TextBoxクライアント情報.Text = value;
        }

        public string 備考
        {
            get => TextBox備考.Text;
            set => TextBox備考.Text = value;
        }

        public string SearchValue
        {
            get => TextBox検索.Text;
            set => TextBox検索.Text = value;
        }

        // メソッド
        public void Set障害ログListBindingSource(BindingSource 障害ログlist)
        {
            カスタムDataGridView設定();
            this.DataGridView.DataSource = 障害ログlist;
        }

        private void カスタムDataGridView設定()
        {
            if (DataGridView is not SelectableGridView) return; // ← 型チェックして保護
            DataGridView.Columns.Clear();

            DataGridView.Columns.Add(new DataGridViewTextBoxColumn
            {
                DataPropertyName = "Id",
                HeaderText = "ID",
                Width = 80,
                DefaultCellStyle = new DataGridViewCellStyle { Alignment = DataGridViewContentAlignment.MiddleCenter }
            });

            DataGridView.Columns.Add(new DataGridViewTextBoxColumn
            {
                DataPropertyName = "発生日時",
                HeaderText = "発生日時",
                Width = 150,
                DefaultCellStyle = new DataGridViewCellStyle
                {
                    Alignment = DataGridViewContentAlignment.MiddleCenter,
                    Format = "yyyy/MM/dd HH:mm:ss"
                }
            });

            DataGridView.Columns.Add(new DataGridViewTextBoxColumn
            {
                DataPropertyName = "画面名",
                HeaderText = "画面名",
                Width = 150
            });

            DataGridView.Columns.Add(new DataGridViewTextBoxColumn
            {
                DataPropertyName = "処理名",
                HeaderText = "処理名",
                Width = 200
            });

            DataGridView.Columns.Add(new DataGridViewTextBoxColumn
            {
                DataPropertyName = "メッセージ",
                HeaderText = "メッセージ",
                Width = 300
            });

            DataGridView.Columns.Add(new DataGridViewTextBoxColumn
            {
                DataPropertyName = "備考",
                HeaderText = "備考",
                AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill
            });
        }

    }
}
