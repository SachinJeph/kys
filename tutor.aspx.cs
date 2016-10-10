using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class tutor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["user"] = Request.QueryString["data"];
        LabelName.Text = "Welcome "+Request.QueryString["data"];
    }
    protected void BtnAttendance(object sender, EventArgs e)
    {
        string data = Request.QueryString["data"];
        Response.Redirect("tutor_class_attendance.aspx?data=" + data);
    }
    protected void BtnDetails(object sender, EventArgs e)
    {
        string data = Request.QueryString["data"];
        Response.Redirect("tutor_class_details.aspx?data=" + data);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string data = Request.QueryString["data"];
        string sid = TextBoxStName.Text;
        Response.Redirect("tutor_student.aspx?data=" + data + "&sid=" + sid);
    }
    protected void BtnClassMarks_Click(object sender, EventArgs e)
    {
        Response.Write("Page Under Construction");
    }
}