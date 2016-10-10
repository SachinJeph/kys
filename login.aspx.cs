using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public string GetConnectionString()
    {
        //sets the connection string from your web config file "ConnString" is the name of your Connection String
        return System.Configuration.ConfigurationManager.ConnectionStrings["kysdatabase"].ConnectionString;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string verifyname = TextEmail.Text;
        string verifypass = TextPassword.Text;
        SqlCommand com;
        string str;
        SqlConnection conn = new SqlConnection(GetConnectionString());
        conn.Open();
        str = "select * from login_detail where username='" + verifyname+ "' and password='"+verifypass+"'";
        com = new SqlCommand(str, conn);
        SqlDataReader reader = com.ExecuteReader();
        if (reader.Read())
        {
            string selectText = reader["type"].ToString();
            if(selectText=="student"){
                Response.Redirect("student.aspx?data=" + verifyname + "&data2=" + selectText);
                
            }
            else if (selectText == "faculty")
            {
                Response.Redirect("tutor.aspx?data=" + verifyname + "&data2=" + selectText);
            }
        }
        else
        {
            Response.Write("<script>alert('Username or password is wrong');</script>");
            ClearControls(Page);
        }
    }
    public static void ClearControls(Control Parent)
    {

        if (Parent is TextBox)
        {
            (Parent as TextBox).Text = string.Empty;
        }
        else
        {
            foreach (Control c in Parent.Controls)
                ClearControls(c);
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }
}