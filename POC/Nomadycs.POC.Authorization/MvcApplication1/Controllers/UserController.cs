using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcApplication1.Filters;

namespace MvcApplication1.Controllers
{
    [Authentication]
    public class UserController : Controller
    {
        //
        // GET: /User/
        [RoleAuthorize(Role = "admin,user")]
        public ActionResult Index()
        {
            return View();
        }

    }
}
