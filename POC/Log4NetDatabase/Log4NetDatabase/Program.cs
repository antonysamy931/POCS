using System;
using System.Collections.Generic;
using System.Text; 
  
namespace Log4NetDatabase
{  
    class Program
    {      
        static void Main(string[] args)
        {
            Log4NetLogger.IDbLogger logger = new Log4NetLogger.DbLogger();
            logger.EnterMethod("Main");
            logger.LogFatal("sample fatal", new Exception("sample exception"));
        }
    }
}