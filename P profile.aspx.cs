using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using WebApplication2.Code;
namespace WebApplication2
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        public int Userid;
        public string UserName;
        public List<BO_Conversation> Conversations = new List<BO_Conversation>();
        protected void Page_Load(object sender, EventArgs e)
        {
            BO_User user = (BO_User)Session["User"];
            Userid = user.id;
            string ab = Request.QueryString["id"];
            int doctorid = Convert.ToInt32(ab);
            Response.Write(Userid);
            Response.Write("Next" + ab);
            UserName = Session["fname"].ToString();
            GetContacts(Userid);          
            name.Text = Session["fname"].ToString();
            p_id.Text = Session["id"].ToString();
            age.Text = Session["age"].ToString();
            gender.Text = Session["gender"].ToString();
            address.Text = Session["address"].ToString();
            number.Text = Session["phone#"].ToString();
            email.Text = Session["email"].ToString();
            string a = Session["id"].ToString();
            string cs = ConfigurationManager.ConnectionStrings["SHP"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();

            SqlCommand cmd = new SqlCommand("select img from tbl_signup where id='"+a+"'",con);
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();
            string b = reader["img"].ToString();
            reader.Close();

            imgg.Src ="images/"+ b;
            con.Close();
            
        }
        private string getUserName(string doctorid)
        {
            string cs = ConfigurationManager.ConnectionStrings["SHP"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();

            SqlCommand cmd = new SqlCommand("SELECT * FROM tbl_docsignup WHERE did=@did", con);
            cmd.Parameters.AddWithValue("@did", doctorid);
            return (string)cmd.ExecuteScalar();
        }
        private void GetContacts(int userid)
        {
            string cs = ConfigurationManager.ConnectionStrings["SHP"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();

            SqlCommand cmd = new SqlCommand("SELECT * FROM ContactList WHERE Pid=@pid", con);
            cmd.Parameters.AddWithValue("@pid",userid);
            SqlDataReader reader1 = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(reader1);
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow row in dt.Rows)
                {
                    BO_Conversation conversation = new BO_Conversation();
                    conversation.id = row["Cid"].ToString();
                    conversation.DoctorID = row["Did"].ToString();
                    conversation.PatientID = row["Pid"].ToString();
                    conversation.NextUserName = getUserName(conversation.DoctorID);
                    Conversations.Add(conversation);
                }
            }
            else
                Conversations = null;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            
                string a = Session["id"].ToString();
                string imgname = FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/images/") + imgname);

                string cs = ConfigurationManager.ConnectionStrings["SHP"].ConnectionString;
                SqlConnection con = new SqlConnection(cs);
                con.Open();

                SqlCommand cmd = new SqlCommand("Update tbl_signup Set img=@m Where id='" + a + "'", con);
                cmd.Parameters.AddWithValue("@m", imgname);
                cmd.ExecuteNonQuery();
                Response.Redirect("P profile.aspx");
                con.Close();



            }
        

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["name"] = TextBox1.Text;
            Response.Redirect("Find Doc.aspx");
        }
    }
}