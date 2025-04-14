using System.Drawing;
using System.Windows.Forms;

namespace WinFormsMenuDemo.Controls
{
    public partial class SelectableGridView : UserControl
    {
        public DataGridView Grid => dataGridView;
        public event DataGridViewCellEventHandler? CellDoubleClick;
        public event DataGridViewCellPaintingEventHandler? CellPainting;

        public SelectableGridView()
        {
            InitializeComponent();
            InitializeGrid();

            // 内部イベントを外部に転送
            dataGridView.CellDoubleClick += (s, e) => CellDoubleClick?.Invoke(s, e);
            dataGridView.CellPainting += (s, e) => CellPainting?.Invoke(s, e);
        }

        public object? DataSource
        {
            get => dataGridView.DataSource;
            set => dataGridView.DataSource = value;
        }

        public DataGridViewColumnCollection Columns => dataGridView.Columns;

        private void InitializeGrid()
        {
            dataGridView.Dock = DockStyle.Fill;
            dataGridView.AllowUserToResizeRows = false;
            dataGridView.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            dataGridView.MultiSelect = false;
            dataGridView.RowHeadersVisible = false;
            dataGridView.AlternatingRowsDefaultCellStyle.BackColor = Color.LightGray;
            dataGridView.RowTemplate.Height = 30;

            dataGridView.EnableHeadersVisualStyles = false;
            dataGridView.ColumnHeadersDefaultCellStyle.BackColor = Properties.Settings.Default.GridHeaderColor;
            dataGridView.ColumnHeadersDefaultCellStyle.ForeColor = Color.White;
            dataGridView.ColumnHeadersDefaultCellStyle.SelectionBackColor = Properties.Settings.Default.GridHeaderColor;
            dataGridView.ColumnHeadersDefaultCellStyle.SelectionForeColor = Color.White;
            dataGridView.ColumnHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
            dataGridView.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.DisableResizing;
            dataGridView.ColumnHeadersHeight = 40;
            dataGridView.ColumnHeadersDefaultCellStyle.Font = new Font("Yu Gothic UI", 9.75F, FontStyle.Bold, GraphicsUnit.Point, 128);

            dataGridView.DefaultCellStyle.SelectionBackColor = Properties.Settings.Default.GridSelectedBackColor;
            dataGridView.DefaultCellStyle.SelectionForeColor = Properties.Settings.Default.GridSelectedForeColor;

            dataGridView.AutoGenerateColumns = false;
            dataGridView.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.None;
        }

        public void ApplyTheme()
        {
            InitializeGrid();
        }

    }
}
