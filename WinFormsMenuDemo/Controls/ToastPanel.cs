using System.Drawing.Drawing2D;
using Timer = System.Windows.Forms.Timer;

namespace WinFormsMenuDemo.Controls
{
    public partial class ToastPanel : Panel
    {
        private Timer? _timer;

        public int DisplayTime { get; set; } = 3000;

        public ToastPanel()
        {
            this.Visible = false;
            this.BackColor = Color.White;
            this.ForeColor = Color.Black;
            this.Font = new Font("Yu Gothic UI", 12F, FontStyle.Bold);
            this.Padding = new Padding(20);
            this.BorderStyle = BorderStyle.None;
            this.DoubleBuffered = true;
        }

        public void ShowToast(string message, Control parent)
        {
            this.Controls.Clear();

            var label = new Label
            {
                Text = message,
                MaximumSize = new Size(400, 0),
                AutoSize = true,
                TextAlign = ContentAlignment.MiddleCenter,
                Font = this.Font,
                BackColor = Color.Transparent,
                ForeColor = this.ForeColor
            };

            this.Controls.Add(label);
            label.Location = new Point(20, 20);

            this.Size = new Size(label.Width + 40, label.Height + 40);

            if (!parent.Controls.Contains(this))
                parent.Controls.Add(this);

            this.Location = new Point(
                (parent.ClientSize.Width - this.Width) / 2,
                (parent.ClientSize.Height - this.Height) / 2
            );

            this.BringToFront();
            this.Visible = true;

            _timer = new Timer
            {
                Interval = DisplayTime
            };
            _timer.Tick += (s, e) =>
            {
                _timer.Stop();
                this.Visible = false;
                parent.Controls.Remove(this);
            };
            _timer.Start();
        }

        protected override void OnPaint(PaintEventArgs e)
        {
            base.OnPaint(e);

            var bounds = new Rectangle(0, 0, this.Width - 1, this.Height - 1);
            using var path = new GraphicsPath();
            int radius = 20;
            path.AddArc(bounds.X, bounds.Y, radius, radius, 180, 90);
            path.AddArc(bounds.Right - radius, bounds.Y, radius, radius, 270, 90);
            path.AddArc(bounds.Right - radius, bounds.Bottom - radius, radius, radius, 0, 90);
            path.AddArc(bounds.X, bounds.Bottom - radius, radius, radius, 90, 90);
            path.CloseFigure();

            Color borderColor = Properties.Settings.Default.TopBarColor;
            using var pen = new Pen(borderColor, 4);
            e.Graphics.SmoothingMode = SmoothingMode.AntiAlias;
            e.Graphics.DrawPath(pen, path);
        }
    }
}