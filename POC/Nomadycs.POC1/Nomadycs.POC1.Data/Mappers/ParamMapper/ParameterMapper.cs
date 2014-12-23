using Microsoft.Practices.EnterpriseLibrary.Data;
using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nomadycs.POC1.Data.Mappers.ParamMapper
{
    public class ParameterMapper : IParameterMapper
    {
        private Dictionary<string, string> _Parameter;

        public ParameterMapper(Dictionary<string, string> parameters)
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
