namespace WinFormsMenuDemo.Views.Shared
{
    public interface IForm得意先一覧View
    {
        // 列
        string 得意先Id { get; set; }
        string 得意先名 { get; set; }
        string SearchValue { get; set; }

        // イベント
        event EventHandler SearchEvent;
        event EventHandler SelectEvent;
        event EventHandler CancelEvent;

        // メソッド
        void Set得意先一覧ListBindingSource(BindingSource 得意先list);
        void Show();
    }
}
