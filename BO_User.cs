using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication2
{
    public class BO_User
    {
        public int id { get; set; }
        public string fname { get; set; }
        public string lname { get; set; }
        public string email { get; set; }
        public string pass { get; set; }
        public string image { get; set; }
        public string address { get; set; }
        public string age { get; set; }
        public string fone { get; set; }
        public string gender { get; set; }
        public bool isAct { get; set; }

        public int MyProperty { get; set; }
    }
}