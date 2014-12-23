using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace WcfRestPOC
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "RestServicePerson" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select RestServicePerson.svc or RestServicePerson.svc.cs at the Solution Explorer and start debugging.
    public class RestServicePerson : IRestServicePerson
    {
        public string DoWork()
        {
            return "success";
        }
    }
}
