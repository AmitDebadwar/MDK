using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.ServiceModel.Web;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Hosting;
using System.Web.Script.Serialization;
using BAL.Business;
using Models;
using Models.TransportModel;

namespace Services.BusinessServices
{
    public class BusinessServices : IBusinessServices
    {
        JavaScriptSerializer _serializer = null;

        List<PersonalInfoModel> personalInfoList = null;
        PersonalInfoBAL personalInfoBAL = null;
        TPersonalInfoData tPersonalInfoData = null;

        LineDetailsBAL lineDetailsBAL = null;

        BankBAL bankBAL = null;
        TBankData tBankData = null;

        TITInfoData tITInfoData = null;
        ITInfoBAL iTInfoBAL = null;

        TOtherInfoData tOtherInfoData = null;
        OtherInfoBAL otherInfoBAL = null;

        Random RandomPIN = new Random();

        ClientInfoBAL clientInfoBAL = null;
        TClientInfo tClientInfoData = null;


        public BusinessServices()
        {
            _serializer = new JavaScriptSerializer();

            personalInfoList = new List<PersonalInfoModel>();
            personalInfoBAL = new PersonalInfoBAL();

            tPersonalInfoData = new TPersonalInfoData();
            tBankData = new TBankData();

            lineDetailsBAL = new LineDetailsBAL();
            bankBAL = new BankBAL();

            tITInfoData = new TITInfoData();
            iTInfoBAL = new ITInfoBAL();

            tOtherInfoData = new TOtherInfoData();
            otherInfoBAL = new OtherInfoBAL();
             
            tClientInfoData = new TClientInfo();
            clientInfoBAL = new ClientInfoBAL();
 
        }

        public TClientInfo enrollClient(string data)
        {
            var clientInfo = _serializer.Deserialize<ClientInfoModel>(data);
            return clientInfoBAL.enrollClient(clientInfo);
        }

        public TPersonalInfoData createBusinessPerson(string data)
        {
            try
            {
                personalInfoList = _serializer.Deserialize<List<PersonalInfoModel>>(data);
                tPersonalInfoData = personalInfoBAL.createBusinessPerson(personalInfoList);
                return tPersonalInfoData;
            }

            catch (Exception exp)
            {
                tPersonalInfoData.ErrorCode = ErrorCodes.SERVICE_ERROR;
                tPersonalInfoData.ErrorMessage = exp.StackTrace;
                return tPersonalInfoData;
            }
        }

      

     
    }
}