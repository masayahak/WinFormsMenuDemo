using WinFormsMenuDemo.Common;
using WinFormsMenuDemo.Models;
using WinFormsMenuDemo.Presenters.Common;
using WinFormsMenuDemo.Repositories;
using WinFormsMenuDemo.Views;

namespace WinFormsMenuDemo.Presenters
{
    public class 障害ログPresenter : PresenterBase
    {
        private readonly IForm障害ログView _view;
        private readonly I障害ログRepository _repository;
        private readonly BindingSource _bindingSource;
        private IEnumerable<障害ログModel> _logList;

        public 障害ログPresenter(IForm障害ログView view, I障害ログRepository repository)
        {
            _bindingSource = new BindingSource();
            _view = view;
            _repository = repository;

            _view.SearchEvent += Search;
            _view.ShowDetailEvent += ShowDetail;
            _view.CancelEvent += Cancel;

            _view.Set障害ログListBindingSource(_bindingSource);

            _logList = [];
            LoadAll障害ログ();

            _view.Show();
        }

        public override void HandleWithErrorLogging(Action action)
        {
            try
            {
                action();
            }
            catch (Exception ex)
            {
                ErrorLogger.Log(ex, (Form)_view);
            }
        }

        private void LoadAll障害ログ()
        {
            Action action = () =>
            {
                var result = _repository.GetAll();
                if (result.Is上限超過)
                {
                    _view.Message = $"表示件数が上限を超えました。\n対象「{result.実際の件数}」件中の上位{result.表示上限}件を表示してます。";
                }
                _logList = result.List;
                _bindingSource.DataSource = _logList;
            };

            HandleWithErrorLogging(action);
        }

        private void Search(object? sender, EventArgs e)
        {
            Action action = () =>
            {
                障害ログ一覧結果 result = new();
                if (!string.IsNullOrWhiteSpace(_view.SearchValue))
                {
                    result = _repository.GetByValue(_view.SearchValue);
                }
                else
                {
                    result = _repository.GetAll();
                }
                _logList = result.List;
                _bindingSource.DataSource = _logList;
            };

            HandleWithErrorLogging(action);
        }

        private void ShowDetail(object? sender, EventArgs e)
        {
            Action action = () =>
            {
                if (_bindingSource.Current is not 障害ログModel current) return;

                _view.Id = current.Id.ToString();
                _view.発生日時 = current.発生日時.ToString("yyyy/MM/dd HH:mm:ss");
                _view.画面名 = current.画面名 ?? string.Empty;
                _view.処理名 = current.処理名 ?? string.Empty;
                _view.メッセージ = current.メッセージ ?? string.Empty;
                _view.スタックトレース = current.スタックトレース ?? string.Empty;
                _view.クライアント情報 = current.クライアント情報 ?? string.Empty;
                _view.備考 = current.備考 ?? string.Empty;
            };

            HandleWithErrorLogging(action);

        }

        private void CleanViewFields()
        {
            _view.Id = string.Empty;
            _view.発生日時 = string.Empty;
            _view.画面名 = string.Empty;
            _view.処理名 = string.Empty;
            _view.メッセージ = string.Empty;
            _view.スタックトレース = string.Empty;
            _view.クライアント情報 = string.Empty;
            _view.備考 = string.Empty;
        }

        private void Cancel(object? sender, EventArgs e)
        {
            CleanViewFields();
        }
    }
}
