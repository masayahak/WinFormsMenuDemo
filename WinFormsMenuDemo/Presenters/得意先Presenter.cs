using WinFormsMenuDemo.Common;
using WinFormsMenuDemo.Models;
using WinFormsMenuDemo.Repositories;
using WinFormsMenuDemo.Views;
using WinFormsMenuDemo.Presenters.Common;

namespace WinFormsMenuDemo.Presenters
{
    public class 得意先Presenter : PresenterBase
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

            _得意先List = [];
            LoadAll得意先();

            this._view.Show();
        }

        public override void HandleWithErrorLogging(Action action)
        {
            try
            {
                action();
            }
            catch (Exception ex)
            {
                _view.IsSuccessful = false;
                _view.Message = ex.Message;
                ErrorLogger.Log(ex, (Form)_view);
            }
        }

        private void LoadAll得意先()
        {
            Action action = () =>
            {
                var result = _repository.GetAll();
                if (result.Is上限超過)
                {
                    _view.Message = $"表示件数が上限を超えました。\n対象「{result.実際の件数}」件中の上位{result.表示上限}件を表示してます。";
                }
                _得意先List = result.List;
                _得意先bindingSource.DataSource = _得意先List;
            };

            HandleWithErrorLogging(action);
        }

        private void Search得意先(object? sender, EventArgs e)
        {
            Action action = () =>
            {
                得意先一覧結果 result = new();
                bool emptyValue = string.IsNullOrWhiteSpace(this._view.SearchValue);
                if (!emptyValue)
                    result = _repository.GetByValue(this._view.SearchValue);
                else
                    result = _repository.GetAll();

                if (result.Is上限超過)
                {
                    _view.Message = $"表示件数が上限を超えました。\n対象「{result.実際の件数}」件中の上位{result.表示上限}件を表示してます。";
                }

                _得意先List = result.List;
                _得意先bindingSource.DataSource = _得意先List;
            };

            HandleWithErrorLogging(action);
        }

        private void AddNew得意先(object? sender, EventArgs e)
        {
            // 追加時の初期値
            _view.IsEdit = false;
            _view.得意先Id = "0";
        }

        private void LoadSelected得意先ToEdit(object? sender, EventArgs e)
        {
            Action action = () =>
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
            };

            HandleWithErrorLogging(action);
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

            Action action = () =>
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
            };

            HandleWithErrorLogging(action);
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
            Action action = () =>
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
            };

            HandleWithErrorLogging(action);
        }
    }
}
