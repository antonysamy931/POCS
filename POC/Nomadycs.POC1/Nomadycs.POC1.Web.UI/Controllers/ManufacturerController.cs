using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using Nomadycs.POC1.Web.UI.Filters;
using Nomadycs.POC1.Web.UI.Models;
using Nomadycs.POC1.Web.UI.Models.Common;
using Nomadycs.POC1.Web.UI.Models.ViewModel;

namespace Nomadycs.POC1.Web.UI.Controllers
{
    [NomadycsAuthenticate]
    [NomadycsResourceAuthorize(Resource = Resources.Manufacturer)]
    public class ManufacturerController : BaseController
    {
        public ManufacturerController()
        {
            this.DefaultResource = Resources.Manufacturer;
        }

        [HttpGet]
        public ActionResult Index()
        {
            ManufacturerViewModel viewModel = new ManufacturerViewModel();
            return View(viewModel);
        }

        [HttpGet]
        [NomadycsPermissionAuthorize(Resource = Resources.Manufacturer, Permission = Permissions.Read)]
        public ActionResult Read()
        {
            ManufacturerReadViewModel viewModel = new ManufacturerReadViewModel();
            return View(viewModel);
        }

        [HttpGet]
        [NomadycsPermissionAuthorize(Resource = Resources.Manufacturer, Permission = Permissions.Create)]
        public ActionResult Create()
        {
            return View();
        }
    }
}