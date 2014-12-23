using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using Nomadycs.POC1.Web.UI.Principal;

namespace Nomadycs.POC1.Web.UI.Models.ShardContext
{
    public class ShardContext
    {        
        public List<string> Resources
        {
            get;
            set;
        }

        public bool Create
        {
            get;
            set;
        }

        public bool Read
        {
            get;
            set;
        }

        public bool Delete
        {
            get;
            set;
        }
        public bool Edit
        {
            get;
            set;
        }
    }
}