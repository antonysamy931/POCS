using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MvcApplication1.Models;

namespace MvcApplication1.Filters
{
    public class RoleAuthorize : ActionFilterAttribute, IAuthorizationFilter
    {
        public string Role { get; set; }
        public string[] Roles { get; set; }
        public void OnAuthorization(AuthorizationContext filterContext)
        {
            if (Role == null)
            {
                filterContext.Result = new TransferResult("Error", "Error", null);
            }
            else
            {
                Roles = Role.Split(',').ToArray();
            }

            var userRole = ContextModel.Users().Where(x => x.username == HttpContext.Current.User.Identity.Name).Select(x => x.role).FirstOrDefault();
            if (!Roles.Contains(userRole))
            {
                filterContext.Result = new TransferResult("Error", "Error", null);
            }
        }
    }
}