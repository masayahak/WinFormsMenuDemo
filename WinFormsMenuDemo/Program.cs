using WinFormsMenuDemo.Common;
using WinFormsMenuDemo.Views;

namespace WinFormsMenuDemo
{
    internal static class Program
    {
        /// <summary>
        ///  The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            // To customize application configuration such as set high DPI settings or default font,
            // see https://aka.ms/applicationconfiguration.
            ApplicationConfiguration.Initialize();

            // 1. UI スレッド上の未捕捉例外をキャッチ
            Application.SetUnhandledExceptionMode(UnhandledExceptionMode.CatchException);
            Application.ThreadException += OnThreadException;

            // 2. UI 以外のスレッドの未捕捉例外をキャッチ
            AppDomain.CurrentDomain.UnhandledException += OnUnhandledException;

            // 3. Task の未観測例外をキャッチ
            TaskScheduler.UnobservedTaskException += OnUnobservedTaskException;

            Application.Run(new FormMain());
        }

        private static void OnThreadException(object sender, ThreadExceptionEventArgs e)
        {
            // UI スレッドの例外
            LogException(e.Exception);
            MessageBox.Show($"予期せぬエラーが発生しました：{e.Exception.Message}", "エラー", MessageBoxButtons.OK, MessageBoxIcon.Error);
        }

        private static void OnUnhandledException(object sender, UnhandledExceptionEventArgs e)
        {
            // UI 以外スレッドの例外
            if (e.ExceptionObject is Exception ex)
            {
                LogException(ex);
                MessageBox.Show($"致命的なエラーが発生しました：{ex.Message}", "致命的エラー", MessageBoxButtons.OK, MessageBoxIcon.Stop);
            }
        }

        private static void OnUnobservedTaskException(object? sender, UnobservedTaskExceptionEventArgs e)
        {
            // Task の例外
            LogException(e.Exception);
            e.SetObserved();  // 例外を既に処理済みにする
        }

        private static void LogException(Exception ex)
        {
            ErrorLogger.Log(ex, null);
        }
    }
}