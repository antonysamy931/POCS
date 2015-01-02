using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Principal;

namespace MvcApplication1.Principal
{
    public class CustomPrincipal : IPrincipal
    {
        public CustomPrincipal(string userName, string type)
        {
            this.Identity = new CustomIdentity(userName, type);
        }

        public IIdentity Identity
        {
            get;
            private set;
        }

        public bool IsInRole(string role)
        {
            throw new NotImplementedException();
        }
    }

    public class CustomIdentity : IIdentity
    {

        public CustomIdentity(string userName, string authType)
        {
            this.Name = userName;
            this.AuthenticationType = authType;
            this.IsAuthenticated = true;
            this.FullName = "Antony samy";
        }
        public string AuthenticationType
        {
            get;
            set;
        }

        public bool IsAuthenticated
        {
            get;
            set;
        }

        public string Name
        {
            get;
            set;
        }

        public string FullName
        {
            get;
            set;
        }
    }
}