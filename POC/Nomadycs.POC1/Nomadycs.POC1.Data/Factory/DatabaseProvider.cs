using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Practices.EnterpriseLibrary.Data;
using Microsoft.Practices.EnterpriseLibrary.Data.Sql;
using System.Configuration;

namespace Nomadycs.POC1.Data.Factory
{
    class DatabaseProvider
    {
        public SqlDatabase GetdatabaseFactory()
        {
            SqlDatabase database;
            DatabaseProviderFactory factory = new DatabaseProviderFactory();
            DatabaseFactory.SetDatabaseProviderFactory(factory, false);
            try
            {
                var connectionString = ConfigurationManager.ConnectionStrings["NomadycsConnectionString"].ToString();                
                database = new SqlDatabase(connectionString);
            }
            catch
            {
                throw;
            }
            return database;
        }
    }
}
