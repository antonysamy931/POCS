using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;

namespace Nomadycs.POC1.Web.UI.Models.Requests
{
    public static class RequestMethods
    {
        /// <summary>
        /// This request method support GET, DELETE http requests
        /// </summary>
        /// <param name="url">Request Uri</param>
        /// <param name="methodType">Get or Delete</param>
        /// <returns>Response string</returns>
        public static string Request(string url, string methodType)
        {
            string Response = string.Empty;
            try
            {
                HttpWebRequest request = WebRequest.Create(url) as HttpWebRequest;
                request.Method = methodType;
                request.KeepAlive = false;
                HttpWebResponse response = request.GetResponse() as HttpWebResponse;
                StreamReader reader = new StreamReader(response.GetResponseStream());
                Response = reader.ReadToEnd();
            }
            catch
            {
                throw;
            }
            return Response;
        }

        /// <summary>
        /// This request method support POST, PUT http requests
        /// </summary>
        /// <param name="url">Request Uri</param>
        /// <param name="methodType">Post or Put</param>
        /// <param name="data">Class object</param>
        /// <returns>Response data</returns>
        public static string Request(string url, string methodType, dynamic data)
        {
            string Response = string.Empty;
            try
            {

                var postData = JsonConvert.SerializeObject(data);
                var postDataByte = Encoding.ASCII.GetBytes(postData);
                HttpWebRequest request = WebRequest.Create(url) as HttpWebRequest;
                request.Method = methodType;
                request.ContentType = "APPLICATION/JSON";
                request.ContentLength = postDataByte.Length;
                using (var Stream = request.GetRequestStream())
                {
                    Stream.Write(postDataByte, 0, postDataByte.Length);
                }
                HttpWebResponse response = request.GetResponse() as HttpWebResponse;
                StreamReader reader = new StreamReader(response.GetResponseStream());
                Response = reader.ReadToEnd();
            }
            catch { throw; }
            return Response;
        }

    }
}