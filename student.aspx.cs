using System;
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
using System.Data.SqlClient;

public partial class student : System.Web.UI.Page
{
    protected void ButtonInfo_Click(object sender, EventArgs e)
    {   string studentname = Request.QueryString["data"];
        SqlCommand com;
        string str;
        SqlConnection conn = new SqlConnection(GetConnectionString());
        conn.Open();
        str = "select * from student_info_new where st_mail_college='" + studentname + "' ";
        com = new SqlCommand(str, conn);
        SqlDataReader reader = com.ExecuteReader();
        if (reader.Read())
        {
            Response.Redirect("student_update_info.aspx?data=" + studentname);
            reader.Close();
            conn.Close();
        }
        else
        {
            Response.Write("<script>alert('Username Not found');</script>");
            Response.Redirect("student_insert_info.aspx?data=" + studentname);
            ClearControls(Page);
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["user"] = Request.QueryString["data"];
        string studentname = Request.QueryString["data"];
        SqlCommand com;
        string str;
        SqlConnection conn = new SqlConnection(GetConnectionString());
        conn.Open();
        str = "select * from student_info_new where st_mail_college='" + studentname + "' ";
        com = new SqlCommand(str, conn);
        SqlDataReader reader = com.ExecuteReader();
        if (reader.Read())
        {
            TextBoxName.Text = reader["st_name"].ToString();
            TextBoxRegistration.Text = reader["st_regid"].ToString();
            TextBoxAttendance.Text = reader["st_attendance"].ToString();
            StudentImage.ImageUrl = reader["st_photo"].ToString();
            TextBoxSTPhone.Text = reader["st_mobile"].ToString();
            TextBoxSTMail.Text = reader["st_mail_other"].ToString();
            TextBoxDOB.Text = reader["st_dob"].ToString();
            TextBoxYear.Text = reader["st_college_year"].ToString();
            TextBoxSem.Text = reader["st_college_semester"].ToString();
            TextBoxST10.Text = reader["ac_sec_percentage"].ToString();
            TextBoxST12.Text = reader["ac_sr_sec_percentage"].ToString();
            TextBoxSTBtech.Text = reader["st_college_aggre"].ToString();
            TextBoxNoBack.Text = reader["st_college_back"].ToString();
            TextBoxCodeBack.Text = reader["st_college_back_sub"].ToString();
            TextBoxPOB.Text = reader["st_placeofbirth"].ToString();
            TextBoxReligion.Text = reader["st_relegion"].ToString();
            TextBoxCaste.Text = reader["st_caste"].ToString();
            TextBoxMinority.Text = reader["st_minority"].ToString();
            TextBoxCategory.Text = reader["st_category"].ToString();
            TextBoxBelongs.Text = reader["st_citizentype"].ToString();
            TextBoxHobbies.Text = reader["st_hobbies"].ToString();
            TextBoxTech.Text = reader["st_additionalcources"].ToString();
            TextBoxAddressLine.Text = reader["st_addr"].ToString();
            TextBoxAddressPolice.Text = reader["st_addr_ps"].ToString();
            TextBoxDistt.Text = reader["st_addr_distt"].ToString();
            TextBoxPinCode.Text = reader["st_addr_pincode"].ToString();
            TextBoxState.Text = reader["st_addr_state"].ToString();
            TextBoxFName.Text = reader["father_name"].ToString();
            TextBoxFNumber.Text = reader["father_phone"].ToString();
            TextBoxFSTDO.Text = reader["father_std_office"].ToString();
            TextBoxFSTDH.Text = reader["father_std_home"].ToString();
            TextBoxFMail.Text = reader["father_mail"].ToString();
            TextBoxFQuali.Text = reader["father_qualification"].ToString();
            TextBoxFOccu.Text = reader["father_occupation"].ToString();
            TextBoxFCpy.Text = reader["father_department"].ToString();
            TextBoxFDesg.Text = reader["father_desgination"].ToString();
            TextBoxFIncom.Text = reader["father_income"].ToString();
            TextBoxMName.Text = reader["mother_name"].ToString();
            TextBoxMNumber.Text = reader["mother_phone"].ToString();
            TextBoxMSTDO.Text = reader["mother_std_office"].ToString();
            TextBoxMSTDH.Text = reader["mother_std_home"].ToString();
            TextBoxMMail.Text = reader["mother_mail"].ToString();
            TextBoxMQuali.Text = reader["mother_qualification"].ToString();
            TextBoxMOccu.Text = reader["mother_occupation"].ToString();
            TextBoxMCpy.Text = reader["mother_department"].ToString();
            TextBoxMDesg.Text = reader["mother_desgination"].ToString();
            TextBoxMIncom.Text = reader["mother_income"].ToString();
            TextBoxLGName.Text = reader["gaurdian_name"].ToString();
            TextBoxLGRelation.Text = reader["gaurdian_rel"].ToString();
            TextBoxLGNumber.Text = reader["gaurdian_phone"].ToString();
            TextBoxLGSTDO.Text = reader["gaurdian_std_office"].ToString();
            TextBoxLGSTDH.Text = reader["gaurdian_std_home"].ToString();
            TextBoxLGMail.Text = reader["gaurdian_mail"].ToString();
            TextBoxLGOccu.Text = reader["gaurdian_occupation"].ToString();
            TextBoxLGCpy.Text = reader["gaurdian_department"].ToString();
            TextBoxLGDesg.Text = reader["gaurdian_desgination"].ToString();
            TextBoxSecBoard.Text = reader["ac_sec_board"].ToString();
            TextBoxSecMedium.Text = reader["ac_sec_medium"].ToString();
            TextBoxSecYOP.Text = reader["ac_sec_yop"].ToString();
            TextBoxSecSchool.Text = reader["ac_sec_school"].ToString();
            TextBoxSecCity.Text = reader["ac_sec_city"].ToString();
            TextBoxSecTotalMarks.Text = reader["ac_sec_max_marks"].ToString();
            TextBoxSecObtMarks.Text = reader["ac_sec_marks_obt"].ToString();
            TextBoxSecPerc.Text = reader["ac_sec_percentage"].ToString();
            TextBoxSrSecBoard.Text = reader["ac_sr_sec_board"].ToString();
            TextBoxSrSecMedium.Text = reader["ac_sr_sec_medium"].ToString();
            TextBoxSrSecYOP.Text = reader["ac_sr_sec_yop"].ToString();
            TextBoxSrSecSchool.Text = reader["ac_sr_sec_school"].ToString();
            TextBoxSrSecCity.Text = reader["ac_sr_sec_city"].ToString();
            TextBoxSrSecTotalMarks.Text = reader["ac_sr_sec_max_marks"].ToString();
            TextBoxSrSecObtMarks.Text = reader["ac_sr_sec_marks_obt"].ToString();
            TextBoxSrSecPerc.Text = reader["ac_sr_sec_percentage"].ToString();
            TextBoxResidentType.Text = reader["st_livingtype"].ToString();
            TextBoxResident.Text = reader["st_localaddress"].ToString();
            TextBoxCollegeTransport.Text = reader["st_transport"].ToString();
            TextBoxIBloodGroup.Text = reader["st_bloodgroup"].ToString();
            TextBoxIllness.Text = reader["st_illness"].ToString();
            TextBoxHostel.Text = reader["st_hostel"].ToString();
            TextBoxJEERoll.Text = reader["st_jee_roll"].ToString();
            TextBoxJEEMarks.Text = reader["st_jee_marks"].ToString();
            TextBoxPhyMaxMarks.Text = reader["elig_phy_max_marks"].ToString();
            TextBoxPhyObtMarks.Text = reader["elig_phy_marks_obtained"].ToString();
            TextBoxMathMaxMarks.Text = reader["elig_math_max_marks"].ToString();
            TextBoxMathObtMarks.Text = reader["elig_math_marks_obtained"].ToString();
            TextBoxThirdSubMaxMarks.Text = reader["elig_third_max_marks"].ToString();
            TextBoxThirdSubObtMarks.Text = reader["elig_third_marks_obtained"].ToString();
            
            reader.Close();
            conn.Close();
        }
        else
        {
            Response.Write("<script>alert('Username Not registered information or the user has not updated his/her details');</script>");
            ClearControls(Page);
        }
    }
    public string GetConnectionString()
    {
        //sets the connection string from your web config file "ConnString" is the name of your Connection String
        return System.Configuration.ConfigurationManager.ConnectionStrings["kysdatabase"].ConnectionString;
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