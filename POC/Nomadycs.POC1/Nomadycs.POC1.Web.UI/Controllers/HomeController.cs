using Newtonsoft.Json;
using Nomadycs.POC1.Model.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

using Nomadycs.POC1.Web.UI.Models.Common;
using Nomadycs.POC1.Web.UI.Models.Convertor;
using Nomadycs.POC1.Web.UI.Models.Requests;
using Nomadycs.POC1.Web.UI.Filters;
using Nomadycs.POC1.Web.UI.Models.ViewModel;

namespace Nomadycs.POC1.Web.UI.Controllers
{
    [NomadycsAuthenticate]
    public class HomeController : BaseController
    {       
        public ActionResult Index()
        {
            HomeViewModel homeViewModel = new HomeViewModel();
            ViewBag.Resource = "Manufacturer";
            return View(homeViewModel);
        }
	}
}