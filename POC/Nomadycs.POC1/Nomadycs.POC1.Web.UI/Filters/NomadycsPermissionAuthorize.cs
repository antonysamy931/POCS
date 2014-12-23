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
    public class NomadycsPermissionAuthorize : ActionFilterAttribute, IAuthorizationFilter
    {
        public string Resource { get; set; }
        public string Permission { get; set; }

        public void OnAuthorization(AuthorizationContext filterContext)
        {
            if (string.IsNullOrEmpty(Resource) || string.IsNullOrEmpty(Permission))
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
            else
            {
                var permissions = ((NomadycsIdentity)HttpContext.Current.User.Identity).Resources.Where(x => x.Name == Resource).Select(x=>x.Permissions).ToList();
                if (!permissions[0].Any(x => x == Permission))
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