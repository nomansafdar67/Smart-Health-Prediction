using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
namespace WebApplication2
{
    public partial class AuthChecker : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            if (id == "2")
            {
                HtmlGenericControl button = new HtmlGenericControl("input");
                button.Attributes.Add("type","button");
                button.Attributes.Add("value", "Change Picture");
                divCont.Controls.Add(button);
                
            }
        }
    }
}