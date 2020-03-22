using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace Censo.Application.ViewModels
{
    public class PeopleVM : IValidatableObject
    {
        [Required]
        [StringLength(100, MinimumLength = 3, ErrorMessage = "O campo {0} deve ter entre {2} e {1} caracteres")]
        public string Document { get; set; }
        [Required(ErrorMessage = "{0} - campo obrigatório")]
        public DateTime Birthdate { get; set; }

        [Required(ErrorMessage = "{0} - campo obrigatório")]
        [StringLength(100, MinimumLength = 3, ErrorMessage = "O campo {0} deve ter entre {2} e {1} caracteres")]
        public string FirstName { get; set; }
        [Required(ErrorMessage = "{0} - campo obrigatório")]
        [StringLength(100, MinimumLength = 3, ErrorMessage = "O campo {0} deve ter entre {2} e {1} caracteres")]
        public string LastName { get; set; }

        [Required(ErrorMessage = "{0} - campo obrigatório")]
        public Guid EthnicityId { get; set; }
        [Required(ErrorMessage = "{0} - campo obrigatório")]
        public Guid GenderId { get; set; }
        [Required(ErrorMessage = "{0} - campo obrigatório")]
        public Guid EducationalId { get; set; }
        [Required(ErrorMessage = "{0} - campo obrigatório")]
        public Guid DistrictId { get; set; }

        public IEnumerable<RelantionshipVM> Sons { get; set; }
        public IEnumerable<RelantionshipVM> Parents { get; set; }
        
        public IEnumerable<ValidationResult> Validate(ValidationContext validationContext)
        {
            if(Birthdate.Date > DateTime.Now.Date) yield return new ValidationResult("Data de Nascimento não pode ser uma data futura", new []{nameof(Birthdate)});
        }
    }
}
