using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class placement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["user"] = Request.QueryString["id"];
        LabelName.Text = "Welcome " + Session["user"].ToString();

        for (int i = 50; i <= 100; i++)
        {
            ddl10per.Items.Add(new ListItem(i.ToString(), i.ToString()));
            ddl12per.Items.Add(new ListItem(i.ToString(), i.ToString()));
        }
        for (int i = 40; i <= 100; i++)
        {
            ddlbtechper.Items.Add(new ListItem(i.ToString(), i.ToString()));
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string faculty = Request.QueryString["id"]; 
        string data = ddlyear.SelectedItem.Text;
        Response.Redirect("placement_volunteer.aspx?faculty=" + faculty + "&data=" + data);
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string faculty = Request.QueryString["id"]; 
        string data = TextBoxStType.Text;
        Response.Redirect("placement_student_info.aspx?faculty=" + faculty + "&data=" + data);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string faculty = Request.QueryString["id"];
        double data = double.Parse(ddl10per.SelectedItem.ToString());
        double data2 = double.Parse(ddl12per.SelectedItem.ToString());
        double data3 = double.Parse(ddlbtechper.SelectedItem.ToString());
        double data4 = double.Parse(ddlback.SelectedItem.ToString());
        string data5 = DropDownListYear.SelectedItem.Text;
        
        Response.Redirect("placement_student.aspx?faculty="+ faculty + "&data=" + data + "&data2=" + data2 + "&data3=" + data3 + "&data4=" + data4 + "&data5=" + data5);

    }
}