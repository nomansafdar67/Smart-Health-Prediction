using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)

        {

        }
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if (DropDownList2.SelectedValue == "--Select any  symptoms-- ")
            {
                Label1.Text = "select any value";
            }
            else
            {
                Session["symptom_2"] = DropDownList2.SelectedValue;
                // string smp2 = (string)Session["symptom_2"];
                Response.Redirect("DiseasePrediction3.aspx");
            }
        }
    }
}