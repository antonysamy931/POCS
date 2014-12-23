using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Threading.Tasks;

using Nomadycs.POC1.Model.Models;

namespace Nomadycs.POC1.Service.Interfaces
{
    [ServiceContract]
    public interface IRoleService
    {
        [OperationContract]
        [WebInvoke(Method="GET",RequestFormat=WebMessageFormat.Json,ResponseFormat=WebMessageFormat.Json,UriTemplate="RoleList")]
        List<Role> GetRoleList();
    }
}
