using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Practices.EnterpriseLibrary.Data;
using Microsoft.Practices.EnterpriseLibrary.Common;
using Microsoft.Practices.EnterpriseLibrary.Data.Sql;
using System.Data.Common;
using System.Data;

namespace DAL
{
    public class EmployeeDL
    {
        private DatabaseProviderFactory _factory = null;
        SqlDatabase _database = null;

        public EmployeeDL()
        {
            _factory = new DatabaseProviderFactory();
            DatabaseFactory.SetDatabaseProviderFactory(_factory, false);
            _database = DatabaseFactory.CreateDatabase("Database Connection String") as SqlDatabase;
        }

        public List<Employee> GetEmployees()
        {
            IRowMapper<Employee> empResultMapper = new EmployeeRowMapper();
            return _database.ExecuteSprocAccessor<Employee>("[dbo].[GetEmployee]", empResultMapper).ToList();
        }

        public Employee GetEmployee(int id)
        {
            Dictionary<string, string> Params = new Dictionary<string, string>();
            Params.Add("@empid", id.ToString());
            IRowMapper<Employee> empResultMapper = new EmployeeRowMapper();
            IParameterMapper parammaper = new ParamMapper(Params);
            return _database.ExecuteSprocAccessor<Employee>("[dbo].[GetEmployeeWithParam]", parammaper, empResultMapper).FirstOrDefault();
        }

        public void Create(Employee employee)
        {
            object[] param = new object[] { employee.Name, employee.Age, employee.Country };
            _database.ExecuteNonQuery("[dbo].[CreateEmployee]", param);
        }

        public void Update(Employee employee)
        {
            object[] param = new object[] { employee.Id, employee.Country };
            _database.ExecuteNonQuery("[dbo].[UpdateEmployee]", param);
        }

        public void Delete(int id)
        {
            var sqlStatement = "Delete from [dbo].[Employee] Where Id=@id";
            using (var con = _database.CreateConnection())
            {
                con.Open();
                DbTransaction trans = con.BeginTransaction();
                using (DbCommand cmd = _database.GetSqlStringCommand(sqlStatement))
                {
                    _database.AddInParameter(cmd, "id", DbType.Int32, id);
                    if (_database.ExecuteNonQuery(cmd) == 0)
                    {
                        trans.Rollback();
                    }
                    else
                    {
                        trans.Commit();
                    }
                }
            }
        }
    }
}
