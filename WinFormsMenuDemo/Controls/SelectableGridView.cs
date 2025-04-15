using System.ComponentModel;

namespace WinFormsMenuDemo.Controls
{
    public partial class SelectableGridView : UserControl
    {
        public DataGridView Grid => DataGridView;
        public event DataGridViewCellEventHandler? CellDoubleClick;
        public event DataGridViewCellPaintingEventHandler? CellPainting;

        public SelectableGridView()
        {
            InitializeComponent();
            InitializeGrid();
            DataGridView.ReadOnly = true;

            // 内部イベントを外部に転送
            DataGridView.CellDoubleClick += (s, e) => CellDoubleClick?.Invoke(s, e);
            DataGridView.CellPainting += (s, e) => CellPainting?.Invoke(s, e);
        }

        public BindingSource? DataSource
        {
            get => DataGridView.DataSource as BindingSource;
            set => DataGridView.DataSource = value;
        }

        public DataGridViewColumnCollection Columns => DataGridView.Columns;


        [Browsable(true)]
        [Category("動作")]
        [Description("バー表示する列名（例：合計金額）")]
        public string? BarGraphColumnName { get; set; }

        private void InitializeGrid()
        {
            DataGridView.Dock = DockStyle.Fill;
            DataGridView.AllowUserToResizeRows = false;
            DataGridView.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            DataGridView.MultiSelect = false;
            DataGridView.RowHeadersVisible = false;
            DataGridView.AlternatingRowsDefaultCellStyle.BackColor = Color.LightGray;
            DataGridView.RowTemplate.Height = 30;

            DataGridView.EnableHeadersVisualStyles = false;
            DataGridView.ColumnHeadersDefaultCellStyle.BackColor = Properties.Settings.Default.GridHeaderColor;
            DataGridView.ColumnHeadersDefaultCellStyle.ForeColor = Color.White;
            DataGridView.ColumnHeadersDefaultCellStyle.SelectionBackColor = Properties.Settings.Default.GridHeaderColor;
            DataGridView.ColumnHeadersDefaultCellStyle.SelectionForeColor = Color.White;
            DataGridView.ColumnHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
            DataGridView.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.DisableResizing;
            DataGridView.ColumnHeadersHeight = 40;
            DataGridView.ColumnHeadersDefaultCellStyle.Font = new Font("Yu Gothic UI", 9.75F, FontStyle.Bold, GraphicsUnit.Point, 128);

            DataGridView.DefaultCellStyle.SelectionBackColor = Properties.Settings.Default.GridSelectedBackColor;
            DataGridView.DefaultCellStyle.SelectionForeColor = Properties.Settings.Default.GridSelectedForeColor;

            DataGridView.AutoGenerateColumns = false;
            DataGridView.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.None;

            DataGridView.CellPainting += DataGridView_CellPainting;
        }

        public void ApplyTheme()
        {
            InitializeGrid();
        }

        private void DataGridView_CellPainting(object? sender, DataGridViewCellPaintingEventArgs e)
        {
            if (string.IsNullOrEmpty(BarGraphColumnName)) return;

            if (e.RowIndex >= 0 &&
                DataGridView.Columns[e.ColumnIndex].DataPropertyName == BarGraphColumnName)
            {
                e.Handled = true;
                e.PaintBackground(e.CellBounds, true);

                if (e.Value != null && int.TryParse(e.Value.ToString(), out int numericValue))
                {
                    int max = GetMaxValue();
                    if (max == 0) return;

                    int barWidth = (int)((numericValue / (float)max) * (e.CellBounds.Width - 6));
                    int barX = e.CellBounds.Right - barWidth - 3;
                    Rectangle bar = new(barX, e.CellBounds.Y + 3, barWidth, e.CellBounds.Height - 6);

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
            if (DataGridView.DataSource is BindingSource bs &&
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
