using Microsoft.Practices.EnterpriseLibrary.Data;
using Microsoft.Practices.EnterpriseLibrary.Logging;
using Microsoft.Practices.EnterpriseLibrary.Logging.Database;

using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nomadycs.POC1.Logger
{
    public class LogSample
    {
        public void logData()
        {
            DatabaseFactory.SetDatabaseProviderFactory(new DatabaseProviderFactory());
            Microsoft.Practices.EnterpriseLibrary.Logging.Logger.SetLogWriter(new LogWriterFactory().Create());
            Dictionary<string, object> extravalue = new Dictionary<string, object>();
            extravalue.Add("sampleextra", DateTime.Now);
            LogEntry logEntry = new LogEntry
            {
                Message = "Error Message",
                Severity = TraceEventType.Error,
                AppDomainName = "sample domain",
                Priority = 0,
                Title = "sample logging in database",
                ProcessName = "sample process name",
                ExtendedProperties = extravalue                
            };
            logEntry.Categories.Add("Category");            
            Microsoft.Practices.EnterpriseLibrary.Logging.Logger.Write(logEntry);
        }

        public void textData()
        {
            Microsoft.Practices.EnterpriseLibrary.Logging.Logger.SetLogWriter(new LogWriterFactory().Create());
            Microsoft.Practices.EnterpriseLibrary.Logging.Logger.Write(new LogEntry
            {
                AppDomainName = "sample",
                EventId = 2,
                Priority = 1,
                Severity = TraceEventType.Error,
                Message = "error",
                TimeStamp = new DateTime(),
                Title = "sample title",
            });
        }
    }
}
