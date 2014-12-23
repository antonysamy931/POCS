using Microsoft.Practices.EnterpriseLibrary.Data.Sql;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Common;
using System.Data;

using Nomadycs.POC1.Data.Factory;
using Nomadycs.POC1.Model.Models;

namespace Nomadycs.POC1.Data.DataLogic
{
    public class LoginDL
    {
        private SqlDatabase database = null;
        public LoginDL()
        {
            DatabaseProvider provider = new DatabaseProvider();
            database = provider.GetdatabaseFactory();
        }

        public string CheckUser(Login login)
        {
            string UserId = string.Empty;
            try
            {
                using (DbCommand checkUserCommand = database.GetStoredProcCommand("[dbo].[CheckUser]"))
                {
                    database.AddInParameter(checkUserCommand, "username", DbType.String, login.UserName);
                    database.AddInParameter(checkUserCommand, "password", DbType.String, login.Password);
                    using (IDataReader reader = database.ExecuteReader(checkUserCommand))
                    {
                        while (reader.Read())
                        {
                            UserId = reader[0] == null ? string.Empty : reader[0].ToString();
                        }
                    }
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
