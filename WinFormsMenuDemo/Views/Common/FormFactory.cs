using System.Configuration;
using WinFormsMenuDemo.Presenters;
using WinFormsMenuDemo.Repositories;

namespace WinFormsMenuDemo.Views.Common
{
    public static class FormFactory
    {
        public static Form Create(Type formType, Action? onThemeChanged = null)
        {
            string connStr = ConfigurationManager.ConnectionStrings["sqlConnectionString"].ConnectionString;

            if (formType == typeof(Form受注))
            {
                IForm受注View view = new Form受注();
                I受注Repository repo = new 受注Repository(connStr);
                new 受注Presenter(view, repo);
                return (Form)view;
            }

            if (formType == typeof(Form得意先))
            {
                IForm得意先View view = new Form得意先();
                I得意先Repository repo = new 得意先Repository(connStr);
                new 得意先Presenter(view, repo);
                return (Form)view;
            }

            if (formType == typeof(Form障害ログ))
            {
                IForm障害ログView view = new Form障害ログ();
                I障害ログRepository repo = new 障害ログRepository(connStr);
                new 障害ログPresenter(view, repo);
                return (Form)view;
            }

            if (formType == typeof(Form設定))
            {
                IForm設定View view = new Form設定();
                if (onThemeChanged != null)
                    view.ThemeChanged += (_, _) => onThemeChanged();
                return (Form)view;
            }

            // 通常フォーム（Presenter不要）
            var instance = Activator.CreateInstance(formType);
            if (instance is not Form f)
                throw new InvalidOperationException($"{formType.Name} のインスタンスを生成できません。");

            return f;
        }
    }
}
