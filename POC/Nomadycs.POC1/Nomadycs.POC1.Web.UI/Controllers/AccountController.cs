using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

using Nomadycs.POC1.Web.UI.Models.Requests;
using Nomadycs.POC1.Web.UI.Models.Common;
using Nomadycs.POC1.Web.UI.Models.ViewModel;
using Nomadycs.POC1.Web.UI.Models.Convertor;
using Nomadycs.POC1.Web.UI.Models.Helper;

namespace Nomadycs.POC1.Web.UI.Controllers
{
    [AllowAnonymous]
    public class AccountController : Controller
    {
        [HttpGet]
        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Login(LoginViewModel login)
        {
            if (ModelState.IsValid)
            {                
                string Url = NomadycsResource.LoginUri + "Login";
                login.Password = PasswordHelper.GetSHA512Data(login.Password);
                var Response = RequestMethods.Request(Url, MethodTypes.POST.ToString(), login);
                if (!string.IsNullOrEmpty(Response) && Response != "0")
                {
                    /*string UserUrl = NomadycsResource.UserUri + "Name/" + login.UserName;
                    var UserResponse = RequestMethods.Request(UserUrl, MethodTypes.GET.ToString());
                    if (!string.IsNullOrEmpty(UserResponse))
                    {
                        return Content(UserResponse);
                    }*/
                    FormsAuthentication.SetAuthCookie(login.UserName, false);
                    return RedirectToAction("Index", "Home");
                }
                ModelState.AddModelError(string.Empty, "Username or password provice incorrect");
            }
            return View(login);
        }

        [HttpGet]
        public ActionResult Logout()
        {
            FormsAuthentication.SignOut();
            return RedirectToAction("Login");
        }        
    }
}