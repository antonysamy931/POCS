using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.ServiceModel.Activation;

using Nomadycs.POC1.Model.Models;
using Nomadycs.POC1.Service.Interfaces;
using Nomadycs.POC1.Business.BusinessLogic;

namespace Nomadycs.POC1.Service.Services
{
    [AspNetCompatibilityRequirements(RequirementsMode = AspNetCompatibilityRequirementsMode.Allowed)]
    public class AccountService : IAccountService
    {
        private LoginBL _LoginBL;
        private RegisterBL _RegisterBL;
        public AccountService()
        {
            _LoginBL = new LoginBL();
            _RegisterBL = new RegisterBL();
        }

        public int Login(Login login)
        {
            try
            {
                return _LoginBL.CheckUser(login);
            }
            catch (Exception ex)
            {
                throw;
            }
        }


        public string Existing(string userName)
        {
            try
            {
                return _RegisterBL.CheckExistingUser(userName);
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        public void Register(RegisterUser registerUser)
        {
            try
            {
                _RegisterBL.RegisterUser(registerUser);
            }
            catch(Exception ex)
            {
                throw;
            }
        }
    }
}
