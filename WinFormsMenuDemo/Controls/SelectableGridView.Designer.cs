namespace WinFormsMenuDemo.Controls
{
    partial class SelectableGridView
    {
        private DataGridView dataGridView;

        private void InitializeComponent()
        {
            this.dataGridView = new DataGridView();
            this.SuspendLayout();
            this.dataGridView.Name = "dataGridView";
            this.dataGridView.TabIndex = 0;
            this.Controls.Add(this.dataGridView);
            this.Name = "SelectableGridView";
            this.ResumeLayout(false);
        }
    }
}
