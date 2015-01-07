using Microsoft.Practices.EnterpriseLibrary.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    class EmployeeRowMapper : IRowMapper<Employee>
    {
        public Employee MapRow(System.Data.IDataRecord row)
        {
            return new Employee
            {
                Id = row.GetInt32(0),
                Name = row.GetString(1),
                Age = row.GetInt32(2),
                Country = row.GetString(3)
            };
        }
    }
}
