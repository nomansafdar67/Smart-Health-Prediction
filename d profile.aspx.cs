using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using WebApplication2.Code;
namespace WebApplication2
{

    public partial class WebForm8 : System.Web.UI.Page
    {
        public int Userid;
        public string UserName;
        public List<BO_Conversation> Conversations = new List<BO_Conversation>();

        protected void Page_Load(object sender, EventArgs e)
        {
            //name.Text = Session["name"].ToString();
            //p_id.Text = Session["id"].ToString();

            //age.Text = Session["age"].ToString();
            //Label4.Text = Session["specialist"].ToString();
            //gender.Text = Session["gender"].ToString();
            //address.Text = Session["address"].ToString();
            //city.Text = Session["hname"].ToString();
            //number.Text = Session["phone"].ToString();
            //email.Text = Session["email"].ToString();
            //string img= Session["img"].ToString();
            //string a = Session["id"].ToString();
            string cs = ConfigurationManager.ConnectionStrings["SHP"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            //Response.Write(a);
            string next = Request.QueryString["did"];
            GetContacts(next);
            Response.Write(next);
            SqlCommand cmd = new SqlCommand("select * from tbl_docsignup where did='" + next + "'", con);
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Read();
            int a = ((Int32)(reader["did"]));
            Userid = a;
            Session["did"] = a;
            string b = reader["name"].ToString();
            UserName = b;
            Session["name"] = b;
            string c = reader["specialist"].ToString();
            Session["specialist"] = c;
            string d = reader["email"].ToString();
            Session["email"] = d;
            string f = reader["password"].ToString();
            Session["password"] = f;
            string g = reader["cnfirmpass"].ToString();
            Session["cnfirmpass"] = g;
            string h = reader["address"].ToString();
            Session["address"] = h;
            string i = reader["age"].ToString();
            Session["age"] = i;
            string j = reader["phone"].ToString();
            Session["phone"] = j;
            string k = reader["gender"].ToString();
            Session["gender"] = k;
            string l = reader["hname"].ToString();
            Session["hname"] = l;
            string img = reader["img"].ToString();
            Session["img"] = img;
            imggg.Src = "images/" + img;
            name.Text = Session["name"].ToString();
            p_id.Text = Session["did"].ToString();

            age.Text = Session["age"].ToString();
            Label4.Text = Session["specialist"].ToString();
            gender.Text = Session["gender"].ToString();
            address.Text = Session["address"].ToString();
            city.Text = Session["hname"].ToString();
            number.Text = Session["phone"].ToString();
            email.Text = Session["email"].ToString();
            //string img= Session["img"].ToString();
            //string a = Session["id"].ToString();
            con.Close();

        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            string a = Session["did"].ToString();
            string imgnames = FileUpload2.FileName;
            FileUpload2.PostedFile.SaveAs(Server.MapPath("~/images/") + imgnames);

            string cs = ConfigurationManager.ConnectionStrings["SHP"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();

            SqlCommand cmd = new SqlCommand("Update tbl_docsignup Set img=@m Where did='" + a + "'", con);
            cmd.Parameters.AddWithValue("@m", imgnames);
            cmd.ExecuteNonQuery();
            Response.Redirect("d profile.aspx");
            con.Close();
        }
        private string getUserName(string doctorid)
        {
            string cs = ConfigurationManager.ConnectionStrings["SHP"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();

            SqlCommand cmd = new SqlCommand("SELECT fname FROM tbl_signup WHERE id=@id", con);
            cmd.Parameters.AddWithValue("@id", doctorid);
            return (string)cmd.ExecuteScalar();
        }
        private void GetContacts(string doctorid)
        {
            string cs = ConfigurationManager.ConnectionStrings["SHP"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();

            SqlCommand cmd = new SqlCommand("SELECT * FROM ContactList WHERE Did=@did", con);
            cmd.Parameters.AddWithValue("@did", doctorid);
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
                    conversation.NextUserName = getUserName(conversation.PatientID);
                    Conversations.Add(conversation);
                }
            }
            else
                Conversations = null;
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
        
            string pid=Session["id"].ToString();
            string did = Request.QueryString["did"];
            string cs = ConfigurationManager.ConnectionStrings["SHP"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into ContactList values(@sid,@pid)", con);
            cmd.Parameters.AddWithValue("@sid", did);
            cmd.Parameters.AddWithValue("@pid", pid);
            cmd.ExecuteNonQuery();
            Response.Write("DOne");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string a = Session["name"].ToString();
            string cs = ConfigurationManager.ConnectionStrings["SHP"].ConnectionString;
            SqlConnection con = new SqlConnection(cs);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM tbl_appointment where [Doctor Name]='" + a + "' ", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}