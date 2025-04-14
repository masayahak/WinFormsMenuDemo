using System.Configuration;
using WinFormsMenuDemo.Controls;
using WinFormsMenuDemo.Forms.Shared;
using WinFormsMenuDemo.Presenters.Shared;
using WinFormsMenuDemo.Repositories.Shared;

namespace WinFormsMenuDemo.Views
{
    public partial class Form受注 : Form, IForm受注View, Iテーマ適用可能
    {
        private bool isEdit;
        private bool isSuccessful;
        private string message = string.Empty;

        public Form受注()
        {
            InitializeComponent();

            this.tabControl.TabPages.Remove(tabPage受注登録);

            AssociateAndRaiseViewEvents();
        }

        // -------------------------------------------------
        // プロパティ
        // -------------------------------------------------
        public string 受注Id
        {
            get => textBox受注Id.Text;
            set => textBox受注Id.Text = value;
        }

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

        public string 受注日
        {
            get => textBox受注日.Text;
            set => textBox受注日.Text = value;
        }

        public string 合計金額
        {
            get => textBox合計金額.Text;
            set => textBox合計金額.Text = value;
        }

        public bool Is売上済み
        {
            get => checkBox売上済み.Checked;
            set => checkBox売上済み.Checked = value;
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
                this.tabControl.TabPages.Add(tabPage受注登録);
                this.button削除.Visible = false;
                this.tabControl.TabPages.Remove(tabPage受注一覧);
            };

            // 修正
            this.dataGridView.CellDoubleClick += (s, e) =>
            {
                EditEvent?.Invoke(this, EventArgs.Empty);
                this.tabControl.TabPages.Add(tabPage受注登録);
                this.button削除.Visible = true;
                this.tabControl.TabPages.Remove(tabPage受注一覧);
            };

            this.button保存.Click += delegate
            {
                SaveEvent?.Invoke(this, EventArgs.Empty);
                if (IsSuccessful)
                {
                    this.tabControl.TabPages.Add(tabPage受注一覧);
                    this.tabControl.TabPages.Remove(tabPage受注登録);
                }
                ShowMessageToUser(message);
            };
            this.buttonキャンセル.Click += delegate
            {
                CancelEvent?.Invoke(this, EventArgs.Empty);
                this.tabControl.TabPages.Add(tabPage受注一覧);
                this.tabControl.TabPages.Remove(tabPage受注登録);
            };
            this.button削除.Click += delegate
            {
                var result = MessageBox.Show("削除します。", "警告",
                    MessageBoxButtons.YesNo, MessageBoxIcon.Warning);
                if (result == DialogResult.Yes)
                {
                    DeleteEvent?.Invoke(this, EventArgs.Empty);
                    ShowMessageToUser(message);
                    this.tabControl.TabPages.Add(tabPage受注一覧);
                    this.tabControl.TabPages.Remove(tabPage受注登録);
                }
            };

            // 得意先検索
            this.button得意先検索.Click += delegate
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
            dataGridView.ApplyTheme();
        }

        // メッセージ表示
        private void ShowMessageToUser(string message)
        {
            this.message = message;

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
            this.dataGridView.BarGraphColumnName = "合計金額";
            this.dataGridView.DataSource = 受注list;
        }

        private void カスタムDataGridView設定()
        {
            if (dataGridView is not SelectableGridView) return; // ← 型チェックして保護
            dataGridView.Columns.Clear();

            // 各列を定義して追加する
            dataGridView.Columns.Add(new DataGridViewTextBoxColumn
            {
                DataPropertyName = "受注Id",
                HeaderText = "受注Id",
                Width = 100,
                DefaultCellStyle = new DataGridViewCellStyle { Alignment = DataGridViewContentAlignment.MiddleCenter }
            });

            dataGridView.Columns.Add(new DataGridViewTextBoxColumn
            {
                DataPropertyName = "得意先Id",
                HeaderText = "得意先Id",
                Visible = false
            });

            dataGridView.Columns.Add(new DataGridViewTextBoxColumn
            {
                DataPropertyName = "得意先名",
                HeaderText = "得意先名",
                Width = 300
            });

            dataGridView.Columns.Add(new DataGridViewTextBoxColumn
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

            dataGridView.Columns.Add(new DataGridViewTextBoxColumn
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

            dataGridView.Columns.Add(new DataGridViewCheckBoxColumn
            {
                DataPropertyName = "Is売上済み",
                HeaderText = "売上済み",
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

        // -------------------------------------------------
        // メソッド
        // -------------------------------------------------
        private void Button得意先検索_Click(object? sender, EventArgs e)
        {
            throw new NotImplementedException();
        }
    }
}
