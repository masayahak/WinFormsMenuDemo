using System.Collections;
using System.ComponentModel;
using System.Runtime.InteropServices;
using WinFormsMenuDemo.Common;
using Excel = Microsoft.Office.Interop.Excel;

namespace WinFormsMenuDemo.Controls
{
    public partial class ExcelExportButton : Button
    {
        [Category("Data")]
        [Description("Excel出力対象のSelectableGridViewを指定します。")]
        public SelectableGridView? TargetGrid { get; set; }

        public ExcelExportButton()
        {
            this.Click += (s, e) => ExportToExcel();
        }

        private void ExportToExcel()
        {
            if (TargetGrid == null || TargetGrid.Grid.Rows.Count == 0) return;

            Excel.Application? app = null;
            Excel.Workbooks? books = null;
            Excel.Workbook? book = null;
            Excel.Worksheet? sheet = null;

            try
            {
                app = new Excel.Application();
                books = app.Workbooks;
                book = books.Add();
                sheet = (Excel.Worksheet)book.Worksheets[1];

                SetHeader(sheet);
                SetData(sheet);
                SetFormat(sheet);

                sheet.Cells.Columns.AutoFit();
                app.Visible = true;
            }
            catch (Exception ex)
            {
                MessageBox.Show("Excel出力エラー: " + ex.Message);
            }

            finally
            {
                if (sheet != null) Marshal.ReleaseComObject(sheet);
                if (book != null) Marshal.ReleaseComObject(book);
                if (books != null) Marshal.ReleaseComObject(books);
                if (app != null) Marshal.ReleaseComObject(app);

                sheet = null; book = null; books = null; app = null;

                GC.Collect();
                GC.WaitForPendingFinalizers();
                GC.Collect();
            }
        }

        private void SetHeader(Excel.Worksheet sheet)
        {
            var visibleColumns = TargetGrid!.Columns.Cast<DataGridViewColumn>()
                                        .Where(c => c.Visible)
                                        .ToList();

            int cols = visibleColumns.Count;
            string[] headers = visibleColumns.Select(c => c.HeaderText).ToArray();

            Excel.Range range = sheet.Cells[1, 1];
            range = range.get_Resize(1, cols);
            range.Value = headers;
            range.Interior.Color = Color.DarkBlue;
            range.Font.Color = Color.White;
            range.Font.Bold = true;
        }

        private void SetData(Excel.Worksheet sheet)
        {
            if (TargetGrid!.DataSource is not BindingSource bs) return;
            var list = bs.DataSource as IList;
            if (list == null || list.Count == 0) return;

            var visibleColumns = TargetGrid.Columns.Cast<DataGridViewColumn>()
                                        .Where(c => c.Visible)
                                        .ToList();

            int rows = list.Count;
            int cols = visibleColumns.Count;
            object[,] data = new object[rows, cols];

            for (int r = 0; r < rows; r++)
            {
                var rowItem = list[r];
                for (int c = 0; c < cols; c++)
                {
                    var prop = rowItem?.GetType().GetProperty(visibleColumns[c].DataPropertyName);
                    data[r, c] = prop?.GetValue(rowItem, null) ?? string.Empty;
                }
            }

            Excel.Range range = sheet.Cells[2, 1];
            range = range.get_Resize(rows, cols);
            range.Value = data;
        }

        private void SetFormat(Excel.Worksheet sheet)
        {
            var visibleColumns = TargetGrid!.Columns.Cast<DataGridViewColumn>()
                                        .Where(c => c.Visible)
                                        .ToList();

            for (int i = 0; i < visibleColumns.Count; i++)
            {
                var column = visibleColumns[i];
                string letter = GetExcelColumnLetter(i);
                Excel.Range range = sheet.get_Range(letter + ":" + letter);

                string format = column.DefaultCellStyle.Format;
                if (format == "yyyy/MM/dd" || format == "MM/dd")
                {
                    range.NumberFormatLocal = "yyyy/MM/dd";
                }
                else if (format == "C" || format == "¥#,0")
                {
                    range.NumberFormatLocal = "¥#,0";
                }
                else
                {
                    range.NumberFormatLocal = "@";
                }
            }
        }

        private static string GetExcelColumnLetter(int index)
        {
            const string letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
            string result = "";
            while (index >= 0)
            {
                result = letters[index % 26] + result;
                index = (index / 26) - 1;
            }
            return result;
        }
    }
}
