using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class redirect : System.Web.UI.Page
{
    public string GetConnectionString()
    {
        //sets the connection string from your web config file "ConnString" is the name of your Connection String
        return System.Configuration.ConfigurationManager.ConnectionStrings["kysdatabase"].ConnectionString;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        string email = Request.QueryString["email"];
        string domain = Request.QueryString["domain"];
        try { Session["email"] = email; }
        catch (Exception ex) { throw ex; }
        /* if (!IsPostBack)
            {
            Response.Write(domain);
        }*/


        if (domain == "poornima.org")
        {


            SqlCommand com;
            string str;
            SqlConnection conn = new SqlConnection(GetConnectionString());
            conn.Open();
            str = "select * from login_detail where username='" + email + "'";
            com = new SqlCommand(str, conn);
            SqlDataReader reader = com.ExecuteReader();
            if (reader.Read())
            {
                SqlConnection con = new SqlConnection(GetConnectionString());

                string typelogin = "student";
                Response.Redirect("student.aspx?data=" + email + "&data2=" + typelogin);

            }
            else
            {
                SqlConnection con = new SqlConnection(GetConnectionString());

                string password = "google_login";
                string typelogin = "student";
                string strQuery = "INSERT INTO login_detail (username,password,type) VALUES " + " (@username,@password,@type)";


                SqlCommand cmd = new SqlCommand(strQuery);
                cmd.Parameters.AddWithValue("@username", email);
                cmd.Parameters.AddWithValue("@password", password);
                cmd.Parameters.AddWithValue("@type", typelogin);
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Response.Redirect("student.aspx?data=" + email + "&data2=" + typelogin);
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
                finally
                {
                    con.Close();
                    con.Dispose();
                }

            }

        }



        if (domain != "poornima.org")
        {
            Response.Write("<script>alert('use only poornima.org mail id');window.location='login.aspx';</script>");
		}
    }

}