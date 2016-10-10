using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    /*for uploading data to database*/
    public string GetConnectionString()
    {
        //sets the connection string from your web config file "ConnString" is the name of your Connection String
        return System.Configuration.ConfigurationManager.ConnectionStrings["kysdatabase"].ConnectionString;
    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        string slectedtext = DropDownList1.SelectedItem.Text;
        if (slectedtext == "Select Type")
        {
            Response.Write("<script>alert('Select Type!');</script>");
        }

        else
        {
            string verifyname = TextEmail.Text;
            SqlCommand com;
            string str;
            SqlConnection conn = new SqlConnection(GetConnectionString());
            conn.Open();
            str = "select * from login_detail where username='" + verifyname + "'";
            com = new SqlCommand(str, conn);
            SqlDataReader reader = com.ExecuteReader();
            if (reader.Read())
            {

                Response.Write("<script>alert('Username already registered if forget the password ask the tutor!');</script>");

            }
            else
            {

                SqlConnection con = new SqlConnection(GetConnectionString());

                string strQuery = "INSERT INTO login_detail (username,password,type) VALUES " + " (@username,@password,@type)";


                SqlCommand cmd = new SqlCommand(strQuery);
                cmd.Parameters.AddWithValue("@username", TextEmail.Text);
                cmd.Parameters.AddWithValue("@password", TextPassword.Text);
                cmd.Parameters.AddWithValue("@type", DropDownList1.SelectedItem.Text);
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                try
                {
                    con.Open();
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('Succesfully Registerd!');</script>");
                    Response.Redirect("login.aspx");
                    ClearControls(Page);
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
}