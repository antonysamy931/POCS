using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Nomadycs.POC1.Model.Models;
using Nomadycs.POC1.Model.Procedure_ResultSet;
using Nomadycs.POC1.Data.DataLogic;

namespace Nomadycs.POC1.Business.BusinessLogic
{
    public class UserBL
    {
        private UserDL _userDL = null;
        public UserBL()
        {
            _userDL = new UserDL();
        }

        public UserDetail GetUserDetail(int userId)
        {
            try
            {
                UserDetail userDetail = new UserDetail();
                List<Userdetail_ResultSet> userResult = _userDL.GetUserDetail(userId);
                if (userResult.Count > 0)
                {                   
                    userDetail = UserDetailParser(userResult);
                }
                return userDetail;
            }
            catch
            {
                throw;
            }            
        }

        public UserDetail GetUserDetailByName(string userName)
        {
            try
            {
                UserDetail userDetail = new UserDetail();
                List<Userdetail_ResultSet> userResult = _userDL.GetUserDetailByName(userName);
                if (userResult.Count > 0) {
                    userDetail = UserDetailParser(userResult);
                }
                return userDetail;
            }
            catch
            {
                throw;
            }
        }       

        public UserDetail UserDetailParser(List<Userdetail_ResultSet> userResult)
        {
            UserDetail userDetail = new UserDetail();
            List<Resource> resources = new List<Resource>();
            try
            {
                userDetail.UserId = userResult.Select(x => x.UserId).FirstOrDefault();
                userDetail.FirstName = userResult.Select(x => x.FirstName).FirstOrDefault();
                userDetail.LastName = userResult.Select(x => x.LastName).FirstOrDefault();
                userDetail.UserName = userResult.Select(x => x.UserName).FirstOrDefault();
                userDetail.Email = userResult.Select(x => x.Email).FirstOrDefault();
                userDetail.RoleId = userResult.Select(x => x.RoleID).FirstOrDefault();
                userDetail.RoleName = userResult.Select(x => x.RoleName).FirstOrDefault();
                List<int> ResourceIds = userResult.GroupBy(x => x.ResourceID).Select(x => x.Key).ToList();
                foreach (var resourceId in ResourceIds)
                {
                    Resource oResource = new Resource();
                    oResource.Name = userResult.Where(x => x.ResourceID == resourceId).Select(x => x.ResourceName).FirstOrDefault();
                    oResource.Permissions = userResult.Where(x => x.ResourceID == resourceId).Select(x => x.PermissionName).ToList();
                    resources.Add(oResource);
                }
                userDetail.Resources = resources;
                return userDetail;
            }
            catch
            {
                throw;
            }
        }        
    }
}
