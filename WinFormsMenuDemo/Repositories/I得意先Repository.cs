using WinFormsMenuDemo.Models;

namespace WinFormsMenuDemo.Repositories
{
    public interface I得意先Repository
    {
        bool Add(得意先Model model);
        bool Edit(得意先Model model);
        bool Delete(得意先Model model);
        IEnumerable<得意先Model> GetAll();
        IEnumerable<得意先Model> GetByValue(string searchValue);
    }
}
