using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using Nomadycs.POC1.Web.UI.Controllers;
using Nomadycs.POC1.Web.UI.Models.ShardContext;

namespace Nomadycs.POC1.Web.UI.Filters
{
    public class ModelHandler : ActionFilterAttribute
    {        
        public override void OnResultExecuting(ResultExecutingContext filterContext)
        {
            var viewModel = filterContext.Controller.ViewData.Model;
            var controller = filterContext.Controller as BaseController;

            var model = viewModel as Layout;
            var modelFactory = new ModelFactory((controller).DefaultResource);
            if (model != null)
            {        
                (model).Context = modelFactory.Create<ShardContext>();
            }
            base.OnResultExecuting(filterContext);
        }
    }
}