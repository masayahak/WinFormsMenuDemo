using Microsoft.Data.SqlClient;
using System.Data;
using WinFormsMenuDemo.Models;

namespace WinFormsMenuDemo.Repositories
{
    public class 得意先一覧結果
    {
        public IEnumerable<得意先Model> List { get; set; } = [];
        public int 実際の件数 { get; set; }
        public int 表示上限 => Properties.Settings.Default.MaxSelectCount;
        public bool Is上限超過 => 実際の件数 > 表示上限;
    }

    public interface I得意先Repository
    {
        bool Add(得意先Model model);
        bool Edit(得意先Model model);
        bool Delete(得意先Model model);
        得意先一覧結果 GetAll();
        得意先一覧結果 GetByValue(string searchValue);
    }

    public class 得意先Repository : BaseRepository, I得意先Repository
    {
        //コンストラクタ
        public 得意先Repository(string connectionString)
        {
            this.connectionString = connectionString;
        }

        //メソッド
        public bool Add(得意先Model model)
        {
            using (var connection = new SqlConnection(connectionString))
            using (var command = new SqlCommand())
            {
                connection.Open();
                command.Connection = connection;
                command.CommandText = "insert into T得意先 values(@得意先名, @住所, @電話番号, @メール, @Is削除済み, @備考, @Version);";
                command.Parameters.Add("@得意先名", SqlDbType.NVarChar).Value = model.得意先名;
                command.Parameters.Add("@住所", SqlDbType.NVarChar).Value = model.住所;
                command.Parameters.Add("@電話番号", SqlDbType.NVarChar).Value = model.電話番号;
                command.Parameters.Add("@メール", SqlDbType.NVarChar).Value = model.メール;
                command.Parameters.Add("@Is削除済み", SqlDbType.Bit).Value = model.Is削除済み;
                command.Parameters.Add("@備考", SqlDbType.NVarChar).Value = model.備考 ?? (object)DBNull.Value;
                command.Parameters.Add("@Version", SqlDbType.Int).Value = model.Version;

                int addCount = command.ExecuteNonQuery();
                if (addCount == 0)
                {
                    return false; // 更新されていない場合
                }

                return true; // 更新成功
            }
        }

        public bool Edit(得意先Model model)
        {
            using (var connection = new SqlConnection(connectionString))
            using (var command = new SqlCommand())
            {
                connection.Open();
                command.Connection = connection;
                command.CommandText = @"update T得意先 
                                            set 得意先名=@得意先名, 
                                                住所=@住所, 
                                                電話番号=@電話番号, 
                                                メール=@メール, 
                                                Is削除済み=@Is削除済み, 
                                                備考=@備考,
                                                Version=Version+1
                                          where 得意先Id=@得意先Id
                                            and Version=@Version;";
                command.Parameters.Add("@得意先Id", SqlDbType.Int).Value = model.得意先Id;
                command.Parameters.Add("@得意先名", SqlDbType.NVarChar).Value = model.得意先名;
                command.Parameters.Add("@住所", SqlDbType.NVarChar).Value = model.住所;
                command.Parameters.Add("@電話番号", SqlDbType.NVarChar).Value = model.電話番号;
                command.Parameters.Add("@メール", SqlDbType.NVarChar).Value = model.メール;
                command.Parameters.Add("@Is削除済み", SqlDbType.Bit).Value = model.Is削除済み;
                command.Parameters.Add("@備考", SqlDbType.NVarChar).Value = model.備考 ?? (object)DBNull.Value;
                command.Parameters.Add("@Version", SqlDbType.Int).Value = model.Version;

                int updateCount = command.ExecuteNonQuery();
                if (updateCount == 0)
                {
                    return false; // 更新されていない場合
                }

                return true; // 更新成功
            }
        }

        public bool Delete(得意先Model model)
        {
            using (var connection = new SqlConnection(connectionString))
            using (var command = new SqlCommand())
            {
                connection.Open();
                command.Connection = connection;
                command.CommandText = @"update T得意先 
                                            set Is削除済み=1, 
                                                Version=Version+1
                                          where 得意先Id=@得意先Id
                                            and Version=@Version;";
                command.Parameters.Add("@得意先Id", SqlDbType.Int).Value = model.得意先Id;
                command.Parameters.Add("@Version", SqlDbType.Int).Value = model.Version;

                int deleteCount = command.ExecuteNonQuery();
                if (deleteCount == 0)
                {
                    return false; // 更新されていない場合
                }
            }

            return true;
        }

