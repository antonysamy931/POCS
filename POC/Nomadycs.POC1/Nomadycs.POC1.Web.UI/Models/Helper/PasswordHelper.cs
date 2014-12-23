using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Cryptography;
using System.Text;

namespace Nomadycs.POC1.Web.UI.Models.Helper
{
    public class PasswordHelper
    {
        public static string GetSHA512Data(string data)
        {
            SHA512 sha512 = SHA512.Create();
            byte[] hashData = sha512.ComputeHash(Encoding.Default.GetBytes(data));
            StringBuilder returnValue = new StringBuilder();
            for (int i = 0; i < hashData.Length; i++)
            {
                returnValue.Append(hashData[i].ToString());
            }
            return returnValue.ToString();
        }

        public static bool ValidateSHA512Data(string data, string storedData)
        {
            string getHashData = GetSHA512Data(data);
            if (string.Compare(getHashData, storedData) == 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}