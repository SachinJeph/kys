using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data;
using System.Data.SqlClient;
using System.IO; 


public partial class tutor_student : System.Web.UI.Page
{
    public string GetConnectionString()
    {
        //sets the connection string from your web config file "ConnString" is the name of your Connection String
        return System.Configuration.ConfigurationManager.ConnectionStrings["kysdatabase"].ConnectionString;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["user"] = Request.QueryString["data"];
        LabelName.Text = "Welcome " + Request.QueryString["data"];
        string data = Request.QueryString["sid"];
        
        SqlCommand com;
        string str;
        SqlConnection conn = new SqlConnection(GetConnectionString());
        conn.Open();
        str = "select * from student_info_new where st_name='" + data + "' or st_regid='" + data + "' ";
        com = new SqlCommand(str, conn);
        SqlDataReader reader = com.ExecuteReader();
        if (reader.Read())
        {
            TextBoxName.Text = reader["st_name"].ToString();
            TextBoxRegistration.Text = reader["st_regid"].ToString();
            StudentImage.ImageUrl = reader["st_photo"].ToString();
            TextBoxSTPhone.Text = reader["st_mobile"].ToString();
            TextBoxSTMail.Text = reader["st_mail_other"].ToString();
            TextBoxDOB.Text = reader["st_dob"].ToString();
            TextBoxYear.Text = reader["st_college_year"].ToString();
            TextBoxSem.Text = reader["st_college_semester"].ToString();
            TextBoxSecPerc.Text = reader["ac_sec_percentage"].ToString();
            TextBoxSrSecPerc.Text = reader["ac_sr_sec_percentage"].ToString();
            TextBoxBtechAgree.Text = reader["st_college_aggre"].ToString();
            TextBoxTotalBack.Text = reader["st_college_back"].ToString();
            TextBoxBackSubject.Text = reader["st_college_back_sub"].ToString();
            TextBoxPOB.Text = reader["st_placeofbirth"].ToString();
            TextBoxReligion.Text = reader["st_relegion"].ToString();
            TextBoxCaste.Text = reader["st_caste"].ToString();
            TextBoxMinority.Text = reader["st_minority"].ToString();
            TextBoxCat.Text = reader["st_category"].ToString();
            TextBoxCitizen.Text = reader["st_citizentype"].ToString();
            TextBoxHobbies.Text = reader["st_hobbies"].ToString();
            TextBoxAdditional.Text = reader["st_additionalcources"].ToString();
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
            TextBoxFJob.Text = reader["father_occupation"].ToString();
            TextBoxFCpy.Text = reader["father_department"].ToString();
            TextBoxFDesg.Text = reader["father_desgination"].ToString();
            TextBoxFIncom.Text = reader["father_income"].ToString();
            TextBoxMName.Text = reader["mother_name"].ToString();
            TextBoxMNumber.Text = reader["mother_phone"].ToString();
            TextBoxMSTDO.Text = reader["mother_std_office"].ToString();
            TextBoxMSTDH.Text = reader["mother_std_home"].ToString();
            TextBoxMMail.Text = reader["mother_mail"].ToString();
            TextBoxMQuali.Text = reader["mother_qualification"].ToString();
            TextBoxMJob.Text = reader["mother_occupation"].ToString();
            TextBoxMCpy.Text = reader["mother_department"].ToString();
            TextBoxMDesg.Text = reader["mother_desgination"].ToString();
            TextBoxMIncom.Text = reader["mother_income"].ToString();
            TextBoxLGName.Text = reader["gaurdian_name"].ToString();
            TextBoxLGRelation.Text = reader["gaurdian_rel"].ToString();
            TextBoxLGNumber.Text = reader["gaurdian_phone"].ToString();
            TextBoxLGSTDO.Text = reader["gaurdian_std_office"].ToString();
            TextBoxLGSTDH.Text = reader["gaurdian_std_home"].ToString();
            TextBoxLGMail.Text = reader["gaurdian_mail"].ToString();
            TextBoxLGJob.Text = reader["gaurdian_occupation"].ToString();
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
            TextBoxResident.Text = reader["st_localaddress"].ToString();
            TextBoxIllness.Text = reader["st_illness"].ToString();
            TextBoxLiving.Text = reader["st_livingtype"].ToString();
            TextBoxTransport.Text = reader["st_transport"].ToString();
            TextBoxBlood.Text = reader["st_bloodgroup"].ToString();
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
            Response.Write("<script>alert('Username Not found');</script>");
            ClearControls(Page);
        }
        //Date Query
       
    }
           
