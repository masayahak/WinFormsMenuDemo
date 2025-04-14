using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace WinFormsMenuDemo.Models
{
    public class 得意先Model
    {
        [Key]
        public int 得意先Id { get; set; }

        [Required(ErrorMessage = "得意先名は必須です。")]
        [StringLength(100, MinimumLength = 2, ErrorMessage = "得意先名は2文字以上+100文字以内で入力してください。")]
        public string 得意先名 { get; set; } = string.Empty;

        [StringLength(200, ErrorMessage = "住所は200文字以内で入力してください。")]
        public string? 住所 { get; set; }

        [StringLength(20, ErrorMessage = "電話番号は20文字以内で入力してください。")]
        public string? 電話番号 { get; set; }

        [StringLength(100, ErrorMessage = "メールは100文字以内で入力してください。")]
        public string? メール { get; set; }

        [Required]
        [DisplayName("削除済み")]
        public bool Is削除済み { get; set; }

        [StringLength(255, ErrorMessage = "備考は255文字以内で入力してください。")]
        public string? 備考 { get; set; }

        [Required]
        public int Version { get; set; }
    }

}
