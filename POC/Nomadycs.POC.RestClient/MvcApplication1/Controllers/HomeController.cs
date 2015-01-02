using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WcfService1.Interfaces;
using MvcApplication1.Models;

namespace MvcApplication1.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/

        public ActionResult Index()
        {
            Data data = new Data();
            var response = RestWebRequest.Request("http://localhost:53645/Services/RestService.svc/TestGet/Antony", "GET");
            data.Name = JsonConvertor.Convert(response);
            return View(data);
        }

        [HttpPost]
        public ActionResult Index(Data data)
        {
            var response = RestWebRequest.Request("http://localhost:53645/Services/RestService.svc/TestPost", "POST", data);
            data.Name = JsonConvertor.Convert(response);
            return View(data);
        }
    }
}
