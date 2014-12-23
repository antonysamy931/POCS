using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Common;
using System.Data;
using Microsoft.Practices.EnterpriseLibrary.Data.Sql;

using Nomadycs.POC1.Data.Factory;
using Nomadycs.POC1.Data.Mappers.ParamMapper;
using Nomadycs.POC1.Data.Mappers.ResultMapper;
using Nomadycs.POC1.Model.Procedure_ResultSet;
using Nomadycs.POC1.Model.Models;


namespace Nomadycs.POC1.Data.DataLogic
{
    public class RegisterDL
    {
        private SqlDatabase database = null;
        public RegisterDL()
        {
            DatabaseProvider provider = new DatabaseProvider();
            database = provider.GetdatabaseFactory();
        }

        public string CheckExistingUser(string userName)
        {
            string Result = string.Empty;
            using (DbCommand checkCommand = database.GetSqlStringCommand("SELECT * FROM [User] WHERE [User].Username=@userName"))
            {
                database.AddInParameter(checkCommand, "userName", DbType.String, userName);
                using (IDataReader reader = database.ExecuteReader(checkCommand))
                {
                    if (reader.Read())
                    {
                        Result = "User name already exist.";
                    }
                }
            }
            return Result;
        }

        public void RegisterUser(RegisterUser registerUser)
        {
            using (DbConnection connection = database.CreateConnection())
            {
                connection.Open();
                DbTransaction transaction = connection.BeginTransaction();
                try
                {
                    using (DbCommand insertCommand = database.GetStoredProcCommand("[dbo].[CreateUser]"))
                    {
                        database.AddInParameter(insertCommand, "firstName", DbType.String, registerUser.FirstName);
                        database.AddInParameter(insertCommand, "lastName", DbType.String, registerUser.LastName);
                        database.AddInParameter(insertCommand, "userName", DbType.String, registerUser.UserName);
                        database.AddInParameter(insertCommand, "password", DbType.String, registerUser.Password);
                        database.AddInParameter(insertCommand, "email", DbType.String, registerUser.Email);
                        database.AddInParameter(insertCommand, "createdBy", DbType.Int32, registerUser.CreatedBy);
                        database.AddInParameter(insertCommand, "roleId", DbType.Int32, registerUser.RoleId);
                        if (database.ExecuteNonQuery(insertCommand) > 0)
                        {
                            transaction.Commit();
                        }
                    }
                }
                catch
                {
                    transaction.Rollback();
                    throw;

                }
            }
        }
    }
}
