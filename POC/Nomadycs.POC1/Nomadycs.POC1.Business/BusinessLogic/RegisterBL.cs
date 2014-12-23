using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Nomadycs.POC1.Model.Models;
using Nomadycs.POC1.Model.Procedure_ResultSet;
using Nomadycs.POC1.Data.DataLogic;

namespace Nomadycs.POC1.Business.BusinessLogic
{
    public class RegisterBL
    {
        private RegisterDL _RegisterDL;
        public RegisterBL()
        {
            _RegisterDL = new RegisterDL();
        }

        public string CheckExistingUser(string userName)
        {
            try { return _RegisterDL.CheckExistingUser(userName); }
            catch { throw; }
        }

        public void RegisterUser(RegisterUser registerUser)
        {
            try
            {
                _RegisterDL.RegisterUser(registerUser);
            }
            catch
            {
                throw;
            }
        }
    }
}
