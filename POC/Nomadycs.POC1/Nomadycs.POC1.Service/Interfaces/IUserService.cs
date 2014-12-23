using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;

using Nomadycs.POC1.Model.Models;

namespace Nomadycs.POC1.Service.Interfaces
{
    [ServiceContract]
    public interface IUserService
    {
        [OperationContract]
        [WebInvoke(Method="GET",RequestFormat=WebMessageFormat.Json,ResponseFormat=WebMessageFormat.Json,UriTemplate="/{userId}")]
        UserDetail GetUser(string userId);

        [OperationContract]
        [WebInvoke(Method="GET",RequestFormat=WebMessageFormat.Json,ResponseFormat=WebMessageFormat.Json,UriTemplate="/Name/{userName}")]
        UserDetail GetUserByName(string userName);
    }
}
