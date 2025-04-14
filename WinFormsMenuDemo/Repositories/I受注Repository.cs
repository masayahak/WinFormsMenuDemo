using WinFormsMenuDemo.Models;

namespace WinFormsMenuDemo.Repositories
{
    public interface I受注Repository
    {
        bool Add(受注Model model);
        bool Edit(受注Model model);
        bool Delete(受注Model model);
        IEnumerable<受注Model> GetAll();
        IEnumerable<受注Model> GetByValue(string searchValue);
    }
}
