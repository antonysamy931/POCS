using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Log4NetLogger
{
    public interface IDbLogger
    {
        /// <summary>  
        /// Writes a log entry when entering the method.  
        /// </summary>  
        /// <param name="methodName">  
        void EnterMethod(string methodName);

        /// <summary>  
        /// Writes a log entry when leaving the method.  
        /// </summary>  
        /// <param name="methodName">  
        void LeaveMethod(string methodName);

        /// <summary>  
        /// Logs the exception.  
        /// </summary>  
        /// <param name="exception">  
        void LogException(Exception exception);

        /// <summary>
        /// Logs the fatal exception
        /// </summary>
        /// <param name="message"></param>
        /// <param name="exception"></param>
        void LogFatal(string message, Exception exception);

        /// <summary>  
        /// Logs the error.  
        /// </summary>  
        /// <param name="message">  
        void LogError(string message);

        /// <summary>  
        /// Logs the warning message.  
        /// </summary>  
        /// <param name="message">  
        void LogWarningMessage(string message);

        /// <summary>  
        /// Logs the info message.  
        /// </summary>  
        /// <param name="message">  
        void LogInfoMessage(string message);        
    }

}
