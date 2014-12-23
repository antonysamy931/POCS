using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nomadycs.POC1.Model.Procedure_ResultSet
{
    public class Userdetail_ResultSet
    {
        public int UserId { get; set; }
        public string FirstName { get; set; }
        public string Email { get; set; }
        public string LastName { get; set; }
        public string UserName { get; set; }
        public int RoleID { get; set; }
        public string RoleName { get; set; }
        public int ResourceID { get; set; }
        public string ResourceName { get; set; }
        public string PermissionName { get; set; }
    }
}
