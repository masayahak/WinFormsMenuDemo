using Timer = System.Windows.Forms.Timer;

namespace WinFormsMenuDemo.Controls
{
    public partial class ToastPanel : Panel
    {
        private Timer? timer;

        public int DisplayTime { get; set; } = 2000;

        public ToastPanel()
        {
            this.Visible = false;
            this.BackColor = Color.White;
            this.ForeColor = Color.Black;
            this.Font = new Font("Yu Gothic UI", 12F);
            this.Size = new Size(300, 100);
        }

        public void ShowToast(string message, Control parent)
        {
            this.Controls.Clear();

            var label = new Label()
            {
                Text = message,
                ForeColor = this.ForeColor,
                BackColor = Color.Transparent,
                AutoSize = false,
                TextAlign = ContentAlignment.MiddleCenter,
                Dock = DockStyle.Fill,
                Font = this.Font
            };
            this.Controls.Add(label);

            if (!parent.Controls.Contains(this))
                parent.Controls.Add(this);

            // 中央に表示
            this.Location = new Point(
                (parent.ClientSize.Width - this.Width) / 2,
                (parent.ClientSize.Height - this.Height) / 2
            );
            this.BringToFront();
            this.Visible = true;

            // タイマーで自動消去
            timer = new Timer();
            timer.Interval = DisplayTime;
            timer.Tick += (s, e) =>
            {
                timer.Stop();
                this.Visible = false;
                parent.Controls.Remove(this);
            };
            timer.Start();
        }

        protected override void OnPaint(PaintEventArgs e)
        {
            base.OnPaint(e);

            using var redPen = new Pen(Color.Red, 10)
            {
                Alignment = System.Drawing.Drawing2D.PenAlignment.Inset
            };
            Rectangle rect = new Rectangle(0, 0, this.Width - 1, this.Height - 1);
            e.Graphics.DrawRectangle(redPen, rect);
        }
    }
}
