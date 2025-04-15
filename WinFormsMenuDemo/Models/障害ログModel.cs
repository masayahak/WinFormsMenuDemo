using System.ComponentModel.DataAnnotations;

namespace WinFormsMenuDemo.Models
{
    public class 障害ログModel
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [Display(Name = "発生日時")]
        public DateTime 発生日時 { get; set; }

        [StringLength(100)]
        [Display(Name = "画面名")]
        public string? 画面名 { get; set; }

        [StringLength(100)]
        [Display(Name = "処理名")]
        public string? 処理名 { get; set; }

        [StringLength(4000)]
        [Display(Name = "メッセージ")]
        public string? メッセージ { get; set; }

        [Display(Name = "スタックトレース")]
        public string? スタックトレース { get; set; }

        [StringLength(100)]
        [Display(Name = "クライアント情報")]
        public string? クライアント情報 { get; set; }

        [StringLength(500)]
        [Display(Name = "備考")]
        public string? 備考 { get; set; }
    }
}
