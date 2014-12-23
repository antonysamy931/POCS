using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Practices.EnterpriseLibrary.Data;
using Microsoft.Practices.EnterpriseLibrary.Data.Sql;
using System.Data.Common;
using System.Data;

using Nomadycs.POC1.Data.Factory;
using Nomadycs.POC1.Data.Mappers.ParamMapper;
using Nomadycs.POC1.Data.Mappers.ResultMapper;
using Nomadycs.POC1.Model.Procedure_ResultSet;
using Nomadycs.POC1.Model.Models;


namespace Nomadycs.POC1.Data.DataLogic
{
    public class UserDL
    {
        private SqlDatabase database = null;
        public UserDL()
        {
            DatabaseProvider provider = new DatabaseProvider();
            database = provider.GetdatabaseFactory();
        }

        public List<Userdetail_ResultSet> GetUserDetail(int userId)
        {
            try
            {
                Dictionary<string, string> parameter = new Dictionary<string, string>();
                parameter.Add("@userid", userId.ToString());
                IParameterMapper paramMapper = new ParameterMapper(parameter);
                IRowMapper<Userdetail_ResultSet> rowMapper = new UserDetail_ResultSet_Mapper();
                return database.ExecuteSprocAccessor<Userdetail_ResultSet>("[dbo].[UserDetail]", paramMapper, rowMapper, null).ToList();
            }
            catch
            {
                throw;
            }
        }

        public List<Userdetail_ResultSet> GetUserDetailByName(string userName)
        {
            try
            {
                Dictionary<string, string> parameter = new Dictionary<string, string>();
                parameter.Add("@username", userName);
                IParameterMapper paramMapper = new ParameterMapper(parameter);
                IRowMapper<Userdetail_ResultSet> rowMapper = new UserDetail_ResultSet_Mapper();
                return database.ExecuteSprocAccessor<Userdetail_ResultSet>("[dbo].[UserDetailByName]", paramMapper, rowMapper, null).ToList();
            }
            catch
            {
                throw;
            }
        }
    }
}
