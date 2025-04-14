using WinFormsMenuDemo.Models;
using WinFormsMenuDemo.Repositories;
using WinFormsMenuDemo.Views;

namespace WinFormsMenuDemo.Presenters
{
    public class 得意先Presenter
    {
        //Fields
        private IForm得意先View view;
        private I得意先Repository repository;
        private BindingSource 得意先bindingSource;
        private IEnumerable<得意先Model> 得意先List;

        //コンストラクタ
        public 得意先Presenter(IForm得意先View view, I得意先Repository repository)
        {
            this.得意先bindingSource = new BindingSource();
            this.view = view;
            this.repository = repository;
            this.view.SearchEvent += Search得意先;
            this.view.AddNewEvent += AddNew得意先;
            this.view.EditEvent += LoadSelected得意先ToEdit;
            this.view.DeleteEvent += Delete得意先;
            this.view.SaveEvent += Save得意先;
            this.view.CancelEvent += Cancel得意先;

            this.view.Set得意先ListBindingSource(得意先bindingSource);

            得意先List = repository.GetAll();
            得意先bindingSource.DataSource = 得意先List;

            this.view.Show();
        }

        private void LoadAll得意先()
        {
            得意先List = repository.GetAll();
            得意先bindingSource.DataSource = 得意先List;
        }

        private void Search得意先(object? sender, EventArgs e)
        {
            bool emptyValue = string.IsNullOrWhiteSpace(this.view.SearchValue);
            if (!emptyValue)
                得意先List = repository.GetByValue(this.view.SearchValue);
            else
                得意先List = repository.GetAll();
            得意先bindingSource.DataSource = 得意先List;
        }

        private void AddNew得意先(object? sender, EventArgs e)
        {
            // 追加時の初期値
            view.IsEdit = false;
            view.得意先Id = "0";
        }

        private void LoadSelected得意先ToEdit(object? sender, EventArgs e)
        {
            if (得意先bindingSource.Current is not 得意先Model selected得意先) return;

            var current = (得意先Model)得意先bindingSource.Current;
            view.得意先Id = current.得意先Id.ToString();
            view.得意先名 = current.得意先名;
            view.住所 = current.住所 ?? string.Empty;
            view.電話番号 = current.電話番号 ?? string.Empty;
            view.メール = current.メール ?? string.Empty;
            view.Is削除済み = current.Is削除済み;
            view.備考 = current.備考 ?? string.Empty;
            view.Version = current.Version;

            view.IsEdit = true;
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
                view.IsSuccessful = false;
                return;
            }

            var model = new 得意先Model();
            model.得意先Id = int.Parse(view.得意先Id);
            model.得意先名 = view.得意先名;
            model.住所 = view.住所;
            model.電話番号 = view.電話番号;
            model.メール = view.メール;
            model.Is削除済み = view.Is削除済み;
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
                        view.Message = "得意先マスターを修正しました。";
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
                        view.Message = "得意先マスターを登録しました。";
                    }
                    else
                    {
                        view.IsSuccessful = false;
                        view.Message = "得意先マスターの登録に失敗しました。";
                    }
                }

                LoadAll得意先();

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
            view.得意先Id = "0";
            view.得意先名 = string.Empty;
            view.住所 = string.Empty;
            view.電話番号 = string.Empty;
            view.メール = string.Empty;
            view.Is削除済み = false;
            view.備考 = string.Empty;
        }

        private void Cancel得意先(object? sender, EventArgs e)
        {
            CleanViewFields();
        }
        private void Delete得意先(object? sender, EventArgs e)
        {
            try
            {
                if (得意先bindingSource.Current is not 得意先Model selected得意先) return;
                var current = (得意先Model)得意先bindingSource.Current;

                bool ret = repository.Delete(current);
                if (ret)
                {
                    view.IsSuccessful = true;
                    view.Message = "得意先マスターを削除しました。";
                }
                else
                {
                    view.IsSuccessful = false;
                    view.Message = "他のユーザーによって同じデータが更新されています。\nもう一度初めから削除してください。";
                }

                LoadAll得意先();
            }
            catch (Exception ex)
            {
                view.IsSuccessful = false;
                view.Message = ex.Message;
            }

        }

    }
}
