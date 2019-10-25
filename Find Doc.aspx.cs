using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Text.RegularExpressions;
using System.Net.Mail;
using System.Net;
using System.Data.SqlClient;
namespace WebApplication2
{
    public partial class WebForm23 : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            string a = Session["name"].ToString();
        }
    }
}