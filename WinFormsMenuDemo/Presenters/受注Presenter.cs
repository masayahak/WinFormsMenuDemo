using WinFormsMenuDemo.Models;
using WinFormsMenuDemo.Repositories;
using WinFormsMenuDemo.Views;

namespace WinFormsMenuDemo.Presenters
{
    public class 受注Presenter
    {
        //Fields
        private IForm受注View view;
        private I受注Repository repository;
        private BindingSource 受注bindingSource;
        private IEnumerable<受注Model> 受注List;

        //コンストラクタ
        public 受注Presenter(IForm受注View view, I受注Repository repository)
        {
            this.受注bindingSource = new BindingSource();
            this.view = view;
            this.repository = repository;
            this.view.SearchEvent += Search受注;
            this.view.AddNewEvent += AddNew受注;
            this.view.EditEvent += LoadSelected受注ToEdit;
            this.view.DeleteEvent += Delete受注;
            this.view.SaveEvent += Save受注;
            this.view.CancelEvent += Cancel受注;

            this.view.Set受注ListBindingSource(受注bindingSource);

            受注List = repository.GetAll();
            受注bindingSource.DataSource = 受注List;

            this.view.Show();
        }

        private void LoadAll受注()
        {
            受注List = repository.GetAll();
            受注bindingSource.DataSource = 受注List;
        }

        private void Search受注(object? sender, EventArgs e)
        {
            bool emptyValue = string.IsNullOrWhiteSpace(this.view.SearchValue);
            if (!emptyValue)
                受注List = repository.GetByValue(this.view.SearchValue);
            else
                受注List = repository.GetAll();
            受注bindingSource.DataSource = 受注List;
        }

        private void AddNew受注(object? sender, EventArgs e)
        {
            // 追加時の初期値
            view.IsEdit = false;
            view.受注Id = "0";
            view.受注日 = DateTime.Now.ToString("yyyy/MM/dd");
        }

        private void LoadSelected受注ToEdit(object? sender, EventArgs e)
        {
            if (受注bindingSource.Current is not 受注Model selected受注) return;

            var current = (受注Model)受注bindingSource.Current;
            view.受注Id = current.受注Id.ToString();
            view.得意先Id = current.得意先Id.ToString();
            view.得意先名 = current.得意先名;
            view.受注日 = current.受注日.ToString("yyyy/MM/dd");
            view.合計金額 = current.合計金額.ToString();
            view.Is売上済み = current.Is売上済み;
            view.備考 = current.備考 ?? string.Empty;
            view.Version = current.Version;

            view.IsEdit = true;
        }

        // 型変換チェック
        private bool CanConvertTo()
        {
            if (!int.TryParse(view.受注Id, out _))
            {
                view.Message = "受注IDは整数で入力してください。";
                return false;
            }
            if (!DateTime.TryParse(view.受注日, out _))
            {
                view.Message = "受注日は日付を入力してください。";
                return false;
            }
            if (!int.TryParse(view.得意先Id, out _))
            {
                view.Message = "得意先を選択してください。";
                return false;
            }
            view.合計金額 = view.合計金額.Replace(",", "").Trim();
            view.合計金額 = view.合計金額.Replace("\\", "").Trim();
            if (!int.TryParse(view.合計金額, out _))
            {
                view.Message = "合計金額は整数で入力してください。";
                return false;
            }

            return true;
        }


        private void Save受注(object? sender, EventArgs e)
        {
            if (!CanConvertTo())
            {
                view.IsSuccessful = false;
                return;
            }

            var model = new 受注Model();
            model.受注Id = int.Parse(view.受注Id);
            model.得意先Id = int.Parse(view.得意先Id);
            model.得意先名 = view.得意先名;
            model.受注日 = DateTime.Parse(view.受注日);
            model.合計金額 = int.Parse(view.合計金額);
            model.Is売上済み = view.Is売上済み;
            model.備考 = view.備考;
            model.Version = view.Version;

            try
            {
                new Common.ModelDataValidation().Validate(model);
                if (view.IsEdit)
                {
                    bool ret = repository.Edit(model);
                    if (ret)
                    {
                        view.IsSuccessful = true;
                        view.Message = "受注情報を修正しました。";
                    }
                    else
                    {
                        view.IsSuccessful = false;
                        view.Message = "他のユーザーによって同じデータが更新されています。\nこの修正をキャンセルして、もう一度初めから修正してください。";
                    }
                }
                else
                {
                    bool ret = repository.Add(model);
                    if (ret)
                    {
                        view.IsSuccessful = true;
                        view.Message = "受注情報を登録しました。";
                    }
                    else
                    {
                        view.IsSuccessful = false;
                        view.Message = "受注情報の登録に失敗しました。";
                    }
                }

                LoadAll受注();

                if (view.IsSuccessful)
                {
                    CleanViewFields();
                }
            }
            catch (Exception ex)
            {
                view.IsSuccessful = false;
                view.Message = ex.Message;
            }
        }

        private void CleanViewFields()
        {
            view.受注Id = "0";
            view.得意先Id = "0";
            view.得意先名 = string.Empty;
            view.受注日 = string.Empty;
            view.合計金額 = string.Empty;
            view.Is売上済み = false;
            view.備考 = string.Empty;
        }

        private void Cancel受注(object? sender, EventArgs e)
        {
            CleanViewFields();
        }
        private void Delete受注(object? sender, EventArgs e)
        {
            try
            {
                if (受注bindingSource.Current is not 受注Model selected受注) return;
                var current = (受注Model)受注bindingSource.Current;

                bool ret = repository.Delete(current);
                if (ret)
                {
                    view.IsSuccessful = true;
                    view.Message = "受注情報を削除しました。";
                }
                else
                {
                    view.IsSuccessful = false;
                    view.Message = "他のユーザーによって同じデータが更新されています。\nもう一度初めから削除してください。";
                }

                LoadAll受注();
            }
            catch (Exception ex)
            {
                view.IsSuccessful = false;
                view.Message = ex.Message;
            }

        }

    }
}
