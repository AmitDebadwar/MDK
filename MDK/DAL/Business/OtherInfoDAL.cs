﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL.InterfaceDAL;
using Models;
using Models.TransportModel;

namespace DAL.Business
{
    public class OtherInfoDAL : IDal
    {
        MDKDBMLDataContext _dataContext;
        OtherInfoModel _model;
        OtherInfo entity;
        TOtherInfoData tOtherInfoData = null;

        public OtherInfoDAL()
        {
            _dataContext = new MDKDBMLDataContext();
            entity = new OtherInfo();
            tOtherInfoData = new TOtherInfoData();
        }
        public TOtherInfoData saveOtherInfo(IModel model)
        {


            //try
            //{
            //    _model = (OtherInfoModel)model;

            //    entity.BusinessGUID = _model.BusinessGUID;
            //    entity.ServiceTaxNumber = _model.ServiceTaxNumber;
            //    entity.PFESINumber = _model.PFESI_NO;
            //    entity.ExciseNumber = _model.ExciseNumber;

            //    _dataContext.OtherInfos.InsertOnSubmit(entity);
            //    _dataContext.SubmitChanges();

            //    tOtherInfoData.SuccessCode = SuccessCodes.RECORD_SAVED_SUCCESSFULLY;
            //    tOtherInfoData.SuccessMessage = SuccessMessages.RECORD_SAVED_SUCCESSFULLY_MSG;

            //    return tOtherInfoData;
            //}

            //catch (Exception exp)
            //{
            //    tOtherInfoData.ErrorCode = ErrorCodes.DATA_ACCESS_ERROR;
            //    tOtherInfoData.ErrorMessage = exp.StackTrace;

            //    return tOtherInfoData;
            //}

            return null;

        }

        public TOtherInfoData getOtherDetails(string businessGUID)
        {
            //tOtherInfoData.otherInfoModel = new OtherInfoModel();

            //var otherInfo = _dataContext.OtherInfos.FirstOrDefault(x => x.BusinessGUID == businessGUID);
            //try
            //{
            //    if (otherInfo != null)
            //    {
            //        tOtherInfoData.otherInfoModel.BusinessGUID = otherInfo.BusinessGUID;
            //        tOtherInfoData.otherInfoModel.ExciseNumber = otherInfo.ExciseNumber;
            //        tOtherInfoData.otherInfoModel.PFESI_NO = otherInfo.PFESINumber;
            //        tOtherInfoData.otherInfoModel.ServiceTaxNumber = otherInfo.ServiceTaxNumber;

            //        tOtherInfoData.SuccessCode = SuccessCodes.RECORD_RETRIEVED_SUCCESSFULLY;

            //        return tOtherInfoData;
            //    }
            //    else
            //    {
            //        tOtherInfoData.SuccessCode = SuccessCodes.RECORD_NOT_FOUND;
            //        tOtherInfoData.SuccessMessage = SuccessMessages.RECORD_NOT_FOUND;

            //        return tOtherInfoData;
            //    }
            //}
            //catch (Exception exp)
            //{
            //    tOtherInfoData.ErrorCode = ErrorCodes.DATA_ACCESS_ERROR;
            //    tOtherInfoData.ErrorMessage = exp.StackTrace;

            //    return tOtherInfoData;
            //}

            return null;
         }
    }
}
