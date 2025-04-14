using WinFormsMenuDemo.Models.Shared;
using WinFormsMenuDemo.Repositories.Shared;
using WinFormsMenuDemo.Views.Shared;

namespace WinFormsMenuDemo.Presenters.Shared
{
    public class 得意先一覧Presenter
    {
        //Fields
        private IForm得意先一覧View view;
        private I得意先Repository repository;
        private BindingSource 得意先一覧bindingSource;
        private IEnumerable<得意先一覧Model> 得意先一覧List;


        //コンストラクタ
        public 得意先一覧Presenter(IForm得意先一覧View view, I得意先Repository repository)
        {
            this.得意先一覧bindingSource = new BindingSource();
            this.view = view;
            this.repository = repository;
            this.view.SearchEvent += Search得意先一覧;
            this.view.SelectEvent += Select得意先一覧;
            this.view.CancelEvent += Cancel得意先一覧;

            this.view.Set得意先一覧ListBindingSource(得意先一覧bindingSource);

            得意先一覧List = repository.GetAll();
            得意先一覧bindingSource.DataSource = 得意先一覧List;
        }

        private void Search得意先一覧(object? sender, EventArgs e)
        {
            bool emptyValue = string.IsNullOrWhiteSpace(this.view.SearchValue);
            if (!emptyValue)
                得意先一覧List = repository.GetByValue(this.view.SearchValue);
            else
                得意先一覧List = repository.GetAll();
            得意先一覧bindingSource.DataSource = 得意先一覧List;
        }

        private void Select得意先一覧(object? sender, EventArgs e)
        {
            if (得意先一覧bindingSource.Current is not 得意先一覧Model selected得意先) return;

            var current = (得意先一覧Model)得意先一覧bindingSource.Current;
            view.得意先Id = current.得意先Id.ToString();
            view.得意先名 = current.得意先名;
        }

        private void Cancel得意先一覧(object? sender, EventArgs e)
        {
        }
    }
}
