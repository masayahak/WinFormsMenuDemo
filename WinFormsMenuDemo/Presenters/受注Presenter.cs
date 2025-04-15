using WinFormsMenuDemo.Models;
using WinFormsMenuDemo.Repositories;
using WinFormsMenuDemo.Views;

namespace WinFormsMenuDemo.Presenters
{
    public class 受注Presenter
    {
        //Fields
        private readonly IForm受注View _view;
        private readonly I受注Repository _repository;
        private readonly BindingSource _受注bindingSource;
        private IEnumerable<受注Model> _受注List;

        //コンストラクタ
        public 受注Presenter(IForm受注View view, I受注Repository repository)
        {
            this._受注bindingSource = new BindingSource();
            this._view = view;
            this._repository = repository;
            this._view.SearchEvent += Search受注;
            this._view.AddNewEvent += AddNew受注;
            this._view.EditEvent += LoadSelected受注ToEdit;
            this._view.DeleteEvent += Delete受注;
            this._view.SaveEvent += Save受注;
            this._view.CancelEvent += Cancel受注;

            this._view.Set受注ListBindingSource(_受注bindingSource);

            _受注List = repository.GetAll();
            _受注bindingSource.DataSource = _受注List;

            this._view.Show();
        }

        private void LoadAll受注()
        {
            _受注List = _repository.GetAll();
            _受注bindingSource.DataSource = _受注List;
        }

        private void Search受注(object? sender, EventArgs e)
        {
            bool emptyValue = string.IsNullOrWhiteSpace(this._view.SearchValue);
            if (!emptyValue)
                _受注List = _repository.GetByValue(this._view.SearchValue);
            else
                _受注List = _repository.GetAll();
            _受注bindingSource.DataSource = _受注List;
        }

        private void AddNew受注(object? sender, EventArgs e)
        {
            // 追加時の初期値
            _view.IsEdit = false;
            _view.受注Id = "0";
            _view.受注日 = DateTime.Now.ToString("yyyy/MM/dd");
        }

        private void LoadSelected受注ToEdit(object? sender, EventArgs e)
        {
            if (_受注bindingSource.Current is not 受注Model) return;

            var current = (受注Model)_受注bindingSource.Current;
            _view.受注Id = current.受注Id.ToString();
            _view.得意先Id = current.得意先Id.ToString();
            _view.得意先名 = current.得意先名;
            _view.受注日 = current.受注日.ToString("yyyy/MM/dd");
            _view.合計金額 = current.合計金額.ToString();
            _view.Is売上済み = current.Is売上済み;
            _view.備考 = current.備考 ?? string.Empty;
            _view.Version = current.Version;

            _view.IsEdit = true;
        }

        // 型変換チェック
        private bool CanConvertTo()
        {
            if (!int.TryParse(_view.受注Id, out _))
            {
                _view.Message = "受注IDは整数で入力してください。";
                return false;
            }
            if (!DateTime.TryParse(_view.受注日, out _))
            {
                _view.Message = "受注日は日付を入力してください。";
                return false;
            }
            if (!int.TryParse(_view.得意先Id, out _))
            {
                _view.Message = "得意先を選択してください。";
                return false;
            }
            _view.合計金額 = _view.合計金額.Replace(",", "").Trim();
            _view.合計金額 = _view.合計金額.Replace("\\", "").Trim();
            if (!int.TryParse(_view.合計金額, out _))
            {
                _view.Message = "合計金額は整数で入力してください。";
                return false;
            }

            return true;
        }


        private void Save受注(object? sender, EventArgs e)
        {
            if (!CanConvertTo())
            {
                _view.IsSuccessful = false;
                return;
            }

            var model = new 受注Model();
            model.受注Id = int.Parse(_view.受注Id);
            model.得意先Id = int.Parse(_view.得意先Id);
            model.得意先名 = _view.得意先名;
            model.受注日 = DateTime.Parse(_view.受注日);
            model.合計金額 = int.Parse(_view.合計金額);
            model.Is売上済み = _view.Is売上済み;
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
                        _view.Message = "受注情報を修正しました。";
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
                        _view.Message = "受注情報を登録しました。";
                    }
                    else
                    {
                        _view.IsSuccessful = false;
                        _view.Message = "受注情報の登録に失敗しました。";
                    }
                }

                LoadAll受注();

                if (_view.IsSuccessful)
                {
                    CleanViewFields();
                }
            }
            catch (Exception ex)
            {
                _view.IsSuccessful = false;
                _view.Message = ex.Message;
            }
        }

        private void CleanViewFields()
        {
            _view.受注Id = "0";
            _view.得意先Id = "0";
            _view.得意先名 = string.Empty;
            _view.受注日 = string.Empty;
            _view.合計金額 = string.Empty;
            _view.Is売上済み = false;
            _view.備考 = string.Empty;
        }

        private void Cancel受注(object? sender, EventArgs e)
        {
            CleanViewFields();
        }
        private void Delete受注(object? sender, EventArgs e)
        {
            try
            {
                if (_受注bindingSource.Current is not 受注Model selected受注) return;
                var current = (受注Model)_受注bindingSource.Current;

                bool ret = _repository.Delete(current);
                if (ret)
                {
                    _view.IsSuccessful = true;
                    _view.Message = "受注情報を削除しました。";
                }
                else
                {
                    _view.IsSuccessful = false;
                    _view.Message = "他のユーザーによって同じデータが更新されています。\nもう一度初めから削除してください。";
                }

                LoadAll受注();
            }
            catch (Exception ex)
            {
                _view.IsSuccessful = false;
                _view.Message = ex.Message;
            }

        }

    }
}
