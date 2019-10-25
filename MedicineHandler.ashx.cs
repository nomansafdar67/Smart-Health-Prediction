using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Script.Serialization;

namespace WebApplication2
{
    /// <summary>
    /// Summary description for MedicineHandler
    /// </summary>
    public class MedicineHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            string term = context.Request["term"] ?? "";
            List<string> listmedname = new List<string>();
            string cs = ConfigurationManager.ConnectionStrings["SHP"].ConnectionString;
            using (SqlConnection con =new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("spmed", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter()
                {
                    ParameterName ="@term",
                    Value=term

                });
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    listmedname.Add(rdr["Name"].ToString());
                }
            }

            JavaScriptSerializer js = new JavaScriptSerializer();
            context.Response.Write(js.Serialize(listmedname));
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}