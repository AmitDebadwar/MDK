using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using Models;
using Models.TransportModel;

namespace Services.BusinessServices
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IBusinessServices" in both code and config file together.
    [ServiceContract]
    public interface IBusinessServices
    {
        [OperationContract]
        [WebInvoke(ResponseFormat = WebMessageFormat.Json,
             RequestFormat = WebMessageFormat.Json,
             BodyStyle = WebMessageBodyStyle.Wrapped,
             Method = "POST")]
        TClientInfo enrollClient(string data);


        [OperationContract]
        [WebInvoke(ResponseFormat = WebMessageFormat.Json,
            RequestFormat = WebMessageFormat.Json,
            BodyStyle = WebMessageBodyStyle.Wrapped,
            Method = "POST")]
        TPersonalInfoData createBusinessPerson(string data);
    }
}
