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

            // 1. UI �X���b�h��̖��ߑ���O���L���b�`
            Application.SetUnhandledExceptionMode(UnhandledExceptionMode.CatchException);
            Application.ThreadException += OnThreadException;

            // 2. UI �ȊO�̃X���b�h�̖��ߑ���O���L���b�`
            AppDomain.CurrentDomain.UnhandledException += OnUnhandledException;

            // 3. Task �̖��ϑ���O���L���b�`
            TaskScheduler.UnobservedTaskException += OnUnobservedTaskException;

            Application.Run(new FormMain());
        }

        private static void OnThreadException(object sender, ThreadExceptionEventArgs e)
        {
            // UI �X���b�h�̗�O
            LogException(e.Exception);
            MessageBox.Show($"�\�����ʃG���[���������܂����F{e.Exception.Message}", "�G���[", MessageBoxButtons.OK, MessageBoxIcon.Error);
        }

        private static void OnUnhandledException(object sender, UnhandledExceptionEventArgs e)
        {
            // UI �ȊO�X���b�h�̗�O
            if (e.ExceptionObject is Exception ex)
            {
                LogException(ex);
                MessageBox.Show($"�v���I�ȃG���[���������܂����F{ex.Message}", "�v���I�G���[", MessageBoxButtons.OK, MessageBoxIcon.Stop);
            }
        }

        private static void OnUnobservedTaskException(object? sender, UnobservedTaskExceptionEventArgs e)
        {
            // Task �̗�O
            LogException(e.Exception);
            e.SetObserved();  // ��O�����ɏ����ς݂ɂ���
        }

        private static void LogException(Exception ex)
        {
            ErrorLogger.Log(ex, null);
        }
    }
}