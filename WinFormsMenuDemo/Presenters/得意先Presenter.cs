using WinFormsMenuDemo.Common;
using WinFormsMenuDemo.Models;
using WinFormsMenuDemo.Repositories;
using WinFormsMenuDemo.Views;

namespace WinFormsMenuDemo.Presenters
{
    public class 得意先Presenter
    {
        //Fields
        private readonly IForm得意先View _view;
        private readonly I得意先Repository _repository;
        private readonly BindingSource _得意先bindingSource;
        private IEnumerable<得意先Model> _得意先List;

        //コンストラクタ
        public 得意先Presenter(IForm得意先View view, I得意先Repository repository)
        {
            this._得意先bindingSource = new BindingSource();
            this._view = view;
            this._repository = repository;
            this._view.SearchEvent += Search得意先;
            this._view.AddNewEvent += AddNew得意先;
            this._view.EditEvent += LoadSelected得意先ToEdit;
            this._view.DeleteEvent += Delete得意先;
            this._view.SaveEvent += Save得意先;
            this._view.CancelEvent += Cancel得意先;

            this._view.Set得意先ListBindingSource(_得意先bindingSource);

            _得意先List = repository.GetAll();
            _得意先bindingSource.DataSource = _得意先List;

            this._view.Show();
        }

        private void LoadAll得意先()
        {
            _得意先List = _repository.GetAll();
            _得意先bindingSource.DataSource = _得意先List;
        }

        private void Search得意先(object? sender, EventArgs e)
        {
            bool emptyValue = string.IsNullOrWhiteSpace(this._view.SearchValue);
            if (!emptyValue)
                _得意先List = _repository.GetByValue(this._view.SearchValue);
            else
                _得意先List = _repository.GetAll();
            _得意先bindingSource.DataSource = _得意先List;
        }

        private void AddNew得意先(object? sender, EventArgs e)
        {
            // 追加時の初期値
            _view.IsEdit = false;
            _view.得意先Id = "0";
        }

        private void LoadSelected得意先ToEdit(object? sender, EventArgs e)
        {
            if (_得意先bindingSource.Current is not 得意先Model) return;

            var current = (得意先Model)_得意先bindingSource.Current;
            _view.得意先Id = current.得意先Id.ToString();
            _view.得意先名 = current.得意先名;
            _view.住所 = current.住所 ?? string.Empty;
            _view.電話番号 = current.電話番号 ?? string.Empty;
            _view.メール = current.メール ?? string.Empty;
            _view.Is削除済み = current.Is削除済み;
            _view.備考 = current.備考 ?? string.Empty;
            _view.Version = current.Version;

            _view.IsEdit = true;
        }

        // 型変換チェック
        private bool CanConvertTo()
        {
            return true;
        }


        private void Save得意先(object? sender, EventArgs e)
        {
            if (!CanConvertTo())
            {
                _view.IsSuccessful = false;
                return;
            }

            var model = new 得意先Model();
            model.得意先Id = int.Parse(_view.得意先Id);
            model.得意先名 = _view.得意先名;
            model.住所 = _view.住所;
            model.電話番号 = _view.電話番号;
            model.メール = _view.メール;
            model.Is削除済み = _view.Is削除済み;
            model.備考 = _view.備考;
            model.Version = _view.Version;

            try
            {
                Common.ModelDataValidation.Validate(model);
                if (_view.IsEdit)
                {
                    bool ret = _repository.Edit(model);
                    if (ret)
                    {
                        _view.IsSuccessful = true;
                        _view.Message = "得意先マスターを修正しました。";
                    }
                    else
                    {
                        _view.IsSuccessful = false;
                        _view.Message = "他のユーザーによって同じデータが更新されています。\nこの修正をキャンセルして、もう一度初めから修正してください。";
                    }
                }
                else
                {
                    bool ret = _repository.Add(model);
                    if (ret)
                    {
                        _view.IsSuccessful = true;
                        _view.Message = "得意先マスターを登録しました。";
                    }
                    else
                    {
                        _view.IsSuccessful = false;
                        _view.Message = "得意先マスターの登録に失敗しました。";
                    }
                }

                LoadAll得意先();

                if (_view.IsSuccessful)
                {
                    CleanViewFields();
                }
            }
            catch (Exception ex)
            {
                _view.IsSuccessful = false;
                _view.Message = ex.Message;

                ErrorLogger.Log(ex, (Form)_view);
            }
        }

        private void CleanViewFields()
        {
            _view.得意先Id = "0";
            _view.得意先名 = string.Empty;
            _view.住所 = string.Empty;
            _view.電話番号 = string.Empty;
            _view.メール = string.Empty;
            _view.Is削除済み = false;
            _view.備考 = string.Empty;
        }

        private void Cancel得意先(object? sender, EventArgs e)
        {
            CleanViewFields();
        }
        private void Delete得意先(object? sender, EventArgs e)
        {
            try
            {
                if (_得意先bindingSource.Current is not 得意先Model selected得意先) return;
                var current = (得意先Model)_得意先bindingSource.Current;

                bool ret = _repository.Delete(current);
                if (ret)
                {
                    _view.IsSuccessful = true;
                    _view.Message = "得意先マスターを削除しました。";
                }
                else
                {
                    _view.IsSuccessful = false;
                    _view.Message = "他のユーザーによって同じデータが更新されています。\nもう一度初めから削除してください。";
                }

                LoadAll得意先();
            }
            catch (Exception ex)
            {
                _view.IsSuccessful = false;
                _view.Message = ex.Message;

                ErrorLogger.Log(ex, (Form)_view);
            }

        }

    }
}
