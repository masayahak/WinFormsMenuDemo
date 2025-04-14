using Microsoft.Data.SqlClient;
using System.Data;
using WinFormsMenuDemo.Models.Shared;

namespace WinFormsMenuDemo.Repositories.Shared
{
    public class 得意先Repository : BaseRepository, I得意先Repository
    {
        //コンストラクタ
        public 得意先Repository(string connectionString)
        {
            this.connectionString = connectionString;
        }

        //メソッド
        public IEnumerable<得意先一覧Model> GetAll()
        {
            var 得意先List = new List<得意先一覧Model>();

            using (var connection = new SqlConnection(connectionString))
            using (var command = new SqlCommand())
            {
                connection.Open();
                command.Connection = connection;
                command.CommandText = @"select 得意先Id, 得意先名 from T得意先 
                                        where Is削除済み=0
                                        order by 得意先名;";
                using (var reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        var model = new 得意先一覧Model();
                        model.得意先Id = reader.GetInt32(reader.GetOrdinal("得意先Id"));
                        model.得意先名 = reader.GetString(reader.GetOrdinal("得意先名"));

                        得意先List.Add(model);
                    }
                }
            }
            return 得意先List;
        }

        public IEnumerable<得意先一覧Model> GetByValue(string searchValue)
        {
            var 得意先List = new List<得意先一覧Model>();

            using (var connection = new SqlConnection(connectionString))
            using (var command = new SqlCommand())
            {
                connection.Open();
                command.Connection = connection;
                command.CommandText = @"select 得意先Id, 得意先名 from T得意先 
                                        where Is削除済み=0
                                        and (得意先Id = @id or 得意先名 like '%' + @name + '%')
                                        order by 得意先名;";
                int 得意先Id = int.TryParse(searchValue, out _) ? Convert.ToInt32(searchValue) : 0;
                string 得意先名 = searchValue;
                command.Parameters.Add("@id", SqlDbType.Int).Value = 得意先Id;
                command.Parameters.Add("@name", SqlDbType.NVarChar).Value = 得意先名;

                using (var reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        var model = new 得意先一覧Model();
                        model.得意先Id = reader.GetInt32(reader.GetOrdinal("得意先Id"));
                        model.得意先名 = reader.GetString(reader.GetOrdinal("得意先名"));

                        得意先List.Add(model);
                    }
                }
            }
            return 得意先List;
        }
    }
}
