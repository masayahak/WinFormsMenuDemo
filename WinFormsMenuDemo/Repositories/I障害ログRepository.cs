using WinFormsMenuDemo.Models;

namespace WinFormsMenuDemo.Repositories
{
    public interface I障害ログRepository
    {
        bool Add(障害ログModel model);
        IEnumerable<障害ログModel> GetAll();
        IEnumerable<障害ログModel> GetByValue(string searchValue);
    }
}
