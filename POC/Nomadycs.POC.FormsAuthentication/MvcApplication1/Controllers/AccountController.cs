using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace MvcApplication1.Controllers
{
    public class AccountController : Controller
    {
        //
        // GET: /Account/

        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Login(FormCollection collection)
        {
            if (collection["username"] != null && collection["password"] != null) {
                if (collection["username"].ToString() == "username" && collection["password"].ToString() == "password")
                {
                    FormsAuthentication.SetAuthCookie("Antony", false);
                    return RedirectToAction("Index", "Home");
                }
                else
                {
                    ModelState.AddModelError(string.Empty, "Username or password incorrect");
                    return View();
                }
            }
            ModelState.AddModelError(string.Empty, "Please enter username and password");
            return View();
        }

        [HttpGet]
        public ActionResult Logout()
        {
            FormsAuthentication.SignOut();
            return RedirectToAction("Login");
        }
    }
}
