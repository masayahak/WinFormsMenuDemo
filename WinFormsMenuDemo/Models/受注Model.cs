using System.ComponentModel;
using System.ComponentModel.DataAnnotations;

namespace WinFormsMenuDemo.Models
{
    public class 受注Model
    {
        [Key]
        public int 受注Id { get; set; }

        [Required(ErrorMessage = "得意先IDは必須です。")]
        public int 得意先Id { get; set; }

        [Required(ErrorMessage = "得意先名は必須です。")]
        [StringLength(100, MinimumLength = 2, ErrorMessage = "得意先名は2文字以上+100文字以内で入力してください。")]
        public string 得意先名 { get; set; } = string.Empty;

        [Required(ErrorMessage = "受注日は必須です。")]
        [DataType(DataType.Date)]
        public DateTime 受注日 { get; set; }

        [Required]
        [Range(0, int.MaxValue, ErrorMessage = "合計金額は0以上で入力してください。")]
        public int 合計金額 { get; set; }

        [Required]
        [DisplayName("売上済み")]
        public bool Is売上済み { get; set; }

        [StringLength(255, ErrorMessage = "備考は255文字以内で入力してください。")]
        public string? 備考 { get; set; }

        [Required]
        public int Version { get; set; }
    }

}
