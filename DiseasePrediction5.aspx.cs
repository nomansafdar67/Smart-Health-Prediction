using System;
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
    public partial class WebForm14 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string a = Session["symptom_1"].ToString();
            string b = Session["symptom_2"].ToString();
            string c = Session["symptom_3"].ToString();
            string d = Session["symptom_4"].ToString();
            


                string cs = ConfigurationManager.ConnectionStrings["SHP"].ConnectionString;
                SqlConnection con = new SqlConnection(cs);
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT disease FROM tbl_disease where symptom1='" + a + "' AND symptom2='" +b + "' AND symptom3='" +c + "' AND symptom4='" +d + "' ", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                

                    Response.Write("Foundd !!");


            //GridView1.DataSource = dt;
            //GridView1.DataBind();
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();
           
            string tr = reader["disease"].ToString();
            Session["disease"] = tr;
            Label1.Text = tr;
            reader.Close();







        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            string f = Session["disease"].ToString();
            string cs = ConfigurationManager.ConnectionStrings["SHP"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT name , specialist FROM tbl_docsignup where specialist='" + f + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);


            Response.Write("Foundd !!");


            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}