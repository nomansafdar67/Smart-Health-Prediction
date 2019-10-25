using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Net;
using System.Text.RegularExpressions;

namespace WebApplication2
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
         
        }

        protected void signup_Click(object sender, EventArgs e)
        {

            Regex reg1 = new Regex(@"^[a-zA-Z''-'\s]{3,40}$");
            string fn = (reg1.IsMatch(firstn.Text)).ToString();
            Regex reg2 = new Regex(@"^[a-zA-Z''-'\s]{10,40}$");
            string add = (reg2.IsMatch(address.Text)).ToString();
            
            string ln = (reg1.IsMatch(lastn.Text)).ToString();
            Regex reg4 = new Regex(@"^(?("")("".+?""@)|(([0-9a-zA-Z]((\.(?!\.))|[-!#\$%&'\*\+/=\?\^`\{\}\|~\w])*)(?<=[0-9a-zA-Z])@))(?(\[)(\[(\d{1,3}\.){3}\d{1,3}\])|(([0-9a-zA-Z][-\w]*[0-9a-zA-Z]\.)+[a-zA-Z]{2,6}))$");
            string em = (reg4.IsMatch(email.Text)).ToString();
            Regex reg3 = new Regex(@"(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$");
            string ps = (reg3.IsMatch(pass.Text)).ToString();
            if (fn == "False" || ln == "False" || em == "False" || ps == "False" || add == "False" )
            {

                if (fn == "False")
                {
                    Label1.Text = "*field required // interger not allowed";
                }
                if (ln == "False")
                {
                    Label2.Text = "*field required // interger not allowed";
                }
                if (em == "False")
                {
                    Label3.Text = "*field required // invalid formate";
                }
                if (ps == "False")
                {
                    Label4.Text = "*Password should contain alphabets and numbers ";
                }
                if (add == "False")
                {
                    Label7.Text = "*feild required // invalid formate";
                }
               
            }
            else
            {
                Label1.Text = "";
                Label2.Text = "";
                Label3.Text = "";
                Label4.Text = "";
                Label7.Text = "";
                
                string b = "default-image_360.png";
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["SHP"].ConnectionString);
                con.Open();
                string insert = "insert into tbl_signup output inserted.id Values(@fname ,@lname, @email, @password, @cpassword,@img, @address, @age, @phone#, @gender, @isA )";
                SqlCommand cmd = new SqlCommand(insert, con);
                cmd.Parameters.AddWithValue("@fname", firstn.Text);
                cmd.Parameters.AddWithValue("@lname", lastn.Text);
                cmd.Parameters.AddWithValue("@email", email.Text);
                cmd.Parameters.AddWithValue("@password", pass.Text);
                cmd.Parameters.AddWithValue("@cpassword", conformpass.Text);
                cmd.Parameters.AddWithValue("@age", age.Text);
                cmd.Parameters.AddWithValue("@img", b);
                cmd.Parameters.AddWithValue("@gender", gender.Text);
                cmd.Parameters.AddWithValue("@address", address.Text);
                cmd.Parameters.AddWithValue("@phone#", phone.Text);
                cmd.Parameters.AddWithValue("@isA", false);
                int id = (int)cmd.ExecuteScalar();
                
                Session["email"] = email.Text;

                string code = Guid.NewGuid().ToString();
                SqlCommand cmmmd = new SqlCommand("Insert into tbl_confirm values(@isA,@id)", con);

                cmmmd.Parameters.AddWithValue("@isA", code);
                cmmmd.Parameters.AddWithValue("@id", id);

                cmmmd.ExecuteNonQuery();

                var smtp = new SmtpClient();
                MailMessage mail = new MailMessage("kitcheninofficial@gmail.com", email.Text);

                mail.Subject = "Verification Code";
                // mail.Body = CreateConfirmationEmailMessage();
                mail.Body = "<a href='" + Request.Url.AbsoluteUri.Replace("Signup.aspx", "login.aspx?code=") + code + "'>Activate Your Account</a>";
                mail.IsBodyHtml = true;
                SmtpClient smtpHost = new SmtpClient("smtp.gmail.com", 587);
                smtpHost.Credentials = new NetworkCredential("kitcheninofficial@gmail.com", "ApnanewwebsitE");
                smtpHost.EnableSsl = true;
                smtpHost.Send(mail);
                Response.Redirect("EmailVarification.aspx");

            }


        }


        protected void mail_TextChanged(object sender, EventArgs e)
        {

        }
    }
}