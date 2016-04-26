using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Models
{
    public class PersonalInfoModel : IModel
    {
        public int id { get; set; }
        public string FirstName { get; set; }
        public string MiddleName { get; set; }
        public string LastName { get; set; }
        public string ContactNo { get; set; }
        public string AlternateNo { get; set; }
        public string EmailID { get; set; }
        public string DateOfBirth { get; set; }
        public string Address { get; set; }
        public string BPAN { get; set; }
    }
}
