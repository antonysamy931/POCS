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
    interface IRestSample
    {
        [OperationContract]
        [WebInvoke(Method="GET",RequestFormat=WebMessageFormat.Json,ResponseFormat=WebMessageFormat.Json,UriTemplate="TestGet/{Name}")]
        string GetMethod(string Name);

        [OperationContract]
        [WebInvoke(Method="POST",RequestFormat=WebMessageFormat.Json,ResponseFormat=WebMessageFormat.Json,UriTemplate="TestPost")]
        string PostMethod(Data data);
    }

    public class Data
    {
        public string Name { get; set; }
    }
}
