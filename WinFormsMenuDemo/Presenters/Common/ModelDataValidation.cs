using System.ComponentModel.DataAnnotations;

namespace WinFormsMenuDemo.Presenters.Common
{
    public class ModelDataValidation
    {
        public static void Validate(object model)
        {
            string errorMessage = string.Empty;
            List<ValidationResult> results = new List<ValidationResult>();
            ValidationContext context = new ValidationContext(model);
            bool isValid = Validator.TryValidateObject(model, context, results, true);
            if (!isValid)
            {
                foreach (var validationResult in results)
                {
                    errorMessage += $"{validationResult.ErrorMessage}\n";
                }
                throw new ValidationException(errorMessage);
            }

        }
    }
}
