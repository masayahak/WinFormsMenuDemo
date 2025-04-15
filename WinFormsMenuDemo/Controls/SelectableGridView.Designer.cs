namespace WinFormsMenuDemo.Controls
{
    partial class SelectableGridView
    {
        private DataGridView DataGridView;

        private void InitializeComponent()
        {
            this.DataGridView = new DataGridView();
            this.SuspendLayout();
            this.DataGridView.Name = "dataGridView";
            this.DataGridView.TabIndex = 0;
            this.Controls.Add(this.DataGridView);
            this.Name = "SelectableGridView";
            this.ResumeLayout(false);
        }
    }
}
