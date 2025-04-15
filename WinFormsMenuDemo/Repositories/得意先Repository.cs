using Microsoft.Data.SqlClient;
using System.Data;
using WinFormsMenuDemo.Models;

namespace WinFormsMenuDemo.Repositories
{
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

        public IEnumerable<得意先Model> GetAll()
        {
            var 得意先List = new List<得意先Model>();

            using (var connection = new SqlConnection(connectionString))
            using (var command = new SqlCommand())
            {
                connection.Open();
                command.Connection = connection;
                command.CommandText = "select * from T得意先 order by 得意先Id;";
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

                        得意先List.Add(model);
                    }
                }
            }
            return 得意先List;
        }

        public IEnumerable<得意先Model> GetByValue(string searchValue)
        {
            var 得意先List = new List<得意先Model>();

            using (var connection = new SqlConnection(connectionString))
            using (var command = new SqlCommand())
            {
                connection.Open();
                command.Connection = connection;

                command.CommandText = @"select * from T得意先 
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

                        得意先List.Add(model);
                    }
                }
            }
            return 得意先List;
        }
    }
}
