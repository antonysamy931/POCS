﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.18063
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Nomadycs.POC1.Model.Models
{
    using System.Runtime.Serialization;
    
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="Role", Namespace="http://schemas.datacontract.org/2004/07/Nomadycs.POC1.Model.Models")]
    public partial class Role : object, System.Runtime.Serialization.IExtensibleDataObject
    {
        
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        private int RoleIdField;
        
        private string RoleNameField;
        
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData
        {
            get
            {
                return this.extensionDataField;
            }
            set
            {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public int RoleId
        {
            get
            {
                return this.RoleIdField;
            }
            set
            {
                this.RoleIdField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string RoleName
        {
            get
            {
                return this.RoleNameField;
            }
            set
            {
                this.RoleNameField = value;
            }
        }
    }
}


[System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
[System.ServiceModel.ServiceContractAttribute(ConfigurationName="IRoleService")]
public interface IRoleService
{
    
    [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IRoleService/GetRoleList", ReplyAction="http://tempuri.org/IRoleService/GetRoleListResponse")]
    Nomadycs.POC1.Model.Models.Role[] GetRoleList();
    
    [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IRoleService/GetRoleList", ReplyAction="http://tempuri.org/IRoleService/GetRoleListResponse")]
    System.Threading.Tasks.Task<Nomadycs.POC1.Model.Models.Role[]> GetRoleListAsync();
}

[System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
public interface IRoleServiceChannel : IRoleService, System.ServiceModel.IClientChannel
{
}

[System.Diagnostics.DebuggerStepThroughAttribute()]
[System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
public partial class RoleServiceClient : System.ServiceModel.ClientBase<IRoleService>, IRoleService
{
    
    public RoleServiceClient()
    {
    }
    
    public RoleServiceClient(string endpointConfigurationName) : 
            base(endpointConfigurationName)
    {
    }
    
    public RoleServiceClient(string endpointConfigurationName, string remoteAddress) : 
            base(endpointConfigurationName, remoteAddress)
    {
    }
    
    public RoleServiceClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
            base(endpointConfigurationName, remoteAddress)
    {
    }
    
    public RoleServiceClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
            base(binding, remoteAddress)
    {
    }
    
    public Nomadycs.POC1.Model.Models.Role[] GetRoleList()
    {
        return base.Channel.GetRoleList();
    }
    
    public System.Threading.Tasks.Task<Nomadycs.POC1.Model.Models.Role[]> GetRoleListAsync()
    {
        return base.Channel.GetRoleListAsync();
    }
}
