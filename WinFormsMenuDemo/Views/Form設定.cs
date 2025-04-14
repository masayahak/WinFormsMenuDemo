using WinFormsMenuDemo.Controls;

namespace WinFormsMenuDemo.Views
{
    public partial class Form設定 : Form, IForm設定View
    {
        private bool isSuccessful;
        private string message = string.Empty;

        // コンストラクタ
        public Form設定()
        {
            InitializeComponent();

            LoadSetting();
        }

        // イベント
        public event EventHandler? ThemeChanged;

        private void LoadSetting()
        {
            トップバー色 = ToColorString(Properties.Settings.Default.TopBarColor);
            メニュー背景色 = ToColorString(Properties.Settings.Default.MenuBackColor);
            グリッド見出し背景色 = ToColorString(Properties.Settings.Default.GridHeaderColor);
            グリッド選択行背景色 = ToColorString(Properties.Settings.Default.GridSelectedBackColor);
            グリッド選択行文字色 = ToColorString(Properties.Settings.Default.GridSelectedForeColor);
            グリッドグラフ色 = ToColorString(Properties.Settings.Default.GridGraphColor);
        }

        private void SaveSetting()
        {
            if (!ValidateColors())
                return;

            try
            {
                Properties.Settings.Default.TopBarColor = ParseColor(トップバー色);
                Properties.Settings.Default.MenuBackColor = ParseColor(メニュー背景色);
                Properties.Settings.Default.GridHeaderColor = ParseColor(グリッド見出し背景色);
                Properties.Settings.Default.GridSelectedBackColor = ParseColor(グリッド選択行背景色);
                Properties.Settings.Default.GridSelectedForeColor = ParseColor(グリッド選択行文字色);
                Properties.Settings.Default.GridGraphColor = ParseColor(グリッドグラフ色);

                Properties.Settings.Default.Save();
            }
            catch (Exception ex)
            {
                IsSuccessful = false;
                Message = $"エラーが発生しました: {ex.Message}";
                return;
            }
            IsSuccessful = true;
            Message = "設定が保存されました。";
            ThemeChanged?.Invoke(this, EventArgs.Empty);
        }

        private void Cancel()
        {
            IsSuccessful = true;
            Message = "設定がキャンセルされました。";
        }


        private bool ValidateColors()
        {
            // 色の検証
            if (!IsValidColor(トップバー色) ||
                !IsValidColor(メニュー背景色) ||
                !IsValidColor(グリッド見出し背景色) ||
                !IsValidColor(グリッド選択行背景色) ||
                !IsValidColor(グリッド選択行文字色) ||
                !IsValidColor(グリッドグラフ色))
            {
                IsSuccessful = false;
                Message = "無効な色が指定されています。";
                return false;
            }
            return true;
        }

        private bool IsValidColor(string color)
        {
            try
            {
                Color parsedColor = ParseColor(color);
            }
            catch (Exception)
            {
                return false;
            }
            return true;
        }

