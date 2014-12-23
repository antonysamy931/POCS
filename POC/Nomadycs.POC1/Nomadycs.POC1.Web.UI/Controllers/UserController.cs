using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

using Nomadycs.POC1.Web.UI.Models.Common;
using Nomadycs.POC1.Web.UI.Models.Convertor;
using Nomadycs.POC1.Web.UI.Models.Requests;
using Nomadycs.POC1.Web.UI.Filters;
using Nomadycs.POC1.Web.UI.Models.ViewModel;
using Nomadycs.POC1.Model.Models;
using Nomadycs.POC1.Web.UI.Principal;
using Nomadycs.POC1.Web.UI.Models.Helper;

namespace Nomadycs.POC1.Web.UI.Controllers
{
    [NomadycsAuthenticate]
    [NomadycsResourceAuthorize(Resource = "User")]
    public class UserController : BaseController
    {        
        [HttpGet]
        public ActionResult Index()
        {
            this.DefaultResource = "User";
            ViewBag.Resource = "User";
            UserViewModel user = new UserViewModel();
            return View(user);
        }

        [NomadycsPermissionAuthorize(Resource = "User", Permission = "Create")]
        [HttpGet]
        public ActionResult Create()
        {
            this.DefaultResource = "User";
            RegisterUserViewModel registerUser = new RegisterUserViewModel();
            var rolesResponse = RequestMethods.Request(NomadycsResource.RoleUri + "RoleList", MethodTypes.GET.ToString());
            registerUser.Roles = JsonConvertor.ConvertList<Role>(rolesResponse);
            return View(registerUser);
        }

        [NomadycsPermissionAuthorize(Resource = "User", Permission = "Create")]
        [HttpPost]
        public ActionResult Create(RegisterUserViewModel registerUser)
        {
            this.DefaultResource = "User";
            if (ModelState.IsValid)
            {
                registerUser.CreatedBy = ((NomadycsIdentity)User.Identity).UserId;
                registerUser.Password = PasswordHelper.GetSHA512Data(registerUser.Password);
                RequestMethods.Request(NomadycsResource.LoginUri + "Register", MethodTypes.POST.ToString(), registerUser);
            }
            var rolesResponse = RequestMethods.Request(NomadycsResource.RoleUri + "RoleList", MethodTypes.GET.ToString());
            registerUser.Roles = JsonConvertor.ConvertList<Role>(rolesResponse);
            return View(registerUser);
        }
    }
}