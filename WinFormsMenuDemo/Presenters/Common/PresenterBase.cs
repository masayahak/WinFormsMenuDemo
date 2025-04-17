namespace WinFormsMenuDemo.Presenters.Common
{
    public abstract class PresenterBase
    {
        public abstract void HandleWithErrorLogging(Action action);
    }
}