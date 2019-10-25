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
    public partial class WebForm17 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string cs = ConfigurationManager.ConnectionStrings["SHP"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();



            SqlCommand cmd = new SqlCommand("select * from tbl_docsignup where email=@user and password=@pass", con);


            cmd.Parameters.AddWithValue("@user", TextBox2.Text);
            cmd.Parameters.AddWithValue("@pass", TextBox1.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {


                DataRow row = dt.Rows[0];
                
                int a = ((Int32)(row["did"]));
                Session["did"] = a;
                string b = row["name"].ToString();
                Session["name"] = b;
                string c = row["specialist"].ToString();
                Session["specialist"] = c;
                string d = row["email"].ToString();
                Session["email"] = d;
                string f = row["password"].ToString();
                Session["password"] = f;
                string g = row["cnfirmpass"].ToString();
                Session["cnfirmpass"] = g;
                string h = row["address"].ToString();
                Session["address"] = h;
                string i = row["age"].ToString();
                Session["age"] = i;
                string j = row["phone"].ToString();
                Session["phone"] = j;
                string k = row["gender"].ToString();
                Session["gender"] = k;
                string l = row["hname"].ToString();
                Session["hname"] = l;
                string img = row["img"].ToString();
                Session["img"] = img;
                Label1.Text = "successfully Login";
                Response.Redirect("d profile.aspx?did="+a);
                
            }
            else
            {
                Response.Write("Invalid User or Password !!");
            }



        }
    }
}