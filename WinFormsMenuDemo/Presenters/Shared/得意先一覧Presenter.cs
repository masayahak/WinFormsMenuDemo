using WinFormsMenuDemo.Models.Shared;
using WinFormsMenuDemo.Repositories.Shared;
using WinFormsMenuDemo.Views.Shared;

namespace WinFormsMenuDemo.Presenters.Shared
{
    public class 得意先一覧Presenter
    {
        //Fields
        private readonly IForm得意先一覧View _view;
        private readonly I得意先Repository _repository;
        private readonly BindingSource _得意先一覧bindingSource;
        private IEnumerable<得意先一覧Model> _得意先一覧List;


        //コンストラクタ
        public 得意先一覧Presenter(IForm得意先一覧View view, I得意先Repository repository)
        {
            this._得意先一覧bindingSource = new BindingSource();
            this._view = view;
            this._repository = repository;
            this._view.SearchEvent += Search得意先一覧;
            this._view.SelectEvent += Select得意先一覧;
            this._view.CancelEvent += Cancel得意先一覧;

            this._view.Set得意先一覧ListBindingSource(_得意先一覧bindingSource);

            _得意先一覧List = repository.GetAll();
            _得意先一覧bindingSource.DataSource = _得意先一覧List;
        }

        private void Search得意先一覧(object? sender, EventArgs e)
        {
            bool emptyValue = string.IsNullOrWhiteSpace(this._view.SearchValue);
            if (!emptyValue)
                _得意先一覧List = _repository.GetByValue(this._view.SearchValue);
            else
                _得意先一覧List = _repository.GetAll();
            _得意先一覧bindingSource.DataSource = _得意先一覧List;
        }

        private void Select得意先一覧(object? sender, EventArgs e)
        {
            if (_得意先一覧bindingSource.Current is not 得意先一覧Model) return;

            var current = (得意先一覧Model)_得意先一覧bindingSource.Current;
            _view.得意先Id = current.得意先Id.ToString();
            _view.得意先名 = current.得意先名;
        }

        private void Cancel得意先一覧(object? sender, EventArgs e)
        {
        }
    }
}
