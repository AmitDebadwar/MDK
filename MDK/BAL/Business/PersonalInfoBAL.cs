using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using BAL.InterfaceBAL;
using DAL.Business;
using Models;
using Models.TransportModel;

namespace BAL.Business
{
    public class PersonalInfoBAL : IBal
    {
        PersonalInfoDAL personalInfoDAL = null;

        TPersonalInfoData tPersonalInfoData = null;

        public PersonalInfoBAL()
        {
            personalInfoDAL = new PersonalInfoDAL();
            tPersonalInfoData = new TPersonalInfoData();
        }

        public TClientInfo getAllClient()
        {
            return null;
        }

        public TPersonalInfoData createBusinessPerson(List<PersonalInfoModel> data)
        {
            try
            {
                tPersonalInfoData = personalInfoDAL.createBusinessPerson(data);
                tPersonalInfoData.tPersonalInfoData = new PersonalInfoModel();

                tPersonalInfoData.SuccessCode = SuccessCodes.RECORD_SAVED_SUCCESSFULLY;
                tPersonalInfoData.SuccessMessage = SuccessMessages.RECORD_SAVED_SUCCESSFULLY_MSG;

                return tPersonalInfoData;
            }

            catch (Exception exp)
            {
                tPersonalInfoData.ErrorCode = ErrorCodes.BUSINESS_LOGIC_ERROR;
                tPersonalInfoData.ErrorMessage = exp.StackTrace;
                return tPersonalInfoData;
            }

        }

    }


}
