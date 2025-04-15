using System.Configuration;
using WinFormsMenuDemo.Controls;
using WinFormsMenuDemo.Forms.Shared;
using WinFormsMenuDemo.Presenters.Shared;
using WinFormsMenuDemo.Repositories.Shared;

namespace WinFormsMenuDemo.Views
{
    public partial class Form受注 : Form, IForm受注View, Iテーマ適用可能
    {
        private bool _isEdit;
        private bool _isSuccessful;
        private string _message = string.Empty;

        public Form受注()
        {
            InitializeComponent();

            this.TabControl.TabPages.Remove(TabPage受注登録);

            AssociateAndRaiseViewEvents();
        }

        // -------------------------------------------------
        // プロパティ
        // -------------------------------------------------
        public string 受注Id
        {
            get => TextBox受注Id.Text;
            set => TextBox受注Id.Text = value;
        }

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

        public string 受注日
        {
            get => TextBox受注日.Text;
            set => TextBox受注日.Text = value;
        }

        public string 合計金額
        {
            get => TextBox合計金額.Text;
            set => TextBox合計金額.Text = value;
        }

        public bool Is売上済み
        {
            get => CheckBox売上済み.Checked;
            set => CheckBox売上済み.Checked = value;
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
            set { _message = value; }
        }

        // -------------------------------------------------
        // データ捜査イベント（Presenterで実装）
        // -------------------------------------------------
        public event EventHandler? SearchEvent;
        public event EventHandler? AddNewEvent;
        public event EventHandler? EditEvent;
        public event EventHandler? DeleteEvent;
        public event EventHandler? SaveEvent;
        public event EventHandler? CancelEvent;

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
                this.TabControl.TabPages.Add(TabPage受注登録);
                this.Btn削除.Visible = false;
                this.TabControl.TabPages.Remove(TabPage受注一覧);
            };

            // 修正
            this.DataGridView.CellDoubleClick += (s, e) =>
            {
                EditEvent?.Invoke(this, EventArgs.Empty);
                this.TabControl.TabPages.Add(TabPage受注登録);
                this.Btn削除.Visible = true;
                this.TabControl.TabPages.Remove(TabPage受注一覧);
            };

            this.Btn保存.Click += delegate
            {
                SaveEvent?.Invoke(this, EventArgs.Empty);
                if (IsSuccessful)
                {
                    this.TabControl.TabPages.Add(TabPage受注一覧);
                    this.TabControl.TabPages.Remove(TabPage受注登録);
                }
                ShowMessageToUser(_message);
            };
            this.Btnキャンセル.Click += delegate
            {
                CancelEvent?.Invoke(this, EventArgs.Empty);
                this.TabControl.TabPages.Add(TabPage受注一覧);
                this.TabControl.TabPages.Remove(TabPage受注登録);
            };
            this.Btn削除.Click += delegate
            {
                var result = MessageBox.Show("削除します。", "警告",
                    MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
                if (result == DialogResult.Yes)
                {
                    DeleteEvent?.Invoke(this, EventArgs.Empty);
                    ShowMessageToUser(_message);
                    this.TabControl.TabPages.Add(TabPage受注一覧);
                    this.TabControl.TabPages.Remove(TabPage受注登録);
                }
            };

            // 得意先検索
            this.Btn得意先検索.Click += delegate
            {
                using (var form = new Form得意先一覧())
                {
                    string sqlConnectionString = ConfigurationManager.ConnectionStrings["sqlConnectionString"].ConnectionString;
                    var repo = new 得意先Repository(sqlConnectionString);
                    var presenter = new 得意先一覧Presenter(form, repo);

                    form.StartPosition = FormStartPosition.CenterParent;
                    if (form.ShowDialog() == DialogResult.OK)
                    {
                        得意先Id = form.得意先Id;
                        得意先名 = form.得意先名;
                    }
                }
            };

        }

        // -------------------------------------------------
        // 画面描画
        // -------------------------------------------------
        // テーマ適用
        public void ApplyTheme()
        {
            // グリッド色を再適用
            DataGridView.ApplyTheme();
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

        // -------------------------------------------------
        // GridViewの設定
        // -------------------------------------------------
        public void Set受注ListBindingSource(BindingSource 受注list)
        {
            カスタムDataGridView設定();
            this.DataGridView.BarGraphColumnName = "合計金額";
            this.DataGridView.DataSource = 受注list;
        }

        private void カスタムDataGridView設定()
        {
            if (DataGridView is not SelectableGridView) return; // ← 型チェックして保護
            DataGridView.Columns.Clear();

            // 各列を定義して追加する
            DataGridView.Columns.Add(new DataGridViewTextBoxColumn
            {
                DataPropertyName = "受注Id",
                HeaderText = "受注Id",
                Width = 100,
                DefaultCellStyle = new DataGridViewCellStyle { Alignment = DataGridViewContentAlignment.MiddleCenter }
            });

            DataGridView.Columns.Add(new DataGridViewTextBoxColumn
            {
                DataPropertyName = "得意先Id",
                HeaderText = "得意先Id",
                Visible = false
            });

            DataGridView.Columns.Add(new DataGridViewTextBoxColumn
            {
                DataPropertyName = "得意先名",
                HeaderText = "得意先名",
                Width = 300
            });

            DataGridView.Columns.Add(new DataGridViewTextBoxColumn
            {
                DataPropertyName = "受注日",
                HeaderText = "受注日",
                Width = 150,
                DefaultCellStyle = new DataGridViewCellStyle
                {
                    Alignment = DataGridViewContentAlignment.MiddleCenter,
                    Format = "yyyy/MM/dd"
                }
            });

            DataGridView.Columns.Add(new DataGridViewTextBoxColumn
            {
                DataPropertyName = "合計金額",
                HeaderText = "合計金額",
                Width = 150,
                DefaultCellStyle = new DataGridViewCellStyle
                {
                    Alignment = DataGridViewContentAlignment.MiddleRight,
                    Format = "C"
                }
            });

            DataGridView.Columns.Add(new DataGridViewCheckBoxColumn
            {
                DataPropertyName = "Is売上済み",
                HeaderText = "売上済み",
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

        // -------------------------------------------------
        // メソッド
        // -------------------------------------------------
        private void Button得意先検索_Click(object? sender, EventArgs e)
        {
            throw new NotImplementedException();
        }
    }
}
