using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WcfRestPOC.MVC.Client.Models
{
    public class Book
    {
        [JsonProperty("Id")]
        public int Id { get; set; }
        [JsonProperty("BookName")]
        public string BookName { get; set; }       
    }
}