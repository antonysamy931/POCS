using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Nomadycs.POC1.Data.DataLogic;
using Nomadycs.POC1.Model.Models;
using Nomadycs.POC1.Model.Procedure_ResultSet;

namespace Nomadycs.POC1.Business.BusinessLogic
{
    public class RoleBL
    {
        private RoleDL _RoleDL;
        public RoleBL()
        {
            _RoleDL = new RoleDL();
        }

        public List<Role> GetRoleList()
        {
            try
            {
                List<Role> roleList = new List<Role>();
                var lists = _RoleDL.GetRoleList();                
                foreach (var item in lists)
                {
                    Role role = new Role();
                    role.RoleId = item.RoleId;
                    role.RoleName = item.RoleName;
                    roleList.Add(role);
                }
                return roleList;
            }
            catch
            {
                throw;
            }
        }
    }
}
