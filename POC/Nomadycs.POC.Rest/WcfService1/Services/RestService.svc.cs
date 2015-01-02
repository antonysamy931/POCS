using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Activation;
using System.ServiceModel.Web;
using System.Text;
using WcfService1.Interfaces;

namespace WcfService1.Services
{    
    [AspNetCompatibilityRequirements(RequirementsMode = AspNetCompatibilityRequirementsMode.Allowed)]
    public class RestService:IRestSample
    {

        public string GetMethod(string Name)
        {
            return "Welcome " + Name;
        }

        public string PostMethod(Data data)
        {
            return "Welcome " + data.Name;
        }
    }
}
