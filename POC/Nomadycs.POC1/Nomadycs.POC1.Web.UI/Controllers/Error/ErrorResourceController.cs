using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using Nomadycs.POC1.Web.UI.Models.ViewModel;

namespace Nomadycs.POC1.Web.UI.Controllers.Error
{
    public class ErrorResourceController : Controller
    {
        //
        // GET: /ErrorResource/
        public ActionResult Index(string Message)
        {
            return View();
        }

        public ActionResult Error(ErrorInfo errorInfo)
        {
            return View("Index");
        }
    }
}