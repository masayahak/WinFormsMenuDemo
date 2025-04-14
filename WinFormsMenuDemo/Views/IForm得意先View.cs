namespace WinFormsMenuDemo.Views
{
    public interface IForm得意先View
    {
        // 列
        string 得意先Id { get; set; }
        string 得意先名 { get; set; }
        string 住所 { get; set; }
        string 電話番号 { get; set; }
        string メール { get; set; }
        bool Is削除済み { get; set; }
        string 備考 { get; set; }
        int Version { get; set; }

        string SearchValue { get; set; }
        bool IsEdit { get; set; }
        bool IsSuccessful { get; set; }
        string Message { get; set; }

        // イベント
        event EventHandler SearchEvent;
        event EventHandler AddNewEvent;
        event EventHandler EditEvent;
        event EventHandler DeleteEvent;
        event EventHandler SaveEvent;
        event EventHandler CancelEvent;

        // メソッド
        void Set得意先ListBindingSource(BindingSource 得意先list);
        void Show();
    }
}
