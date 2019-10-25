using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication2
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void docsignup_click(object sender, EventArgs e)
        {
            string b = "WIN_20151202_11_54_15_Pro.jpg";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SHP"].ConnectionString);
            con.Open();
            string insert = "insert into tbl_docsignup Values (@name ,@specialist, @email,  @password, @cnfirmpass,@age, @address, @gender, @phone, @img, @hname)";
            SqlCommand cmd = new SqlCommand(insert, con);
            cmd.Parameters.AddWithValue("@name", name.Text);
            cmd.Parameters.AddWithValue("@specialist", specialist.Text);
            cmd.Parameters.AddWithValue("@email", mail.Text);
            cmd.Parameters.AddWithValue("@password", pass.Text);
            cmd.Parameters.AddWithValue("@cnfirmpass", conformpass.Text);
            cmd.Parameters.AddWithValue("@img", b);
            cmd.Parameters.AddWithValue("@hname", h_name.Text);
            cmd.Parameters.AddWithValue("@age", age.Text);
            cmd.Parameters.AddWithValue("@gender", gender.Text);
            cmd.Parameters.AddWithValue("@address", add.Text);
            cmd.Parameters.AddWithValue("@phone", phone.Text);
            cmd.ExecuteNonQuery();
            Response.Redirect("Doc login.aspx");
            con.Close();

        }
    }
}