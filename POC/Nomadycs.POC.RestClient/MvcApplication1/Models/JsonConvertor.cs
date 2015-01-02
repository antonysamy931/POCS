using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MvcApplication1.Models
{
    public class JsonConvertor
    {
        public static T Convert<T>(string Response)
        {
            try
            {
                return JsonConvert.DeserializeObject<T>(Response);
            }
            catch
            {
                throw;
            }
        }

        public static List<T> ConvertList<T>(string Response)
        {
            try
            {
                return JsonConvert.DeserializeObject<List<T>>(Response);
            }
            catch
            {
                throw;
            }
        }

        public static string Convert(string Response)
        {
            return JsonConvert.DeserializeObject(Response).ToString();
        }
    }
}