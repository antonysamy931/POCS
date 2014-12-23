using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

using Nomadycs.POC1.Model.Models;
using Nomadycs.POC1.Web.UI.Models.Common;
using Nomadycs.POC1.Web.UI.Models.Requests;
using Nomadycs.POC1.Web.UI.Models.Convertor;
using Nomadycs.POC1.Web.UI.Models.ShardContext;

namespace Nomadycs.POC1.Web.UI.Models.ViewModel
{
    public class RegisterUserViewModel : Layout, IValidatableObject
    {
        [Display(Name = "First name")]
        [Required(ErrorMessage = "Enter first name")]
        public string FirstName { get; set; }

        [Display(Name = "Last name")]
        [Required(ErrorMessage = "Enter last name")]
        public string LastName { get; set; }

        [Display(Name = "User name")]
        [Required(ErrorMessage = "Enter user name")]
        public string UserName { get; set; }

        [Display(Name = "Email")]
        [Required(ErrorMessage = "Enter email address")]
        [DataType(DataType.EmailAddress, ErrorMessage = "Enter valid email address")]
        public string Email { get; set; }

        [Display(Name = "Password")]
        [Required(ErrorMessage = "Enter password")]
        [MinLength(6, ErrorMessage = "Password to short")]
        [MaxLength(12, ErrorMessage = "Password to long")]
        public string Password { get; set; }

        public List<Role> Roles { get; set; }

        [Display(Name = "Role")]
        [Required(ErrorMessage = "Select Role")]
        public int RoleId { get; set; }
        public int CreatedBy { get; set; }

        public IEnumerable<ValidationResult> Validate(ValidationContext validationContext)
        {
            string ExistingUser = JsonConvertor.Convert(RequestMethods.Request(NomadycsResource.LoginUri + "Existing/" + this.UserName, MethodTypes.GET.ToString()));
            if (!string.IsNullOrEmpty(ExistingUser))
            {
                yield return new ValidationResult("User name already exist", new string[] { "UserName" });
            }
        }
    }
}