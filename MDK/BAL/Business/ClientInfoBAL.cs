using System;
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
    public class ClientInfoBAL : IBal
    {
        ClientInfoDAL clientInfoDal;

        public ClientInfoBAL()
        {
            clientInfoDal = new ClientInfoDAL();
        }

        public TClientInfo enrollClient(IModel model)
        {
            return clientInfoDal.enrollClient(model);
        }


    }
}
