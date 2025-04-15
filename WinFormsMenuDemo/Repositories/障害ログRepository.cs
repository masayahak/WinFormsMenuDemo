using Microsoft.Data.SqlClient;
using System.Data;
using WinFormsMenuDemo.Models;

namespace WinFormsMenuDemo.Repositories
{
    public class 障害ログRepository : BaseRepository, I障害ログRepository
    {
        public 障害ログRepository(string connectionString)
        {
            this.connectionString = connectionString;
        }

        public bool Add(障害ログModel model)
        {
            using var connection = new SqlConnection(connectionString);
            using var command = new SqlCommand();
            connection.Open();

            command.Connection = connection;
            command.CommandText = @"
                insert into T障害ログ 
                    (メッセージ, スタックトレース, 画面名, 処理名, クライアント情報, 備考)
                values 
                    (@メッセージ, @スタックトレース, @画面名, @処理名, @クライアント情報, @備考);";

            command.Parameters.Add("@メッセージ", SqlDbType.NVarChar, 4000).Value = model.メッセージ;
            command.Parameters.Add("@スタックトレース", SqlDbType.NVarChar).Value = (object?)model.スタックトレース ?? DBNull.Value;
            command.Parameters.Add("@画面名", SqlDbType.NVarChar, 100).Value = (object?)model.画面名 ?? DBNull.Value;
            command.Parameters.Add("@処理名", SqlDbType.NVarChar, 100).Value = (object?)model.処理名 ?? DBNull.Value;
            command.Parameters.Add("@クライアント情報", SqlDbType.NVarChar, 100).Value = (object?)model.クライアント情報 ?? DBNull.Value;
            command.Parameters.Add("@備考", SqlDbType.NVarChar, 500).Value = (object?)model.備考 ?? DBNull.Value;

            return command.ExecuteNonQuery() > 0;
        }

        public IEnumerable<障害ログModel> GetAll()
        {
            var list = new List<障害ログModel>();

            using var connection = new SqlConnection(connectionString);
            using var command = new SqlCommand("select * from T障害ログ order by 発生日時 desc", connection);
            connection.Open();

            using var reader = command.ExecuteReader();
            while (reader.Read())
            {
                var model = new 障害ログModel
                {
                    Id = reader.GetInt32(reader.GetOrdinal("Id")),
                    発生日時 = reader.GetDateTime(reader.GetOrdinal("発生日時")),
                    メッセージ = reader.GetString(reader.GetOrdinal("メッセージ")),
                    スタックトレース = reader.IsDBNull(reader.GetOrdinal("スタックトレース")) ? null : reader.GetString(reader.GetOrdinal("スタックトレース")),
                    画面名 = reader.IsDBNull(reader.GetOrdinal("画面名")) ? null : reader.GetString(reader.GetOrdinal("画面名")),
                    処理名 = reader.IsDBNull(reader.GetOrdinal("処理名")) ? null : reader.GetString(reader.GetOrdinal("処理名")),
                    クライアント情報 = reader.IsDBNull(reader.GetOrdinal("クライアント情報")) ? null : reader.GetString(reader.GetOrdinal("クライアント情報")),
                    備考 = reader.IsDBNull(reader.GetOrdinal("備考")) ? null : reader.GetString(reader.GetOrdinal("備考")),
                };

                list.Add(model);
            }

            return list;
        }

        public IEnumerable<障害ログModel> GetByValue(string searchValue)
        {
            var list = new List<障害ログModel>();

            var parts = searchValue.Split(',', StringSplitOptions.TrimEntries);
            if (parts.Length == 0) return list;

            if (!DateTime.TryParse(parts[0], out var from)) return list;

            DateTime to;
            if (parts.Length < 2 || !DateTime.TryParse(parts[1], out to))
            {
                to = from;
            }

            if (parts[0].Length <= 10) from = from.Date;
            if (parts.Length < 2 || parts[1].Length <= 10) to = to.Date.AddDays(1).AddSeconds(-1);

            using var connection = new SqlConnection(connectionString);
            using var command = new SqlCommand();
            connection.Open();

            command.Connection = connection;
            command.CommandText = @"
                select * from T障害ログ
                where 発生日時 >= @from and 発生日時 <= @to
                order by 発生日時 desc;";

            command.Parameters.Add("@from", SqlDbType.DateTime).Value = from;
            command.Parameters.Add("@to", SqlDbType.DateTime).Value = to;

            using var reader = command.ExecuteReader();
            while (reader.Read())
            {
                var model = new 障害ログModel
                {
                    Id = reader.GetInt32(reader.GetOrdinal("Id")),
                    発生日時 = reader.GetDateTime(reader.GetOrdinal("発生日時")),
                    メッセージ = reader.GetString(reader.GetOrdinal("メッセージ")),
                    スタックトレース = reader.IsDBNull(reader.GetOrdinal("スタックトレース")) ? null : reader.GetString(reader.GetOrdinal("スタックトレース")),
                    画面名 = reader.IsDBNull(reader.GetOrdinal("画面名")) ? null : reader.GetString(reader.GetOrdinal("画面名")),
                    処理名 = reader.IsDBNull(reader.GetOrdinal("処理名")) ? null : reader.GetString(reader.GetOrdinal("処理名")),
                    クライアント情報 = reader.IsDBNull(reader.GetOrdinal("クライアント情報")) ? null : reader.GetString(reader.GetOrdinal("クライアント情報")),
                    備考 = reader.IsDBNull(reader.GetOrdinal("備考")) ? null : reader.GetString(reader.GetOrdinal("備考")),
                };

                list.Add(model);
            }

            return list;
        }
    }
}
