using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MvcApplication1.Models
{
    public class ContextModel
    {
        public static List<User> Users()
        {
            return new List<User>()
            {
                new User(){
                    username="antony",                    
                    role="admin"
                },
                new User(){
                    username="user",                    
                    role="user"
                }
            };
        }
    }

    public class User
    {
        public string username { get; set; }
        public string password { get; set; }
        public string role { get; set; }
    }
}