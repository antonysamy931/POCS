using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Practices.EnterpriseLibrary.Data;

using Nomadycs.POC1.Model.Procedure_ResultSet;

namespace Nomadycs.POC1.Data.Mappers.ResultMapper
{
    public class Role_ResultSet_Mapper : IRowMapper<Role_ResultSet>
    {
        public Role_ResultSet MapRow(IDataRecord row)
        {
            return new Role_ResultSet
            {
                RoleId = row.GetInt32(0),
                RoleName = row.GetString(1)
            };
        }
    }
}
