using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Nomadycs.POC1.Web.UI.Models.ViewModel
{
    public class LoginViewModel
    {
        [Display(Name="User name")]
        [Required(ErrorMessage = "Enter user name.")]
        public string UserName { get; set; }

        [Display(Name="Password")]
        [Required(ErrorMessage = "Enter password")]
        public string Password { get; set; }
    }
}