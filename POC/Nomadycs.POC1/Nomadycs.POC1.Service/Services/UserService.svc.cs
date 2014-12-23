using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Activation;
using System.ServiceModel.Web;
using System.Text;

using Nomadycs.POC1.Service.Interfaces;
using Nomadycs.POC1.Model.Models;
using Nomadycs.POC1.Business.BusinessLogic;

namespace Nomadycs.POC1.Service.Services
{    
    [AspNetCompatibilityRequirements(RequirementsMode = AspNetCompatibilityRequirementsMode.Allowed)]
    public class UserService:IUserService
    {
        private UserBL _UserBL = null;
        public UserService() {
            _UserBL = new UserBL();
        }

        public UserDetail GetUser(string userId)
        {
            try
            {
                return _UserBL.GetUserDetail(Convert.ToInt32(userId));
            }
            catch (Exception ex)
            {
                throw;
            }
        }


        public UserDetail GetUserByName(string userName)
        {
            try
            {
                return _UserBL.GetUserDetailByName(userName);
            }
            catch (Exception ex)
            {
                throw;
            }
        }
    }
}
