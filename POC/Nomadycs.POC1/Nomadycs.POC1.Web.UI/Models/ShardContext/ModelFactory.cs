using Nomadycs.POC1.Web.UI.Principal;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Nomadycs.POC1.Web.UI.Models.ShardContext
{
    public class ModelFactory
    {
        private string DefaultResource;
        public ModelFactory(string resource)
        {
            DefaultResource = resource;
        }
        public T Create<T>() where T : ShardContext, new()
        {
            var model = new T();
            Set(model);
            return model;
        }

        public void Set<T>(T model) where T : ShardContext, new()
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                var identity = (NomadycsIdentity)HttpContext.Current.User.Identity;
                model.Resources = identity.Resources.Select(x => x.Name).ToList();
                if (!string.IsNullOrEmpty(DefaultResource))
                {
                    var permission = identity.Resources.Where(x => x.Name == DefaultResource).Select(x => x.Permissions).ToList();                    
                    model.Create = permission[0].Any(x => x == "Create");
                    model.Delete = permission[0].Any(x => x == "Delete");
                    model.Edit = permission[0].Any(x => x == "Edit");
                    model.Read = permission[0].Any(x => x == "Read");
                }
            }
        }
    }
}