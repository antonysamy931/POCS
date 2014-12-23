using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nomadycs.POC1.Model.Models
{
    public class UserDetail
    {
        public int UserId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string UserName { get; set; }
        public string Email { get; set; }
        public int RoleId { get; set; }
        public string RoleName { get; set; }
        public List<Resource> Resources { get; set; }
    }

    public class Resource
    {
        public string Name { get; set; }
        public List<string> Permissions { get; set; }
    }    
}