        public 得意先一覧結果 GetAll()
        {
            var 結果 = new 得意先一覧結果();
            var list = new List<得意先Model>();

            using (var connection = new SqlConnection(connectionString))
            using (var command = new SqlCommand())
            {
                connection.Open();
                command.Connection = connection;
                command.CommandText = $"select TOP {結果.表示上限 + 1} * from T得意先 order by 得意先Id desc;";
                using (var reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        var model = new 得意先Model();
                        model.得意先Id = reader.GetInt32(reader.GetOrdinal("得意先Id"));
                        model.得意先名 = reader.GetString(reader.GetOrdinal("得意先名"));
                        model.住所 = reader.GetString(reader.GetOrdinal("住所"));
                        model.電話番号 = reader.GetString(reader.GetOrdinal("電話番号"));
                        model.メール = reader.GetString(reader.GetOrdinal("メール"));
                        model.Is削除済み = reader.GetBoolean(reader.GetOrdinal("Is削除済み"));
                        model.備考 = reader.IsDBNull(reader.GetOrdinal("備考")) ? null : reader.GetString(reader.GetOrdinal("備考"));
                        model.Version = reader.GetInt32(reader.GetOrdinal("Version"));

                        list.Add(model);
                    }
                }
                結果.実際の件数 = list.Count;

                // 件数判定
                if (list.Count > 結果.表示上限)
                {
                    // 上限超過確定 → 実件数取得
                    using (var countCommand = new SqlCommand("SELECT COUNT(*) FROM T得意先", connection))
                    {
                        結果.実際の件数 = (int)countCommand.ExecuteScalar()!;
                    }

                    list = list.Take(結果.表示上限).ToList();
                }
            }

            結果.List = list;
            return 結果;
        }

        public 得意先一覧結果 GetByValue(string searchValue)
        {
            var 結果 = new 得意先一覧結果();
            var list = new List<得意先Model>();

            using (var connection = new SqlConnection(connectionString))
            using (var command = new SqlCommand())
            {
                connection.Open();
                command.Connection = connection;

                command.CommandText = $@"select TOP {結果.表示上限 + 1} * from T得意先 
                                        where 得意先Id=@id or 得意先名 like @name+'%'
                                        order by 得意先Id;";

                int 得意先Id = int.TryParse(searchValue, out _) ? Convert.ToInt32(searchValue) : 0;
                string 得意先名 = searchValue;
                command.Parameters.Add("@id", SqlDbType.Int).Value = 得意先Id;
                command.Parameters.Add("@name", SqlDbType.NVarChar).Value = 得意先名;

                using (var reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        var model = new 得意先Model();
                        model.得意先Id = reader.GetInt32(reader.GetOrdinal("得意先Id"));
                        model.得意先名 = reader.GetString(reader.GetOrdinal("得意先名"));
                        model.住所 = reader.GetString(reader.GetOrdinal("住所"));
                        model.電話番号 = reader.GetString(reader.GetOrdinal("電話番号"));
                        model.メール = reader.GetString(reader.GetOrdinal("メール"));
                        model.Is削除済み = reader.GetBoolean(reader.GetOrdinal("Is削除済み"));
                        model.備考 = reader.IsDBNull(reader.GetOrdinal("備考")) ? null : reader.GetString(reader.GetOrdinal("備考"));
                        model.Version = reader.GetInt32(reader.GetOrdinal("Version"));

                        list.Add(model);
                    }
                }

                結果.実際の件数 = list.Count;

                // 件数判定
                if (list.Count > 結果.表示上限)
                {
                    // 上限超過確定 → 実件数取得
                    using (var countCommand = new SqlCommand(
                        "SELECT COUNT(*) FROM T得意先 WHERE 得意先Id = @id OR 得意先名 LIKE @name + '%'", connection))
                    {
                        command.Parameters.Add("@id", SqlDbType.Int).Value = 得意先Id;
                        command.Parameters.Add("@name", SqlDbType.NVarChar).Value = 得意先名;

                        結果.実際の件数 = (int)countCommand.ExecuteScalar()!;
                    }

                    list = list.Take(結果.表示上限).ToList();
                }
            }

            結果.List = list;
            return 結果;
        }
    }
}
