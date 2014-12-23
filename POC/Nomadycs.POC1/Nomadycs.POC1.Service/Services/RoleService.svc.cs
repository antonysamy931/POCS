using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

using Nomadycs.POC1.Service.Interfaces;
using Nomadycs.POC1.Model.Models;
using Nomadycs.POC1.Business.BusinessLogic;

namespace Nomadycs.POC1.Service.Services
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "RoleService" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select RoleService.svc or RoleService.svc.cs at the Solution Explorer and start debugging.
    public class RoleService : IRoleService
    {
        private RoleBL _RoleBL;
        public RoleService()
        {
            _RoleBL = new RoleBL();
        }

        public List<Role> GetRoleList()
        {
            try
            {
                return _RoleBL.GetRoleList();
            }
            catch
            {
                throw;
            }
        }
    }
}
