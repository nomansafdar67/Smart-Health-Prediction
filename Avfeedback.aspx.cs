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
    public partial class Avfeedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["SHP"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM tbl_feedback", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();

            SqlCommand cmd1 = new SqlCommand();
            cmd1.Connection = con;
            cmd1.CommandText = "Select Feedback from Feedback";

            cmd1.ExecuteNonQuery();

            SqlDataReader reader1 = cmd1.ExecuteReader();
            DataTable dt1 = new DataTable();
            dt1.Load(reader1);
            int sum = 0;
            if (dt1.Rows.Count > 0)
            {

                foreach (DataRow row in dt1.Rows)
                {

                    int Rid = (int)row["Feedback"];
                    sum = sum + Rid;

                }

            }
            else
            {

            }
            SqlCommand cmd2 = new SqlCommand();
            cmd2.Connection = con;
            cmd2.CommandText = "Select count(*) from Feedback";
            int count = (int)cmd2.ExecuteScalar();



            double av = 0.0;
            av = sum / count;
           
            Label1.Text = av.ToString();
        }
    }
}