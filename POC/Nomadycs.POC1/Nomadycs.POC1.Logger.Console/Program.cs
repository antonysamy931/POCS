using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nomadycs.POC1.Logger.Console
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                int a = Convert.ToInt32("sampel");
            }
            catch (Exception ex)
            {
                LogSample logSample = new LogSample();
                logSample.logData();
            }
        }
    }
}
