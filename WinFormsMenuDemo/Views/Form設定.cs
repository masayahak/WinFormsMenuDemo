using WinFormsMenuDemo.Common;
using WinFormsMenuDemo.Controls;

namespace WinFormsMenuDemo.Views
{
    public interface IForm設定View
    {
        // 列
        string トップバー色 { get; set; }
        string メニュー背景色 { get; set; }
        string グリッド見出し背景色 { get; set; }
        string グリッド選択行背景色 { get; set; }
        string グリッド選択行文字色 { get; set; }
        string グリッドグラフ色 { get; set; }

        bool IsSuccessful { get; set; }
        string Message { get; set; }

        // イベント
        event EventHandler? ThemeChanged;
    }

    public partial class Form設定 : Form, IForm設定View
    {
        private bool _isSuccessful;
        private string _message = string.Empty;

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

                ErrorLogger.Log(ex, this);

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
            get => TextBoxトップバー色.Text;
            set
            {
                TextBoxトップバー色.Text = value;
                UpdatePictureBoxPreview(PictureBoxトップバー色, value);
            }
        }
        public string メニュー背景色
        {
            get => TextBoxメニュー背景色.Text;
            set
            {
                TextBoxメニュー背景色.Text = value;
                UpdatePictureBoxPreview(PictureBoxメニュー背景色, value);
            }
        }
        public string グリッド見出し背景色
        {
            get => TextBoxグリッド見出し背景色.Text;
            set
            {
                TextBoxグリッド見出し背景色.Text = value;
                UpdatePictureBoxPreview(PictureBoxグリッド見出し背景色, value);
            }
        }
        public string グリッド選択行背景色
        {
            get => TextBoxグリッド選択行背景色.Text;
            set
            {
                TextBoxグリッド選択行背景色.Text = value;
                UpdatePictureBoxPreview(PictureBoxグリッド選択行背景色, value);
            }
        }
        public string グリッド選択行文字色
        {
            get => TextBoxグリッド選択行文字色.Text;
            set
            {
                TextBoxグリッド選択行文字色.Text = value;
                UpdatePictureBoxPreview(PictureBoxグリッド選択行文字色, value);
            }
        }
        public string グリッドグラフ色
        {
            get => TextBoxグリッドグラフ色.Text;
            set
            {
                TextBoxグリッドグラフ色.Text = value;
                UpdatePictureBoxPreview(PictureBoxグリッドグラフ色, value);
            }
        }

        public bool IsSuccessful
        {
            get { return _isSuccessful; }
            set { _isSuccessful = value; }
        }

        public string Message
        {
            get { return _message; }
            set { _message = value; }
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
        private void TextBoxトップバー色_TextChanged(object sender, EventArgs e)
        {
            UpdatePictureBoxPreview(PictureBoxトップバー色, トップバー色);
        }

        private void TextBoxメニュー背景色_TextChanged(object sender, EventArgs e)
        {
            UpdatePictureBoxPreview(PictureBoxメニュー背景色, メニュー背景色);
        }

        private void TextBoxグリッド見出し背景色_TextChanged(object sender, EventArgs e)
        {
            UpdatePictureBoxPreview(PictureBoxグリッド見出し背景色, グリッド見出し背景色);
        }

        private void TextBoxグリッド選択行背景色_TextChanged(object sender, EventArgs e)
        {
            UpdatePictureBoxPreview(PictureBoxグリッド選択行背景色, グリッド選択行背景色);
        }

        private void TextBoxグリッド選択行文字色_TextChanged(object sender, EventArgs e)
        {
            UpdatePictureBoxPreview(PictureBoxグリッド選択行文字色, グリッド選択行文字色);
        }

        private void TextBoxグリッドグラフ色_TextChanged(object sender, EventArgs e)
        {
            UpdatePictureBoxPreview(PictureBoxグリッドグラフ色, グリッドグラフ色);
        }

        // ----- 色選択ダイアログ -------------------------------------------------
        private void PictureBoxトップバー色_Click(object sender, EventArgs e)
        {
            using var dialog = new ColorDialog();
            if (dialog.ShowDialog() == DialogResult.OK)
            {
                トップバー色 = ToColorString(dialog.Color);
            }
        }

        private void PictureBoxメニュー背景色_Click(object sender, EventArgs e)
        {
            using var dialog = new ColorDialog();
            if (dialog.ShowDialog() == DialogResult.OK)
            {
                メニュー背景色 = ToColorString(dialog.Color);
            }
        }

        private void PictureBoxグリッド見出し背景色_Click(object sender, EventArgs e)
        {
            using var dialog = new ColorDialog();
            if (dialog.ShowDialog() == DialogResult.OK)
            {
                グリッド見出し背景色 = ToColorString(dialog.Color);
            }
        }

        private void PictureBoxグリッド選択行背景色_Click(object sender, EventArgs e)
        {
            using var dialog = new ColorDialog();
            if (dialog.ShowDialog() == DialogResult.OK)
            {
                グリッド選択行背景色 = ToColorString(dialog.Color);
            }
        }

        private void PictureBoxグリッド選択行文字色_Click(object sender, EventArgs e)
        {
            using var dialog = new ColorDialog();
            if (dialog.ShowDialog() == DialogResult.OK)
            {
                グリッド選択行文字色 = ToColorString(dialog.Color);
            }
        }

        private void PictureBoxグリッドグラフ色_Click(object sender, EventArgs e)
        {
            using var dialog = new ColorDialog();
            if (dialog.ShowDialog() == DialogResult.OK)
            {
                グリッドグラフ色 = ToColorString(dialog.Color);
            }
        }

        // ----- 全て初期値 -------------------------------------------------
        private void Btn全て初期値_Click(object sender, EventArgs e)
        {
            トップバー色 = Label初期値トップバー色.Text;
            メニュー背景色 = Label初期値メニュー背景色.Text;
            グリッド見出し背景色 = Label初期値グリッド見出し背景色.Text;
            グリッド選択行背景色 = Label初期値グリッド選択行背景色.Text;
            グリッド選択行文字色 = Label初期値グリッド選択行文字色.Text;
            グリッドグラフ色 = Label初期値グリッドグラフ色.Text;
        }

        private void Btn保存_Click(object sender, EventArgs e)
        {
            SaveSetting();
            var toast = new ToastPanel();
            toast.ShowToast(Message, this);
        }

        private void Btnキャンセル_Click(object sender, EventArgs e)
        {
            Cancel();
        }
    }
}
