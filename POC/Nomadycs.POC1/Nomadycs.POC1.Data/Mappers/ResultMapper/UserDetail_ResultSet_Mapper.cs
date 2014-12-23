using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Nomadycs.POC1.Model.Procedure_ResultSet;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data;

namespace Nomadycs.POC1.Data.Mappers.ResultMapper
{
    public class UserDetail_ResultSet_Mapper: IRowMapper<Userdetail_ResultSet>
    {
        public Userdetail_ResultSet MapRow(IDataRecord row)
        {
            return new Userdetail_ResultSet
            {
                UserId=row.GetInt32(0),
                FirstName=row.GetString(1),
                Email=row.GetString(2),
                LastName=row.GetString(3),
                UserName=row.GetString(4),
                RoleID=row.GetInt32(5),
                RoleName=row.GetString(6),
                ResourceID=row.GetInt32(7),
                ResourceName=row.GetString(8),
                PermissionName=row.GetString(9)
            };
        }
    }
}
