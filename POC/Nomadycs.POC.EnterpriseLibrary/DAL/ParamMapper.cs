using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Common;
using Microsoft.Practices.EnterpriseLibrary.Data;

namespace DAL
{
    public class ParamMapper :IParameterMapper
    {
        private Dictionary<string, string> _Parameter;
        public ParamMapper(Dictionary<string,string> parameters)
        {
            _Parameter = parameters;
        }

        public void AssignParameters(DbCommand command, object[] parameterValues)
        {
            if (_Parameter.Count > 0)
            {
                foreach (var item in _Parameter)
                {
                    DbParameter param = command.CreateParameter();
                    param.ParameterName = item.Key;
                    param.Value = item.Value;
                    command.Parameters.Add(param);
                }
            }
        }
    }
}
