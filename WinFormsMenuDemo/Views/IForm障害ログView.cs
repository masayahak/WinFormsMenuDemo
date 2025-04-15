namespace WinFormsMenuDemo.Views
{
    public interface IForm障害ログView
    {
        // 列
        string Id { get; set; }
        string 発生日時 { get; set; }
        string 画面名 { get; set; }
        string 処理名 { get; set; }
        string メッセージ { get; set; }
        string スタックトレース { get; set; }
        string クライアント情報 { get; set; }
        string 備考 { get; set; }

        // 検索・状態
        string SearchValue { get; set; }              // 例: "2024/01/01,2024/01/10"

        // イベント
        event EventHandler SearchEvent;
        event EventHandler ShowDetailEvent;
        event EventHandler CancelEvent;

        // メソッド
        void Set障害ログListBindingSource(BindingSource 障害ログList);
        void Show();
    }
}
