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
    public partial class WebForm25 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["SHP"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select uid from Reset where code='" + Request.QueryString["code"] + "'", con);

            int id = Convert.ToInt32(cmd.ExecuteScalar());
            SqlCommand cmd2 = new SqlCommand("update tbl_signup set password=@t where id=@id", con);
            cmd2.Parameters.AddWithValue("@t", TextBox1.Text);
            cmd2.Parameters.AddWithValue("@id", id);

            cmd2.ExecuteNonQuery();
            SqlCommand cmd3 = new SqlCommand("delete  from Reset where id='" + id + "'", con);
            cmd3.ExecuteNonQuery();

            Response.Write(Request.QueryString["a"]);
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["SHP"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select uid from Reset where code='" + Request.QueryString["code"] + "'", con);

            int id = Convert.ToInt32(cmd.ExecuteScalar());
            SqlCommand cmd2 = new SqlCommand("update tbl_signup set password=@t , cpassword=@c where id=@id", con);
            cmd2.Parameters.AddWithValue("@t", TextBox1.Text);
            cmd2.Parameters.AddWithValue("@c", TextBox2.Text);
            cmd2.Parameters.AddWithValue("@id", id);

            cmd2.ExecuteNonQuery();
            SqlCommand cmd3 = new SqlCommand("delete  from Reset where id='" + id + "'", con);
            cmd3.ExecuteNonQuery();

            Response.Write(Request.QueryString["a"]);
            Response.Redirect("login.aspx");
        }
    }
}