namespace WinFormsMenuDemo.Views
{
    public interface IForm受注View
    {
        // 列
        string 受注Id { get; set; }
        string 得意先Id { get; set; }
        string 得意先名 { get; set; }
        string 受注日 { get; set; }
        string 合計金額 { get; set; }
        bool Is売上済み { get; set; }
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
        void Set受注ListBindingSource(BindingSource 受注list);
        void Show();
    }
}
