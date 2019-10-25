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
    public partial class WebForm20 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SHP"].ConnectionString);
            con.Open();
            string insert = "insert into tbl_feedback Values (@name, @email, @subject, @message )";
            SqlCommand cmd = new SqlCommand(insert, con);
            
            cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@email", TextBox2.Text);
            cmd.Parameters.AddWithValue("@subject", TextBox3.Text);
            cmd.Parameters.AddWithValue("@message", message.InnerText);
           

            cmd.ExecuteNonQuery();
            Response.Write("successfully submitted");
            
            con.Close();
        }
    }
}