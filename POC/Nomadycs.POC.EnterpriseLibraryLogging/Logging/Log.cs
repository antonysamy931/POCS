using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Diagnostics;

using Microsoft.Practices.EnterpriseLibrary.Data;
using Microsoft.Practices.EnterpriseLibrary.Common;
using Microsoft.Practices.EnterpriseLibrary.Logging;
using Microsoft.Practices.EnterpriseLibrary.Logging.Database;

namespace Logging
{
    public static class Log
    {
        /// <summary>
        /// Log constructor use to initialize database factory and logwriter factory
        /// </summary>
        static Log()
        {
            DatabaseFactory.SetDatabaseProviderFactory(new DatabaseProviderFactory());
            Logger.SetLogWriter(new LogWriterFactory().Create());
        }

        /// <summary>
        /// Log Information (Support all type of listener)
        /// </summary>
        /// <param name="Listener">Type of listener(Category name, Rolling listerner, Event listener)</param>
        /// <param name="Message">Log information</param>
        /// <param name="ExtraInformation">Additional informations</param>
        public static void Info(string Listener, string Message, Dictionary<string, object> ExtraInformation)
        {
            LogEntry infoLog = Common("Information Log", TraceEventType.Information, 4, Listener, Message, ExtraInformation);
            Logger.Write(infoLog);
        }

        /// <summary>
        /// Error Information logging (support all type fo listener)
        /// </summary>
        /// <param name="Listener">Listener category name.</param>
        /// <param name="Message">Error message</param>
        /// <param name="ExtraInformation">Extra information</param>
        public static void Error(string Listener, string Message, Dictionary<string, object> ExtraInformation)
        {
            LogEntry errorLog = Common("Error Information Log", TraceEventType.Error, 2, Listener, Message, ExtraInformation);
            Logger.Write(errorLog);
        }

        /// <summary>
        /// Warning information logging
        /// </summary>
        /// <param name="Listener">Listener category name</param>
        /// <param name="Message">Warning information</param>
        /// <param name="ExtraInformation">Extra information</param>
        public static void Warning(string Listener, string Message, Dictionary<string, object> ExtraInformation)
        {
            LogEntry warningLog = Common("Warning Information Log", TraceEventType.Warning, 3, Listener, Message, ExtraInformation);
            Logger.Write(warningLog);
        }

        /// <summary>
        /// Fatal error information logging
        /// </summary>
        /// <param name="Listener">Listener category name</param>
        /// <param name="Message">Fatal error message</param>
        /// <param name="ExtraInformation">Extra information to be stored</param>
        public static void Fatal(string Listener, string Message, Dictionary<string, object> ExtraInformation)
        {
            LogEntry fatalLog = Common("Fatal Information Log", TraceEventType.Critical, 1, Listener, Message, ExtraInformation);
            Logger.Write(fatalLog);
        }

        /// <summary>
        /// Common method for logging
        /// </summary>
        /// <param name="Title"></param>
        /// <param name="LogType"></param>
        /// <param name="Priority"></param>
        /// <param name="Listener"></param>
        /// <param name="Message"></param>
        /// <param name="ExtraInformation"></param>
        /// <returns>logentry</returns>
        static internal LogEntry Common(string Title, TraceEventType LogType, int Priority, string Listener, string Message, Dictionary<string, object> ExtraInformation)
        {
            LogEntry logEntry = new LogEntry
            {
                Message = Message,
                Severity = LogType,
                Priority = Priority,
                Title = Title,
                ExtendedProperties = ExtraInformation
            };
            logEntry.Categories.Add(Listener);
            return logEntry;
        }
    }
}
