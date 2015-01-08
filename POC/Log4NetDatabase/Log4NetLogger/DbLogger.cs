using log4net;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

[assembly: log4net.Config.XmlConfigurator]
namespace Log4NetLogger
{
    public class DbLogger : IDbLogger
    {
        #region Datamembers
        private static ILog log = null;
        #endregion

        #region Class Initializer
        public DbLogger()
        {
            log = LogManager.GetLogger(typeof(DbLogger));
        }

        #endregion

        #region IDbLogger Members

        public void EnterMethod(string methodName)
        {
            if (log.IsInfoEnabled)
                log.Info(string.Format(CultureInfo.InvariantCulture, "Entering Method {0}", methodName));
        }

        public void LeaveMethod(string methodName)
        {
            if (log.IsInfoEnabled)
                log.Info(string.Format(CultureInfo.InvariantCulture, "Leaving Method {0}", methodName));
        }

        public void LogException(Exception exception)
        {
            if (log.IsErrorEnabled)
                log.Error(string.Format(CultureInfo.InvariantCulture, "{0}", exception.Message), exception);
        }


        public void LogFatal(string message, Exception exception)
        {
            if (log.IsFatalEnabled)
                log.Fatal(string.Format(CultureInfo.InvariantCulture, "{0}", message), exception);
        }

        public void LogError(string message)
        {
            if (log.IsErrorEnabled)
                log.Error(string.Format(CultureInfo.InvariantCulture, "{0}", message));
        }

        public void LogWarningMessage(string message)
        {
            if (log.IsWarnEnabled)
                log.Warn(string.Format(CultureInfo.InvariantCulture, "{0}", message));
        }

        public void LogInfoMessage(string message)
        {
            if (log.IsInfoEnabled)
                log.Info(string.Format(CultureInfo.InvariantCulture, "{0}", message));
        }

        #endregion


    }
}
