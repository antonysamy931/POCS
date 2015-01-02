using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ServiceModel;
using System.ServiceModel.Web;

namespace WcfService1.Interfaces
{
    [ServiceContract]
    interface IRestSample1
    {
        [OperationContract]
        [WebInvoke(Method="GET",RequestFormat=WebMessageFormat.Json,ResponseFormat=WebMessageFormat.Json,UriTemplate="Rest1")]
        string Message();
    }
}
