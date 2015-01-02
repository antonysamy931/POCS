using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcApplication1.Filters;

namespace MvcApplication1.Controllers
{
    [Authentication]
    public class AdminController : Controller
    {
        //
        // GET: /Admin/
        [RoleAuthorize(Role="admin")]
        public ActionResult Index()
        {
            return View();
        }

    }
}
