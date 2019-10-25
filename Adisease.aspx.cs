using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
namespace WebApplication2
{
    public partial class Adisease : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SHP"].ConnectionString);
            con.Open();
            string insert = "insert into tbl_disease  Values(@symp1 ,@symp2, @symp3, @symp4, @disease )";
            SqlCommand cmd = new SqlCommand(insert, con);
            cmd.Parameters.AddWithValue("@symp1", TextBox1.Text);
            cmd.Parameters.AddWithValue("@symp2", TextBox2.Text);
            cmd.Parameters.AddWithValue("@symp3", TextBox3.Text);
            cmd.Parameters.AddWithValue("@symp4", TextBox4.Text);
            cmd.Parameters.AddWithValue("@disease", TextBox5.Text);
            cmd.ExecuteNonQuery();
           
            con.Close();

        }
    }
}