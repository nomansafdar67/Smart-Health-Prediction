using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication2.Code
{
    public class BO_Conversation
    {
        public string id { get; set; }
        public string DoctorID { get; set; }
        public string PatientID { get; set; }
        public string NextUserName { get; set; }
    }
}