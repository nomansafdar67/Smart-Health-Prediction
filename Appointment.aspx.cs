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
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void appointment_Click(object sender, EventArgs e)
        {
            string b = Session["id"].ToString();
            string c = Session["gender"].ToString();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SHP"].ConnectionString);
            con.Open();
            string insert = "insert into tbl_appointment Values (@pname, @id, @dname, @disease, @gender, @date )";
            SqlCommand cmd = new SqlCommand(insert, con);
            cmd.Parameters.AddWithValue("@id", b);
            cmd.Parameters.AddWithValue("@pname", TextBox1.Text);
            cmd.Parameters.AddWithValue("@dname", TextBox2.Text);
            cmd.Parameters.AddWithValue("@disease", TextBox3.Text);
            cmd.Parameters.AddWithValue("@gender", c);
            cmd.Parameters.AddWithValue("@date", TextBox4.Text);
        
            cmd.ExecuteNonQuery();
            Response.Write("successfully submitted");
            con.Close();
        }
    }
}