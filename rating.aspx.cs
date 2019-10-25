using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Configuration;
using System.Text.RegularExpressions;

namespace WebApplication2
{
    public partial class WebForm19 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "Give Rating")
            {
                Label1.Text = "*select any value";
            }
            else
            {




                string cs = ConfigurationManager.ConnectionStrings["SHP"].ConnectionString;
                SqlConnection conn = new SqlConnection(cs);
                string a = Session["id"].ToString();
                conn.Open();



                SqlCommand cmd5 = new SqlCommand();
                cmd5.Connection = conn;
                cmd5.CommandText = "select * from Feedback where id='" + a + "'"; ;



                cmd5.ExecuteNonQuery();
                SqlDataAdapter da = new SqlDataAdapter(cmd5);

                DataTable dt2 = new DataTable();
                da.Fill(dt2);
                if (dt2.Rows.Count > 0)
                {
                    SqlCommand cmd4 = new SqlCommand();
                    cmd4.Connection = conn;
                    cmd4.CommandText = "Update Feedback Set Feedback=@f   Where id= '" + a + "'"; ;

                    cmd4.Parameters.AddWithValue("@f", DropDownList1.SelectedValue);



                    cmd4.ExecuteNonQuery();
                    Response.Redirect("rating.aspx");
                }
                else
                {
                    SqlCommand cmd3 = new SqlCommand();
                    cmd3.Connection = conn;
                    cmd3.CommandText = "insert into Feedback values(@f,@id)";

                    cmd3.Parameters.AddWithValue("@f", DropDownList1.SelectedValue);
                    cmd3.Parameters.AddWithValue("@id", a);


                    cmd3.ExecuteNonQuery();
                    Response.Redirect("rating.aspx");
                }

            }
        }
    }
}