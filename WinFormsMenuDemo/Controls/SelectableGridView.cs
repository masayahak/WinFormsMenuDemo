using System.ComponentModel;
using WinFormsMenuDemo.Models;

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


        [Browsable(true)]
        [Category("動作")]
        [Description("バー表示する列名（例：合計金額）")]
        public string? BarGraphColumnName { get; set; }

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

            dataGridView.CellPainting += DataGridView_CellPainting;
        }

        public void ApplyTheme()
        {
            InitializeGrid();
        }

        private void DataGridView_CellPainting(object? sender, DataGridViewCellPaintingEventArgs e)
        {
            if (string.IsNullOrEmpty(BarGraphColumnName)) return;

            if (e.RowIndex >= 0 &&
                dataGridView.Columns[e.ColumnIndex].DataPropertyName == BarGraphColumnName)
            {
                e.Handled = true;
                e.PaintBackground(e.CellBounds, true);

                if (e.Value != null && int.TryParse(e.Value.ToString(), out int numericValue))
                {
                    int max = GetMaxValue();
                    if (max == 0) return;

                    int barWidth = (int)((numericValue / (float)max) * (e.CellBounds.Width - 6));
                    int barX = e.CellBounds.Right - barWidth - 3;
                    Rectangle bar = new Rectangle(barX, e.CellBounds.Y + 3, barWidth, e.CellBounds.Height - 6);

                    using var brush = new SolidBrush(Properties.Settings.Default.GridGraphColor);
                    e.Graphics!.FillRectangle(brush, bar);

                    TextRenderer.DrawText(e.Graphics, numericValue.ToString("¥#,0"),
                        e.CellStyle!.Font, e.CellBounds, e.CellStyle.ForeColor,
                        TextFormatFlags.Right | TextFormatFlags.VerticalCenter);
                }
            }
        }

        private int GetMaxValue()
        {
            if (dataGridView.DataSource is BindingSource bs &&
                bs.List is IEnumerable<object> list)
            {
                var firstItem = list.FirstOrDefault();
                if (firstItem == null || string.IsNullOrEmpty(BarGraphColumnName)) return 0;

                var prop = firstItem.GetType().GetProperty(BarGraphColumnName);
                if (prop == null) return 0;

                return list
                    .Select(x => prop.GetValue(x))
                    .OfType<IConvertible>() // 変換可能なものだけ
                    .Select(x => Convert.ToInt32(x))
                    .DefaultIfEmpty(0)
                    .Max();
            }
            return 0;
        }

    }
}
