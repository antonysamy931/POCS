using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using Nomadycs.POC1.Web.UI.Filters;
using Nomadycs.POC1.Web.UI.Models.ShardContext;

namespace Nomadycs.POC1.Web.UI.Controllers
{
    [ModelHandler]
    public class BaseController : Controller
    {
        public ShardContext Context { get; set; }

        public string DefaultResource { get; set; }

        protected override void OnActionExecuted(ActionExecutedContext filterContext)
        {
            base.OnActionExecuted(filterContext);
        }
	}
}