using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

using Nomadycs.POC1.Web.UI.Principal;
using Nomadycs.POC1.Web.UI.Models.Common;
using Nomadycs.POC1.Web.UI.Models.ViewModel;

namespace Nomadycs.POC1.Web.UI.Filters
{
    public class NomadycsResourceAuthorize : ActionFilterAttribute, IAuthorizationFilter
    {
        public string Resource { get; set; }

        public void OnAuthorization(AuthorizationContext filterContext)
        {
            if (string.IsNullOrEmpty(this.Resource))
            {
                //filterContext.Result = new RedirectToRouteResult(new RouteValueDictionary
                //{
                //    {"Controller","ErrorResource"},{"Action","Incex"}
                //});
                var routeValue = new RouteValueDictionary
                {
                    {"Message","Not possible to view this page"}
                };
                filterContext.Result = new TransferResult("ErrorResource", "Index", routeValue);
            }
            else
            {
                var User = HttpContext.Current.User;
                var Resource = ((NomadycsIdentity)User.Identity).Resources;
                if (!Resource.Any(x => x.Name.Trim() == this.Resource))
                {
                    ErrorInfo errorInfo = new ErrorInfo();
                    errorInfo.ErrorCode = 404;
                    errorInfo.ErrorMessage = "Not found";
                    var routeValue = new RouteValueDictionary
                    {
                        {"errorInfo",errorInfo}
                    };
                   
                    filterContext.Result = new TransferResult("ErrorResource", "Error", routeValue);
                }
            }
        }
    }
}