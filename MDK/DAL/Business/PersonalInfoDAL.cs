using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL.InterfaceDAL;
using Models;
using Models.TransportModel;

namespace DAL.Business
{
    public class PersonalInfoDAL : IDal
    {

        PersonalInfoModel personalInfoModel = null;
        MDKDBMLDataContext _dataContext = null;
        TPersonalInfoData tPersonalInfoData = null;
        PersonInfo personalInfoEntity = null;

        TClientInfo clients = null;
        ClientInfoModel clientModel = null;

        public PersonalInfoDAL()
        {
            personalInfoModel = new PersonalInfoModel();
            _dataContext = new MDKDBMLDataContext();
            tPersonalInfoData = new TPersonalInfoData();
            personalInfoEntity = new PersonInfo();

            clients = new TClientInfo();
            clientModel = new ClientInfoModel();
        }

        public Models.TransportModel.ITransport insertRecord(Models.IModel model)
        {
            throw new NotImplementedException();
        }

        public Models.TransportModel.ITransport deleteRecordById(int model)
        {
            throw new NotImplementedException();
        }

        public Models.TransportModel.ITransport editRecordById(int model)
        {
            throw new NotImplementedException();
        }

        public Models.TransportModel.ITransport updateRecordById(int id, Models.IModel newModel)
        {
            throw new NotImplementedException();
        }




        public TClientInfo getAllClient()
        {
            try
            {

                clients.allClients = _dataContext.ClientInfos.Cast<ClientInfoModel>().ToList();

                var m = tPersonalInfoData;

               //
               //  "DATA_ACCESS_SUCCESS";
               
               // return tPersonalInfoData;
            }
            catch (Exception exp)
            {
                tPersonalInfoData.ErrorCode = "DATA_ACCESS_ERROR";
                tPersonalInfoData.ErrorMessage = "getAllRecords: " + exp.InnerException.ToString();
                 
            }
            return null;
        }

        public TPersonalInfoData createBusinessPerson(List<PersonalInfoModel> list)
        {
            try
            {
                var entityList = new List<PersonInfo>();

                list.ForEach(item =>
                {
                    var model = new PersonInfo();

                    model.FirstName = item.FirstName;
                    model.MiddleName = item.MiddleName;
                    model.LastName = item.LastName;
                    model.ContactNo = item.ContactNo;
                    model.AlternateNo = item.AlternateNo;
                    model.EmailID = item.EmailID;
                    model.DateOfBirth = item.DateOfBirth;
                    model.Address = item.Address;
                    model.BPAN = item.BPAN;

                    entityList.Add(model);
                });

                _dataContext.PersonInfos.InsertAllOnSubmit(entityList);
                _dataContext.SubmitChanges();

                tPersonalInfoData.SuccessCode = SuccessCodes.RECORD_SAVED_SUCCESSFULLY;
                tPersonalInfoData.SuccessMessage = SuccessMessages.RECORD_SAVED_SUCCESSFULLY_MSG;

                return tPersonalInfoData;

            }

            catch (Exception exp)
            {
                tPersonalInfoData.ErrorCode = ErrorCodes.DATA_ACCESS_ERROR;
                tPersonalInfoData.ErrorMessage = exp.Message;
                return tPersonalInfoData;
            }


        }
    }
}
