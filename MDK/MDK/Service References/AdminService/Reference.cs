﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.34209
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MDK.AdminService {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="AdminService.IAdminServices")]
    public interface IAdminServices {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAdminServices/validateUser", ReplyAction="http://tempuri.org/IAdminServices/validateUserResponse")]
        string validateUser(string data);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IAdminServices/validateUser", ReplyAction="http://tempuri.org/IAdminServices/validateUserResponse")]
        System.Threading.Tasks.Task<string> validateUserAsync(string data);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IAdminServicesChannel : MDK.AdminService.IAdminServices, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class AdminServicesClient : System.ServiceModel.ClientBase<MDK.AdminService.IAdminServices>, MDK.AdminService.IAdminServices {
        
        public AdminServicesClient() {
        }
        
        public AdminServicesClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public AdminServicesClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public AdminServicesClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public AdminServicesClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public string validateUser(string data) {
            return base.Channel.validateUser(data);
        }
        
        public System.Threading.Tasks.Task<string> validateUserAsync(string data) {
            return base.Channel.validateUserAsync(data);
        }
    }
}
