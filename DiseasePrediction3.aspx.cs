using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if (DropDownList3.SelectedValue == "--Select any  symptoms-- ")
            {
                Label1.Text = "select any value";
            }
            else
            {
                Session["symptom_3"] = DropDownList3.SelectedValue;
                //  string smp3 = (string)Session["symptom_3"];
                Response.Redirect("DiseasePrediction4.aspx");
            }
        }
    }
}