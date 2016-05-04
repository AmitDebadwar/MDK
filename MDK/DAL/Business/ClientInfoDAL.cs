using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL.InterfaceDAL;
using Models;
using Models.TransportModel;

namespace DAL.Business
{
    public class ClientInfoDAL : IDal
    {
        MDKDBMLDataContext _dataContext;
        ClientInfoModel _model;
        ClientInfo entity;
        TClientInfo tClientInfoData = null;

        public ClientInfoDAL()
        {
            _dataContext = new MDKDBMLDataContext();
            entity = new ClientInfo();
            tClientInfoData = new TClientInfo();
        }
        
        public TClientInfo enrollClient(IModel model)
        {


            try
            {
                _model = (ClientInfoModel)model;

                entity.BPAN = _model.BPAN;
                entity.BusinessName = _model.BusinessName;
                entity.BusinessType = _model.BusinessType;
                entity.DateOfEstablishment = _model.DateOfEstablishment;
                entity.BusinessContactNo = _model.BusinessContactNo;
                entity.BusinessEmailId = _model.BusinessEmailId;


                _dataContext.ClientInfos.InsertOnSubmit(entity);
                _dataContext.SubmitChanges();


                tClientInfoData.SuccessCode = SuccessCodes.RECORD_SAVED_SUCCESSFULLY;
                tClientInfoData.SuccessMessage=SuccessMessages.RECORD_SAVED_SUCCESSFULLY_MSG;

                return tClientInfoData;
            }

            catch (Exception exp)
            {
                tClientInfoData.ErrorCode = ErrorCodes.DATA_ACCESS_ERROR;
                tClientInfoData.ErrorMessage = exp.StackTrace;

                return tClientInfoData;
            }

        }



        
    }
}
