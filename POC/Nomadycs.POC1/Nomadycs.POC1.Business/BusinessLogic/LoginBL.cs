using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Nomadycs.POC1.Model.Models;
using Nomadycs.POC1.Data.DataLogic;

namespace Nomadycs.POC1.Business.BusinessLogic
{    
    public class LoginBL
    {
        private LoginDL _loginDL;
        public LoginBL() {
            _loginDL = new LoginDL();
        }

        public int CheckUser(Login login)
        {
            try
            {
                int UserId = 0;
                var userObject = _loginDL.CheckUser(login);
                if (!string.IsNullOrEmpty(userObject))
                {
                    UserId = Convert.ToInt32(userObject);
                }
                return UserId;
            }
            catch
            {
                throw;
            }
        }
    }
}