        // プロパティ
        public string トップバー色
        {
            get => textBoxトップバー色.Text;
            set
            {
                textBoxトップバー色.Text = value;
                UpdatePictureBoxPreview(pictureBoxトップバー色, value);
            }
        }
        public string メニュー背景色
        {
            get => textBoxメニュー背景色.Text;
            set
            {
                textBoxメニュー背景色.Text = value;
                UpdatePictureBoxPreview(pictureBoxメニュー背景色, value);
            }
        }
        public string グリッド見出し背景色
        {
            get => textBoxグリッド見出し背景色.Text;
            set
            {
                textBoxグリッド見出し背景色.Text = value;
                UpdatePictureBoxPreview(pictureBoxグリッド見出し背景色, value);
            }
        }
        public string グリッド選択行背景色
        {
            get => textBoxグリッド選択行背景色.Text;
            set
            {
                textBoxグリッド選択行背景色.Text = value;
                UpdatePictureBoxPreview(pictureBoxグリッド選択行背景色, value);
            }
        }
        public string グリッド選択行文字色
        {
            get => textBoxグリッド選択行文字色.Text;
            set
            {
                textBoxグリッド選択行文字色.Text = value;
                UpdatePictureBoxPreview(pictureBoxグリッド選択行文字色, value);
            }
        }
        public string グリッドグラフ色
        {
            get => textBoxグリッドグラフ色.Text;
            set
            {
                textBoxグリッドグラフ色.Text = value;
                UpdatePictureBoxPreview(pictureBoxグリッドグラフ色, value);
            }
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

        private Color SafeParseColor(string text)
        {
            try { return ParseColor(text); }
            catch { return Color.Transparent; }
        }

        private static Color ParseColor(string colorString)
        {
            // カラー名か試す
            Color color = Color.FromName(colorString);
            if (color.IsKnownColor)
                return color;

            // "R,G,B" 形式か試す
            var parts = colorString.Split(',');
            if (parts.Length == 3 &&
                int.TryParse(parts[0], out int r) &&
                int.TryParse(parts[1], out int g) &&
                int.TryParse(parts[2], out int b))
            {
                return Color.FromArgb(r, g, b);
            }

            // どちらでもない場合はException
            throw new ArgumentException($"無効な色指定: {colorString}");
        }

        private string ToColorString(Color color)
        {
            return color.IsKnownColor ? color.Name : $"{color.R},{color.G},{color.B}";
        }

        private void UpdatePictureBoxPreview(PictureBox pictureBox, string colorString)
        {
            var color = SafeParseColor(colorString);
            pictureBox.BackColor = color;

            // 無効な色なら赤い枠線を疑似的に表示
            if (color == Color.Transparent)
            {
                pictureBox.Padding = new Padding(1);
                pictureBox.BackColor = Color.White;
                pictureBox.BorderStyle = BorderStyle.FixedSingle;
                pictureBox.BackColor = Color.Red;
            }
            else
            {
                pictureBox.Padding = new Padding(0);
                pictureBox.BorderStyle = BorderStyle.FixedSingle;
            }
        }

        // ----- 色変更 -------------------------------------------------
        private void textBoxトップバー色_TextChanged(object sender, EventArgs e)
        {
            UpdatePictureBoxPreview(pictureBoxトップバー色, トップバー色);
        }

        private void textBoxメニュー背景色_TextChanged(object sender, EventArgs e)
        {
            UpdatePictureBoxPreview(pictureBoxメニュー背景色, メニュー背景色);
        }

        private void textBoxグリッド見出し背景色_TextChanged(object sender, EventArgs e)
        {
            UpdatePictureBoxPreview(pictureBoxグリッド見出し背景色, グリッド見出し背景色);
        }

        private void textBoxグリッド選択行背景色_TextChanged(object sender, EventArgs e)
        {
            UpdatePictureBoxPreview(pictureBoxグリッド選択行背景色, グリッド選択行背景色);
        }

        private void textBoxグリッド選択行文字色_TextChanged(object sender, EventArgs e)
        {
            UpdatePictureBoxPreview(pictureBoxグリッド選択行文字色, グリッド選択行文字色);
        }

        private void textBoxグリッドグラフ色_TextChanged(object sender, EventArgs e)
        {
            UpdatePictureBoxPreview(pictureBoxグリッドグラフ色, グリッドグラフ色);
        }

        // ----- 色選択ダイアログ -------------------------------------------------
        private void pictureBoxトップバー色_Click(object sender, EventArgs e)
        {
            using var dialog = new ColorDialog();
            if (dialog.ShowDialog() == DialogResult.OK)
            {
                トップバー色 = ToColorString(dialog.Color);
            }
        }

        private void pictureBoxメニュー背景色_Click(object sender, EventArgs e)
        {
            using var dialog = new ColorDialog();
            if (dialog.ShowDialog() == DialogResult.OK)
            {
                メニュー背景色 = ToColorString(dialog.Color);
            }
        }

        private void pictureBoxグリッド見出し背景色_Click(object sender, EventArgs e)
        {
            using var dialog = new ColorDialog();
            if (dialog.ShowDialog() == DialogResult.OK)
            {
                グリッド見出し背景色 = ToColorString(dialog.Color);
            }
        }

        private void pictureBoxグリッド選択行背景色_Click(object sender, EventArgs e)
        {
            using var dialog = new ColorDialog();
            if (dialog.ShowDialog() == DialogResult.OK)
            {
                グリッド選択行背景色 = ToColorString(dialog.Color);
            }
        }

        private void pictureBoxグリッド選択行文字色_Click(object sender, EventArgs e)
        {
            using var dialog = new ColorDialog();
            if (dialog.ShowDialog() == DialogResult.OK)
            {
                グリッド選択行文字色 = ToColorString(dialog.Color);
            }
        }

        private void pictureBoxグリッドグラフ色_Click(object sender, EventArgs e)
        {
            using var dialog = new ColorDialog();
            if (dialog.ShowDialog() == DialogResult.OK)
            {
                グリッドグラフ色 = ToColorString(dialog.Color);
            }
        }

        // ----- 全て初期値 -------------------------------------------------
        private void button全て初期値_Click(object sender, EventArgs e)
        {
            トップバー色 = label初期値トップバー色.Text;
            メニュー背景色 = label初期値メニュー背景色.Text;
            グリッド見出し背景色 = label初期値グリッド見出し背景色.Text;
            グリッド選択行背景色 = label初期値グリッド選択行背景色.Text;
            グリッド選択行文字色 = label初期値グリッド選択行文字色.Text;
            グリッドグラフ色 = label初期値グリッドグラフ色.Text;
        }

        private void button保存_Click(object sender, EventArgs e)
        {
            SaveSetting();
            var toast = new ToastPanel();
            toast.ShowToast(Message, this);
        }

        private void buttonキャンセル_Click(object sender, EventArgs e)
        {
            Cancel();
        }
    }
}
