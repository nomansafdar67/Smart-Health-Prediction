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
    public partial class WebForm2 : System.Web.UI.Page
    {
        
       
        protected void Page_Load(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["SHP"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            
            SqlCommand cmd = new SqlCommand("Select id from tbl_confirm where code='" + Request.QueryString["code"] + "'", con);

            int id = Convert.ToInt32(cmd.ExecuteScalar());

            SqlCommand cmd2 = new SqlCommand("update tbl_signup set isactive=@t where id=@id", con);
            cmd2.Parameters.AddWithValue("@t", true);
            cmd2.Parameters.AddWithValue("@id", id);

            cmd2.ExecuteNonQuery();
            SqlCommand cmd3 = new SqlCommand("delete  from tbl_confirm where id='" + id + "'", con);
            cmd3.ExecuteNonQuery();

        }

       
           
            
              
      
        
        protected void Button1_Click1(object sender, EventArgs e)
        
            {
          //  SqlCommand cmd = new SqlCommand();
            SqlDataAdapter ada = new SqlDataAdapter();
            DataSet ds = new DataSet();

            string cs = ConfigurationManager.ConnectionStrings["SHP"].ConnectionString;
                SqlConnection con = new SqlConnection(cs);
                con.Open();



            SqlCommand cmd = new SqlCommand("select * from tbl_signup where email=@user and password=@pass", con);


            cmd.Parameters.AddWithValue("@user", TextBox2.Text);
            cmd.Parameters.AddWithValue("@pass", TextBox1.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();

            da.Fill(dt);

            if (dt.Rows.Count > 0)
            {



                SqlDataReader reader = cmd.ExecuteReader();
                reader.Read();
                int a = ((Int32)(reader["id"]));
                Session["id"] = a;
                string b = reader["fname"].ToString();
                Session["fname"] = b;
                string c = reader["lname"].ToString();
                Session["lname"] = c;
                string d = reader["email"].ToString();
                Session["email"] = d;
                string f = reader["password"].ToString();
                Session["password"] = f;
                string g = reader["cpassword"].ToString();
                Session["cpassword"] = g;
                string h = reader["address"].ToString();
                Session["address"] = h;
                string i = reader["age"].ToString();
                Session["age"] = i;
                string j = reader["phone#"].ToString();
                Session["phone#"] = j;
                string k = reader["gender"].ToString();
                Session["gender"] = k;
                Label1.Text = "successfully Login";
                string dd = reader["isactive"].ToString();
                if (dd == "False")
                {
                   Response.Write( "Your Account is not activated");
                    reader.Close();
                }
                else
                {
                    BO_User user = new BO_User();
                    user.id = (int)reader["id"];
                    user.fname = reader["fname"].ToString();
                    user.lname = reader["lname"].ToString();
                    user.pass = reader["password"].ToString();
                    user.email = reader["email"].ToString();
                    user.image = reader["img"].ToString();
                    user.address = reader["address"].ToString();
                    user.age = reader["age"].ToString();
                    user.fone = reader["phone#"].ToString();
                    user.isAct = (bool)reader["isactive"];
                    user.gender = reader["gender"].ToString();
                    Session["User"] = user;
                    reader.Close();
                    Response.Redirect("P profile.aspx?id=" + user.id);
                }
                
            }
            else
            {
                Label1.Text = "Invalid username or password";
            }




            
        }

        protected void forget_ServerClick(object sender, EventArgs e)
        {


           

            string cs = ConfigurationManager.ConnectionStrings["SHP"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand("select id from tbl_signup where email ='" + TextBox2.Text + "'", con);
                int id = Convert.ToInt32(cmd.ExecuteScalar());
                string code = Guid.NewGuid().ToString();

                SqlCommand cmmmd = new SqlCommand("Insert into reset values(@code,@id)", con);

                cmmmd.Parameters.AddWithValue("@code", code);
                cmmmd.Parameters.AddWithValue("@id", id);
                cmmmd.ExecuteNonQuery();
                MailMessage mail = new MailMessage("kitcheninofficial@gmail.com", TextBox2.Text);
                mail.Subject = "Verification Code";
                // mail.Body = CreateConfirmationEmailMessage();
                mail.Body = "<a href='" + Request.Url.AbsoluteUri.Replace("login.aspx", "resetpass.aspx?code=") + code + "'>Reset Password</a>";
                mail.IsBodyHtml = true;
                SmtpClient smtpHost = new SmtpClient("smtp.gmail.com", 25);
                smtpHost.Credentials = new NetworkCredential("kitcheninofficial@gmail.com", "ApnanewwebsitE");
                smtpHost.EnableSsl = true;
                smtpHost.Send(mail);
                Session["Email"] = TextBox2.Text;
            Response.Write("done");

            Response.Redirect("EmailVarification.aspx");

        }
    }
    
}