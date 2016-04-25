using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
   public class ClientInfoModel:IModel
    {
        public string BusinessType { get; set; }
        public string BusinessName { get; set; }
        public string BusinessPAN { get; set; }
        public string DateOfEstablishment { get; set; }
    }
}
