using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Principal;
using System.Web;

using Nomadycs.POC1.Web.UI.Models.Requests;
using Nomadycs.POC1.Web.UI.Models.Common;
using Nomadycs.POC1.Web.UI.Models.Convertor;
using Nomadycs.POC1.Model.Models;

namespace Nomadycs.POC1.Web.UI.Principal
{
    public class NomadycsPrincipal : IPrincipal
    {
        public IIdentity Identity
        {
            get;
            private set;
        }

        public NomadycsPrincipal(string userName, string authType)
        {
            this.Identity = new NomadycsIdentity(userName, authType);
        }

        public bool IsInRole(string role)
        {
            return ((NomadycsIdentity)this.Identity).RoleId > 0;
        }
    }

    public class NomadycsIdentity : IIdentity
    {

        public NomadycsIdentity(string userName, string authType)
        {
            string UserUri = NomadycsResource.UserUri + "Name/" + userName;
            var UserResponse = RequestMethods.Request(UserUri, MethodTypes.GET.ToString());
            if (!string.IsNullOrEmpty(UserResponse))
            {
                var User = JsonConvertor.Convert<UserDetail>(UserResponse);
                this.AuthenticationType = authType;
                this.IsAuthenticated = true;
                this.Name = User.FirstName + " " + User.LastName;
                this.Resources = User.Resources.ToList();
                this.RoleId = User.RoleId;
                this.RoleName = User.RoleName;
                this.UserId = User.UserId;
                this.UserName = User.UserName;
            }
        }

        public string AuthenticationType { get; set; }

        public bool IsAuthenticated { get; set; }

        public string Name { get; set; }

        public string UserName { get; set; }

        public int UserId { get; set; }

        public string RoleName { get; set; }

        public int RoleId { get; set; }

        public List<Resource> Resources { get; set; }

    }
}