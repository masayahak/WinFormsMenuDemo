using WinFormsMenuDemo.Models.Shared;

namespace WinFormsMenuDemo.Repositories.Shared
{
    public interface I得意先Repository
    {
        IEnumerable<得意先一覧Model> GetAll();
        IEnumerable<得意先一覧Model> GetByValue(string searchValue);
    }
}
