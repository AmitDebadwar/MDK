﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models.TransportModel
{
    public class TClientInfo : TransportData
    {
     public IEnumerable<ClientInfoModel> allClients {get;set;}
    }
}
