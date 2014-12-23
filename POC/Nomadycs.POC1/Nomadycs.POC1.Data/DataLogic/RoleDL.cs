using System.Collections.Generic;
using System.Linq;
using Microsoft.Practices.EnterpriseLibrary.Data;
using Microsoft.Practices.EnterpriseLibrary.Data.Sql;

using Nomadycs.POC1.Data.Factory;
using Nomadycs.POC1.Model.Procedure_ResultSet;
using Nomadycs.POC1.Data.Mappers.ResultMapper;

namespace Nomadycs.POC1.Data.DataLogic
{
    public class RoleDL
    {
        private SqlDatabase database = null;
        public RoleDL()
        { 
            DatabaseProvider provider = new DatabaseProvider();
            database = provider.GetdatabaseFactory();
        }

        public List<Role_ResultSet> GetRoleList()
        {
            try
            {
                IRowMapper<Role_ResultSet> rowMapper = new Role_ResultSet_Mapper();                
                return database.ExecuteSprocAccessor<Role_ResultSet>("[dbo].[RoleList]",rowMapper).ToList();
            }
            catch
            {
                throw;
            }
        }
    }
}