    protected void Button1_Click(object sender, EventArgs e)
    {
        string studentname = Request.QueryString["data"];
        
        //Add Entry to DataBase
        SqlConnection con = new SqlConnection(GetConnectionString());

        string strQuery = "UPDATE student_info_new SET st_name = @st_name, st_regid = @st_regid, st_branch = @st_branch, st_college = @st_college, st_mail_other = @st_mail_other, st_mobile = @st_mobile, st_addr = @st_addr, st_addr_ps = @st_addr_ps, st_addr_distt = @st_addr_distt, st_addr_pincode = @st_addr_pincode, st_jee_roll = @st_jee_roll, st_jee_marks = @st_jee_marks, st_dob = @st_dob, st_placeofbirth = @st_placeofbirth, st_relegion = @st_relegion, st_caste = @st_caste, st_minority = @st_minority, st_category = @st_category, st_citizentype = @st_citizentype, st_bloodgroup = @st_bloodgroup, st_hobbies = @st_hobbies, st_additionalcources = @st_additionalcources, st_illness = @st_illness, st_livingtype = @st_livingtype, st_hostel = @st_hostel, st_transport = @st_transport, st_localaddress = @st_localaddress, father_name = @father_name, father_qualification = @father_qualification, father_occupation = @father_occupation, father_department = @father_department, father_desgination = @father_desgination, father_income = @father_income, father_std_home = @father_std_home, father_std_office = @father_std_office, father_mail = @father_mail, father_phone = @father_phone, mother_name = @mother_name, mother_qualification = @mother_qualification, mother_occupation = @mother_occupation, mother_department = @mother_department, mother_desgination = @mother_desgination, mother_income = @mother_income, mother_std_home = @mother_std_home, mother_std_office = @mother_std_office, mother_mail = @mother_mail, mother_phone = @mother_phone, gaurdian_name = @gaurdian_name, gaurdian_rel = @gaurdian_rel, gaurdian_occupation = @gaurdian_occupation, gaurdian_department = @gaurdian_department, gaurdian_desgination = @gaurdian_desgination, gaurdian_std_home = @gaurdian_std_home, gaurdian_std_office = @gaurdian_std_office, gaurdian_mail = @gaurdian_mail, gaurdian_phone = @gaurdian_phone, ac_sec_school = @ac_sec_school, ac_sec_city = @ac_sec_city, ac_sec_medium = @ac_sec_medium, ac_sec_board = @ac_sec_board, ac_sec_yop = @ac_sec_yop, ac_sec_max_marks = @ac_sec_max_marks, ac_sec_marks_obt = @ac_sec_marks_obt, ac_sec_percentage = @ac_sec_percentage, ac_sr_sec_school = @ac_sr_sec_school, ac_sr_sec_city = @ac_sr_sec_city, ac_sr_sec_medium = @ac_sr_sec_medium, ac_sr_sec_board = @ac_sr_sec_board, ac_sr_sec_yop = @ac_sr_sec_yop, ac_sr_sec_max_marks = @ac_sr_sec_max_marks, ac_sr_sec_marks_obt = @ac_sr_sec_marks_obt, ac_sr_sec_percentage = @ac_sr_sec_percentage, ac_dipl_school = @ac_dipl_school, ac_dipl_city = @ac_dipl_city, ac_dipl_medium = @ac_dipl_medium, ac_dipl_board = @ac_dipl_board, ac_dipl_yop = @ac_dipl_yop, ac_dipl_max_marks = @ac_dipl_max_marks, ac_dipl_marks_obt = @ac_dipl_marks_obt, ac_dipl_percentage = @ac_dipl_percentage, st_college_year = @st_college_year, st_college_semester = @st_college_semester, st_college_aggre = @st_college_aggre, st_college_back = @st_college_back, st_college_back_sub = @st_college_back_sub, elig_phy_max_marks = @elig_phy_max_marks, elig_phy_marks_obtained = @elig_phy_marks_obtained, elig_math_max_marks = @elig_math_max_marks, elig_math_marks_obtained = @elig_math_marks_obtained, elig_third_max_marks = @elig_third_max_marks, elig_third_marks_obtained = @elig_third_marks_obtained, elig_board = @elig_board WHERE  st_mail_college = @st_mail_college";


        SqlCommand cmd = new SqlCommand(strQuery);
        cmd.Parameters.AddWithValue("@st_mail_college", studentname);
        cmd.Parameters.AddWithValue("@st_name", TextBoxName.Text);
        cmd.Parameters.AddWithValue("@st_regid", TextBoxRegistration.Text);
        cmd.Parameters.AddWithValue("@st_branch", TextBoxBranch.Text);
        cmd.Parameters.AddWithValue("@st_college", TextBoxCollege.Text);
        cmd.Parameters.AddWithValue("@st_mail_other", TextBoxSTMail.Text);
        cmd.Parameters.AddWithValue("@st_mobile", TextBoxSTPhone.Text);
        cmd.Parameters.AddWithValue("@st_addr", TextBoxAddressLine.Text);
        cmd.Parameters.AddWithValue("@st_addr_ps", TextBoxAddressPolice.Text);
        cmd.Parameters.AddWithValue("@st_addr_distt", TextBoxDistt.Text);
        cmd.Parameters.AddWithValue("@st_addr_pincode", TextBoxPinCode.Text);
        cmd.Parameters.AddWithValue("@st_jee_roll", TextBoxJEERoll.Text);
        cmd.Parameters.AddWithValue("@st_jee_marks", TextBoxJEEMarks.Text);
        cmd.Parameters.AddWithValue("@st_dob", TextBoxDOB.Text);
        cmd.Parameters.AddWithValue("@st_placeofbirth", TextBoxPOB.Text);
        cmd.Parameters.AddWithValue("@st_relegion", TextBoxReligion.Text);
        cmd.Parameters.AddWithValue("@st_caste", TextBoxCaste.Text);
        cmd.Parameters.AddWithValue("@st_minority", TextBoxMinority.Text);
        cmd.Parameters.AddWithValue("@st_category", TextBoxCat.Text);
        cmd.Parameters.AddWithValue("@st_citizentype", TextBoxCitizen.Text);
        cmd.Parameters.AddWithValue("@st_bloodgroup", TextBoxBlood.Text);
        cmd.Parameters.AddWithValue("@st_hobbies", TextBoxHobbies.Text);
        cmd.Parameters.AddWithValue("@st_additionalcources", TextBoxAdditional.Text);
        cmd.Parameters.AddWithValue("@st_illness", TextBoxIllness.Text);
        cmd.Parameters.AddWithValue("@st_livingtype", TextBoxLiving.Text);
        cmd.Parameters.AddWithValue("@st_hostel", TextBoxHostel.Text);
        cmd.Parameters.AddWithValue("@st_transport", TextBoxTransport.Text);
        cmd.Parameters.AddWithValue("@st_localaddress", TextBoxResident.Text);

        cmd.Parameters.AddWithValue("@father_name", TextBoxFName.Text);
        cmd.Parameters.AddWithValue("@father_qualification", TextBoxFQuali.Text);
        cmd.Parameters.AddWithValue("@father_occupation", TextBoxFJob.Text);
        cmd.Parameters.AddWithValue("@father_department", TextBoxFCpy.Text);
        cmd.Parameters.AddWithValue("@father_desgination", TextBoxFDesg.Text);
        cmd.Parameters.AddWithValue("@father_income", TextBoxFIncom.Text);
        cmd.Parameters.AddWithValue("@father_std_home", TextBoxFSTDH.Text);
        cmd.Parameters.AddWithValue("@father_std_office", TextBoxFSTDO.Text);
        cmd.Parameters.AddWithValue("@father_mail", TextBoxFMail.Text);
        cmd.Parameters.AddWithValue("@father_phone", TextBoxFNumber.Text);
        cmd.Parameters.AddWithValue("@mother_name", TextBoxMName.Text);
        cmd.Parameters.AddWithValue("@mother_qualification", TextBoxMQuali.Text);
        cmd.Parameters.AddWithValue("@mother_occupation", TextBoxMJob.Text);
        cmd.Parameters.AddWithValue("@mother_department", TextBoxMCpy.Text);
        cmd.Parameters.AddWithValue("@mother_desgination", TextBoxMDesg.Text);
        cmd.Parameters.AddWithValue("@mother_income", TextBoxMIncom.Text);
        cmd.Parameters.AddWithValue("@mother_std_home", TextBoxMSTDH.Text);
        cmd.Parameters.AddWithValue("@mother_std_office", TextBoxMSTDO.Text);
        cmd.Parameters.AddWithValue("@mother_mail", TextBoxMMail.Text);
        cmd.Parameters.AddWithValue("@mother_phone", TextBoxMNumber.Text);
        cmd.Parameters.AddWithValue("@gaurdian_name", TextBoxLGName.Text);
        cmd.Parameters.AddWithValue("@gaurdian_rel", TextBoxLGRelation.Text);
        cmd.Parameters.AddWithValue("@gaurdian_occupation", TextBoxLGJob.Text);
        cmd.Parameters.AddWithValue("@gaurdian_department", TextBoxLGCpy.Text);
        cmd.Parameters.AddWithValue("@gaurdian_desgination", TextBoxLGDesg.Text);
        cmd.Parameters.AddWithValue("@gaurdian_std_home", TextBoxLGSTDH.Text);
        cmd.Parameters.AddWithValue("@gaurdian_std_office", TextBoxLGSTDO.Text);
        cmd.Parameters.AddWithValue("@gaurdian_mail", TextBoxLGMail.Text);
        cmd.Parameters.AddWithValue("@gaurdian_phone", TextBoxLGNumber.Text);

        cmd.Parameters.AddWithValue("@ac_sec_school", TextBoxSecSchool.Text);
        cmd.Parameters.AddWithValue("@ac_sec_city", TextBoxSecCity.Text);
        cmd.Parameters.AddWithValue("@ac_sec_medium", TextBoxSecMedium.Text);
        cmd.Parameters.AddWithValue("@ac_sec_board", TextBoxSecBoard.Text);
        cmd.Parameters.AddWithValue("@ac_sec_yop", TextBoxSecYOP.Text);
        cmd.Parameters.AddWithValue("@ac_sec_max_marks", TextBoxSecTotalMarks.Text);
        cmd.Parameters.AddWithValue("@ac_sec_marks_obt", TextBoxSecObtMarks.Text);
        cmd.Parameters.AddWithValue("@ac_sec_percentage", TextBoxSecPerc.Text);
        cmd.Parameters.AddWithValue("@ac_sr_sec_school", TextBoxSrSecSchool.Text);
        cmd.Parameters.AddWithValue("@ac_sr_sec_city", TextBoxSrSecCity.Text);
        cmd.Parameters.AddWithValue("@ac_sr_sec_medium", TextBoxSrSecMedium.Text);
        cmd.Parameters.AddWithValue("@ac_sr_sec_board", TextBoxSrSecBoard.Text);
        cmd.Parameters.AddWithValue("@ac_sr_sec_yop", TextBoxSrSecYOP.Text);
        cmd.Parameters.AddWithValue("@ac_sr_sec_max_marks", TextBoxSrSecTotalMarks.Text);
        cmd.Parameters.AddWithValue("@ac_sr_sec_marks_obt", TextBoxSrSecObtMarks.Text);
        cmd.Parameters.AddWithValue("@ac_sr_sec_percentage", TextBoxSrSecPerc.Text);
        cmd.Parameters.AddWithValue("@ac_dipl_school", TextBoxDipSchool.Text);
        cmd.Parameters.AddWithValue("@ac_dipl_city", TextBoxDipCity.Text);
        cmd.Parameters.AddWithValue("@ac_dipl_medium", TextBoxDipMedium.Text);
        cmd.Parameters.AddWithValue("@ac_dipl_board", TextBoxDipBoard.Text);
        cmd.Parameters.AddWithValue("@ac_dipl_yop", TextBoxDipYOP.Text);
        cmd.Parameters.AddWithValue("@ac_dipl_max_marks", TextBoxDipTotalMarks.Text);
        cmd.Parameters.AddWithValue("@ac_dipl_marks_obt", TextBoxDipObtMarks.Text);
        cmd.Parameters.AddWithValue("@ac_dipl_percentage", TextBoxDipPerc.Text);

        cmd.Parameters.AddWithValue("@st_college_year", TextBoxYear.Text);
        cmd.Parameters.AddWithValue("@st_college_semester", TextBoxSem.Text);
        cmd.Parameters.AddWithValue("@st_college_aggre", TextBoxBtechAgree.Text);
        cmd.Parameters.AddWithValue("@st_college_back", TextBoxTotalBack.Text);
        cmd.Parameters.AddWithValue("@st_college_back_sub", TextBoxBackSubject.Text);

        cmd.Parameters.AddWithValue("@elig_phy_max_marks", TextBoxPhyMaxMarks.Text);
        cmd.Parameters.AddWithValue("@elig_phy_marks_obtained", TextBoxPhyObtMarks.Text);
        cmd.Parameters.AddWithValue("@elig_math_max_marks", TextBoxMathMaxMarks.Text);
        cmd.Parameters.AddWithValue("@elig_math_marks_obtained", TextBoxMathObtMarks.Text);
        cmd.Parameters.AddWithValue("@elig_third_max_marks", TextBoxThirdSubMaxMarks.Text);
        cmd.Parameters.AddWithValue("@elig_third_marks_obtained", TextBoxThirdSubObtMarks.Text);
        cmd.Parameters.AddWithValue("@elig_board", TextBoxSrSecBoard.Text);
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        try
        {
            con.Open();
            cmd.ExecuteNonQuery();
            Label1.Text = "Record was successfully added!";
            Response.Write("<script>alert('Record was successfully added!');</script>");
            Response.Redirect("student.aspx?data=" + studentname);
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
    
