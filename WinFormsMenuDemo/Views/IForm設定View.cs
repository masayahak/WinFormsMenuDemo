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
}
