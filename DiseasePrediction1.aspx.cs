using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            
            if(DropDownList1.SelectedValue== "--Select any  symptoms-- ")
            {
                Label1.Text = "select any value";
            }
            else
            {
                Session["symptom_1"] = DropDownList1.SelectedValue;

                Response.Redirect("DiseasePrediction2.aspx");
            }
        }
    }
}