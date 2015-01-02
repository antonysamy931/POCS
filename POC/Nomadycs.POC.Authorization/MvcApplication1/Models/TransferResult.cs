using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace MvcApplication1.Models
{
    public class TransferResult : ActionResult
    {
        public RouteValueDictionary RouteValue { get; set; }

        public TransferResult(string controllerName, string actionName, RouteValueDictionary routeValue = null)
        {
            RouteValue = routeValue ?? new RouteValueDictionary();

            if (!string.IsNullOrEmpty(controllerName))
            {
                RouteValue["Controller"] = controllerName;
            }
            else
            {
                throw new ArgumentNullException("No controller name");
            }

            if (!string.IsNullOrEmpty(actionName))
            {
                RouteValue["Action"] = actionName;
            }
            else
            {
                throw new ArgumentNullException("No action name");
            }
        }

        public TransferResult(RouteValueDictionary routeValues)
            : this(null, null, routeValues)
        {
        }

        public override void ExecuteResult(ControllerContext context)
        {
            var routeData = new RouteData();
            foreach (var item in RouteValue)
            {
                routeData.Values.Add(item.Key, item.Value);
            }

            var contextWrapper = new HttpContextWrapper(HttpContext.Current);
            var request = new RequestContext(contextWrapper, routeData);
            var controller = ControllerBuilder.Current.GetControllerFactory().CreateController(request, RouteValue["Controller"].ToString());
            controller.Execute(request);
        }
    }
}