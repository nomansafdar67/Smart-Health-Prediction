using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace WebApplication2
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            if (DropDownList4.SelectedValue == "--Select any  symptoms-- ")
            {
                Label1.Text = "select any value";
            }
            else
            {
                Session["symptom_4"] = DropDownList4.SelectedValue;

                Response.Redirect("DiseasePrediction5.aspx");
            }
        }
    }
}