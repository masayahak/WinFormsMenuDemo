using Microsoft.Data.SqlClient;
using System.Data;
using WinFormsMenuDemo.Models;

namespace WinFormsMenuDemo.Repositories
{
    public class 受注一覧結果
    {
        public IEnumerable<受注Model> List { get; set; } = [];
        public int 実際の件数 { get; set; }
        public int 表示上限 => Properties.Settings.Default.MaxSelectCount;
        public bool Is上限超過 => 実際の件数 > 表示上限;
    }

    public interface I受注Repository
    {
        bool Add(受注Model model);
        bool Edit(受注Model model);
        bool Delete(受注Model model);
        受注一覧結果 GetAll();
        受注一覧結果 GetByValue(string searchValue);
    }

    public class 受注Repository : BaseRepository, I受注Repository
    {
        //コンストラクタ
        public 受注Repository(string connectionString)
        {
            this.connectionString = connectionString;
        }

        //メソッド
        public bool Add(受注Model model)
        {
            using (var connection = new SqlConnection(connectionString))
            using (var command = new SqlCommand())
            {
                connection.Open();
                command.Connection = connection;
                command.CommandText = "insert into T受注 values(@得意先Id, @得意先名, @受注日, @合計金額, @Is売上済み, @備考, @Version);";
                command.Parameters.Add("@得意先Id", SqlDbType.Int).Value = model.得意先Id;
                command.Parameters.Add("@得意先名", SqlDbType.NVarChar).Value = model.得意先名;
                command.Parameters.Add("@受注日", SqlDbType.DateTime).Value = model.受注日;
                command.Parameters.Add("@合計金額", SqlDbType.Decimal).Value = model.合計金額;
                command.Parameters.Add("@Is売上済み", SqlDbType.Bit).Value = model.Is売上済み;
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

        public bool Edit(受注Model model)
        {
            using (var connection = new SqlConnection(connectionString))
            using (var command = new SqlCommand())
            {
                connection.Open();
                command.Connection = connection;
                command.CommandText = @"update T受注 
                                            set 得意先Id=@得意先Id, 
                                                得意先名=@得意先名, 
                                                受注日=@受注日, 
                                                合計金額=@合計金額, 
                                                Is売上済み=@Is売上済み, 
                                                備考=@備考,
                                                Version=Version+1
                                          where 受注Id=@受注Id
                                            and Version=@Version;";
                command.Parameters.Add("@受注Id", SqlDbType.Int).Value = model.受注Id;
                command.Parameters.Add("@得意先Id", SqlDbType.Int).Value = model.得意先Id;
                command.Parameters.Add("@得意先名", SqlDbType.NVarChar).Value = model.得意先名;
                command.Parameters.Add("@受注日", SqlDbType.DateTime).Value = model.受注日;
                command.Parameters.Add("@合計金額", SqlDbType.Decimal).Value = model.合計金額;
                command.Parameters.Add("@Is売上済み", SqlDbType.Bit).Value = model.Is売上済み;
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

        public bool Delete(受注Model model)
        {
            using (var connection = new SqlConnection(connectionString))
            using (var command = new SqlCommand())
            {
                connection.Open();
                command.Connection = connection;
                command.CommandText = @"delete from T受注
                                            where 受注Id = @受注Id
                                              and Version = @Version; ";
                command.Parameters.Add("@受注Id", SqlDbType.Int).Value = model.受注Id;
                command.Parameters.Add("@Version", SqlDbType.Int).Value = model.Version;
                int deleteCount = command.ExecuteNonQuery();
                if (deleteCount == 0)
                {
                    return false; // 更新されていない場合
                }
            }

            return true;
        }

        public 受注一覧結果 GetAll()
        {
            var 結果 = new 受注一覧結果();
            var list = new List<受注Model>();

            using (var connection = new SqlConnection(connectionString))
            using (var command = new SqlCommand())
            {
                connection.Open();
                command.Connection = connection;
                command.CommandText = $"select TOP {結果.表示上限 + 1} * from T受注 order by 受注Id desc;";
                using (var reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        var model = new 受注Model();
                        model.受注Id = reader.GetInt32(reader.GetOrdinal("受注Id"));
                        model.得意先Id = reader.GetInt32(reader.GetOrdinal("得意先Iｄ"));
                        model.得意先名 = reader.GetString(reader.GetOrdinal("得意先名"));
                        model.受注日 = reader.GetDateTime(reader.GetOrdinal("受注日"));
                        model.合計金額 = (int)reader.GetDecimal(reader.GetOrdinal("合計金額"));
                        model.Is売上済み = reader.GetBoolean(reader.GetOrdinal("Is売上済み"));
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
                    using (var countCommand = new SqlCommand("SELECT COUNT(*) FROM T受注", connection))
                    {
                        結果.実際の件数 = (int)countCommand.ExecuteScalar()!;
                    }

                    list = list.Take(結果.表示上限).ToList();
                }
            }

            結果.List = list;
            return 結果;
        }

        public 受注一覧結果 GetByValue(string searchValue)
        {
            var 結果 = new 受注一覧結果();
            var list = new List<受注Model>();

            using (var connection = new SqlConnection(connectionString))
            using (var command = new SqlCommand())
            {
                connection.Open();
                command.Connection = connection;


                command.CommandText = $@"select TOP {結果.表示上限 + 1} * from T受注 
                                        where 受注Id=@id or 得意先名 like @name+'%'
                                        order by 受注Id desc;";

                int 受注Id = int.TryParse(searchValue, out _) ? Convert.ToInt32(searchValue) : 0;
                string 得意先名 = searchValue;
                command.Parameters.Add("@id", SqlDbType.Int).Value = 受注Id;
                command.Parameters.Add("@name", SqlDbType.NVarChar).Value = 得意先名;

                using (var reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        var model = new 受注Model();
                        model.受注Id = reader.GetInt32(reader.GetOrdinal("受注Id"));
                        model.得意先Id = reader.GetInt32(reader.GetOrdinal("得意先Iｄ"));
                        model.得意先名 = reader.GetString(reader.GetOrdinal("得意先名"));
                        model.受注日 = reader.GetDateTime(reader.GetOrdinal("受注日"));
                        model.合計金額 = (int)reader.GetDecimal(reader.GetOrdinal("合計金額"));
                        model.Is売上済み = reader.GetBoolean(reader.GetOrdinal("Is売上済み"));
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
                        "SELECT COUNT(*) FROM T受注 WHERE 受注Id = @id OR 得意先名 LIKE @name + '%'", connection))
                    {
                        countCommand.Parameters.Add("@id", SqlDbType.Int).Value = 受注Id;
                        countCommand.Parameters.Add("@name", SqlDbType.NVarChar).Value = 得意先名;

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
