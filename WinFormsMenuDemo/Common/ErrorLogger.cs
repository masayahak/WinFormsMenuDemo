using System.Runtime.CompilerServices;
using System.Configuration;
using WinFormsMenuDemo.Models;
using WinFormsMenuDemo.Repositories;

namespace WinFormsMenuDemo.Common
{
    public static class ErrorLogger
    {
        public static void Log(
            Exception ex,
            Control? senderControl = null,
            string? 備考 = null,
            [CallerMemberName] string 処理名 = "")
        {
            try
            {
                string? 画面名 = senderControl?.FindForm()?.Text;

                var connectionString = ConfigurationManager.ConnectionStrings["sqlConnectionString"].ConnectionString;
                var repository = new 障害ログRepository(connectionString);

                var model = new 障害ログModel
                {
                    発生日時 = DateTime.Now,
                    画面名 = 画面名 ?? "不明",
                    処理名 = 処理名,
                    メッセージ = ex.Message,
                    スタックトレース = ex.StackTrace ?? "",
                    備考 = 備考 ?? ""
                };

                repository.Add(model);
            }
            catch
            {
                // ログ書き込み失敗は無視
            }
        }

    }
}
