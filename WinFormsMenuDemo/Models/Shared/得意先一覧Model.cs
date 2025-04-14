using System.ComponentModel.DataAnnotations;

namespace WinFormsMenuDemo.Models.Shared
{

    public class 得意先一覧Model
    {
        [Key]
        public int 得意先Id { get; set; }

        [Required(ErrorMessage = "得意先名は必須です。")]
        [StringLength(100, MinimumLength = 2, ErrorMessage = "得意先名は2文字以上100文字以内で入力してください。")]
        public string 得意先名 { get; set; } = string.Empty;

    }
}
