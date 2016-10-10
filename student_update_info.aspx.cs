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

public partial class student_update_info : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Select and Fill all the field properly before submitting');</script>");

        string studentname = Request.QueryString["data"];
        Session["user"] = Request.QueryString["data"];
        //Database Connection
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
            TextBoxSTPhone.Text = reader["st_mobile"].ToString();
            TextBoxSTMail.Text = reader["st_mail_other"].ToString();
            /*string year = reader["st_college_year"].ToString();
            DropDownList1.Items.FindByText("year").Selected = true;
            string semester = reader["st_college_semester"].ToString();
            DropDownList2.Items.FindByText("semester").Selected = true;
            string college = reader["st_college"].ToString();
            DropDownListCollege.Items.FindByText("college").Selected = true;
            string branch = reader["st_branch"].ToString();
            DropDownListBranch.Items.FindByText("branch").Selected = true;*/
            TextBoxSecPerc.Text = reader["ac_sec_percentage"].ToString();
            TextBoxSrSecPerc.Text = reader["ac_sr_sec_percentage"].ToString();
            TextBoxBtechAgree.Text = reader["st_college_aggre"].ToString();
            TextBoxTotalBack.Text = reader["st_college_back"].ToString();
            TextBoxBackSubject.Text = reader["st_college_back_sub"].ToString();
            TextBoxPOB.Text = reader["st_placeofbirth"].ToString();
            TextBoxReligion.Text = reader["st_relegion"].ToString();
            TextBoxCaste.Text = reader["st_caste"].ToString();
            /*string minority = reader["st_minority"].ToString();
            DropDownListMinority.Items.FindByText("branch").Selected = true;
            string category = reader["st_category"].ToString();
            DropDownListCat.Items.FindByText("branch").Selected = true;
            string citizen = reader["st_citizentype"].ToString();
            DropDownListBelongs.Items.FindByText("branch").Selected = true;*/
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
            //string focu = reader["father_occupation"].ToString();
            //DropdownFJobType.Items.FindByText("focu").Selected = true; 
            TextBoxFCpy.Text = reader["father_department"].ToString();
            TextBoxFDesg.Text = reader["father_desgination"].ToString();
            TextBoxFIncom.Text = reader["father_income"].ToString();
            TextBoxMName.Text = reader["mother_name"].ToString();
            TextBoxMNumber.Text = reader["mother_phone"].ToString();
            TextBoxMSTDO.Text = reader["mother_std_office"].ToString();
            TextBoxMSTDH.Text = reader["mother_std_home"].ToString();
            TextBoxMMail.Text = reader["mother_mail"].ToString();
            TextBoxMQuali.Text = reader["mother_qualification"].ToString();
            //string mocu = reader["mother_occupation"].ToString();
            //DropdownMJobType.Items.FindByText("mocu").Selected = true; 
            TextBoxMCpy.Text = reader["mother_department"].ToString();
            TextBoxMDesg.Text = reader["mother_desgination"].ToString();
            TextBoxMIncom.Text = reader["mother_income"].ToString();
            TextBoxLGName.Text = reader["gaurdian_name"].ToString();
            TextBoxLGRelation.Text = reader["gaurdian_rel"].ToString();
            TextBoxLGNumber.Text = reader["gaurdian_phone"].ToString();
            TextBoxLGSTDO.Text = reader["gaurdian_std_office"].ToString();
            TextBoxLGSTDH.Text = reader["gaurdian_std_home"].ToString();
            TextBoxLGMail.Text = reader["gaurdian_mail"].ToString();
            //string gocu = reader["gaurdian_occupation"].ToString();
            //DropdownLGJobType.Items.FindByText("gocu").Selected = true; 
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
            /*string resident = reader["st_livingtype"].ToString();
            DropdownResidentType.Items.FindByText("resident").Selected = true; 
            string trans = reader["st_transport"].ToString();
            DropdownCollegeTransport.Items.FindByText("trans").Selected = true;
            string blood = reader["st_bloodgroup"].ToString();
            DropdownBloodGroup.Items.FindByText("blood").Selected = true; 
            string hostel = reader["st_hostel"].ToString();
            DropDownListHostel.Items.FindByText("hostel").Selected = true;*/ 
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
        if (!IsPostBack)
        {
            if (this.SelectedDate == DateTime.MinValue)
            {
                this.PopulateYear();
                this.PopulateMonth();
                this.PopulateDay();
            }
        }
        else
        {
            if (Request.Form[ddlDay.UniqueID] != null)
            {
                this.PopulateDay();
                ddlDay.ClearSelection();
                ddlDay.Items.FindByValue(Request.Form[ddlDay.UniqueID]).Selected = true;
            }
        }
        if (!IsPostBack)
        {
            SortedList s1 = new SortedList();
            s1.Add("I", "Year");
            s1.Add("II", "First");
            s1.Add("III", "Second");
            s1.Add("IV", "Third");
            s1.Add("V", "Fourth");
            DropDownList1.DataSource = s1.Values;
            DropDownList1.DataBind();
        }
    }
    
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SortedList s2 = new SortedList();
        if (DropDownList1.SelectedItem.ToString() == "First")
        {
            s2.Add("0", "Select Semester");
            s2.Add("1", "First");
            s2.Add("2", "Second");
            DropDownList2.DataSource = s2.Values;
            DropDownList2.DataBind();
        }
        else if (DropDownList1.SelectedItem.ToString() == "Second")
        {
            DropDownList2.Items.Clear();
            s2.Add("0", "Semester");
            s2.Add("3", "Third");
            s2.Add("4", "Fourth");
            DropDownList2.DataSource = s2.Values;
            DropDownList2.DataBind();
        }
        else if (DropDownList1.SelectedItem.ToString() == "Third")
        {
            DropDownList2.Items.Clear();
            s2.Add("0", "Semester");
            s2.Add("5", "Fifth");
            s2.Add("6", "Sixth");
            DropDownList2.DataSource = s2.Values;
            DropDownList2.DataBind();
        }
        else if (DropDownList1.SelectedItem.ToString() == "Fourth")
        {
            DropDownList2.Items.Clear();
            s2.Add("0", "Semester");
            s2.Add("7", "Seventh");
            s2.Add("8", "Eigth");
            DropDownList2.DataSource = s2.Values;
            DropDownList2.DataBind();
        }
    }
    /*For dynamic calendar for date of birth*/

    private int Day
    {
        get
        {
            if (Request.Form[ddlDay.UniqueID] != null)
            {
                return int.Parse(Request.Form[ddlDay.UniqueID]);
            }
            else
            {
                return int.Parse(ddlDay.SelectedItem.Value);
            }
        }
        set
        {
            this.PopulateDay();
            ddlDay.ClearSelection();
            ddlDay.Items.FindByValue(value.ToString()).Selected = true;
        }
    }
    private int Month
    {
        get
        {
            return int.Parse(ddlMonth.SelectedItem.Value);
        }
        set
        {
            this.PopulateMonth();
            ddlMonth.ClearSelection();
            ddlMonth.Items.FindByValue(value.ToString()).Selected = true;
        }
    }
    private int Year
    {
        get
        {
            return int.Parse(ddlYear.SelectedItem.Value);
        }
        set
        {
            this.PopulateYear();
            ddlYear.ClearSelection();
            ddlYear.Items.FindByValue(value.ToString()).Selected = true;
        }
    }

    public DateTime SelectedDate
    {
        get
        {
            try
            {
                return DateTime.Parse(this.Month + "/" + this.Day + "/" + this.Year);
            }
            catch
            {
                return DateTime.MinValue;
            }
        }
        set
        {
            if (!value.Equals(DateTime.MinValue))
            {
                this.Year = value.Year;
                this.Month = value.Month;
                this.Day = value.Day;
            }
        }
    }


    private void PopulateDay()
    {
        ddlDay.Items.Clear();
        ListItem lt = new ListItem();
        lt.Text = "DD";
        lt.Value = "0";
        ddlDay.Items.Add(lt);
        int days = DateTime.DaysInMonth(this.Year, this.Month);
        for (int i = 1; i <= days; i++)
        {
            lt = new ListItem();
            lt.Text = i.ToString();
            lt.Value = i.ToString();
            ddlDay.Items.Add(lt);
        }
        ddlDay.Items.FindByValue(DateTime.Now.Day.ToString()).Selected = true;
    }

    private void PopulateMonth()
    {
        ddlMonth.Items.Clear();
        ListItem lt = new ListItem();
        lt.Text = "MM";
        lt.Value = "0";
        ddlMonth.Items.Add(lt);
        for (int i = 1; i <= 12; i++)
        {
            lt = new ListItem();
            lt.Text = i.ToString();
            lt.Value = i.ToString();
            ddlMonth.Items.Add(lt);
        }
        ddlMonth.Items.FindByValue(DateTime.Now.Month.ToString()).Selected = true;
    }

    private void PopulateYear()
    {
        ddlYear.Items.Clear();
        ListItem lt = new ListItem();
        lt.Text = "YYYY";
        lt.Value = "0";
        ddlYear.Items.Add(lt);
        for (int i = DateTime.Now.Year; i >= 1950; i--)
        {
            lt = new ListItem();
            lt.Text = i.ToString();
            lt.Value = i.ToString();
            ddlYear.Items.Add(lt);
        }
        ddlYear.Items.FindByValue(DateTime.Now.Year.ToString()).Selected = true;
    }


    /*for uploading data to database*/
    public string GetConnectionString()
    {
        //sets the connection string from your web config file "ConnString" is the name of your Connection String
        return System.Configuration.ConfigurationManager.ConnectionStrings["kysdatabase"].ConnectionString;
    }
      
    protected void Button1_Click(object sender, EventArgs e)
    {
            string studentname = Request.QueryString["data"];
            string FileName = Path.GetFileName(imgUpload.PostedFile.FileName);

            //Save files to disk
            imgUpload.SaveAs(Server.MapPath("student_images/" + FileName));
                      
            //Add Entry to DataBase
            SqlConnection con = new SqlConnection(GetConnectionString());

            string strQuery = "UPDATE student_info_new SET st_name = @st_name, st_regid = @st_regid, st_photo = @st_photo, st_branch = @st_branch, st_college = @st_college, st_mail_other = @st_mail_other, st_mobile = @st_mobile, st_addr = @st_addr, st_addr_ps = @st_addr_ps, st_addr_distt = @st_addr_distt, st_addr_pincode = @st_addr_pincode, st_jee_roll = @st_jee_roll, st_jee_marks = @st_jee_marks, st_dob = @st_dob, st_placeofbirth = @st_placeofbirth, st_relegion = @st_relegion, st_caste = @st_caste, st_minority = @st_minority, st_category = @st_category, st_citizentype = @st_citizentype, st_bloodgroup = @st_bloodgroup, st_hobbies = @st_hobbies, st_additionalcources = @st_additionalcources, st_illness = @st_illness, st_livingtype = @st_livingtype, st_hostel = @st_hostel, st_transport = @st_transport, st_localaddress = @st_localaddress, father_name = @father_name, father_qualification = @father_qualification, father_occupation = @father_occupation, father_department = @father_department, father_desgination = @father_desgination, father_income = @father_income, father_std_home = @father_std_home, father_std_office = @father_std_office, father_mail = @father_mail, father_phone = @father_phone, mother_name = @mother_name, mother_qualification = @mother_qualification, mother_occupation = @mother_occupation, mother_department = @mother_department, mother_desgination = @mother_desgination, mother_income = @mother_income, mother_std_home = @mother_std_home, mother_std_office = @mother_std_office, mother_mail = @mother_mail, mother_phone = @mother_phone, gaurdian_name = @gaurdian_name, gaurdian_rel = @gaurdian_rel, gaurdian_occupation = @gaurdian_occupation, gaurdian_department = @gaurdian_department, gaurdian_desgination = @gaurdian_desgination, gaurdian_std_home = @gaurdian_std_home, gaurdian_std_office = @gaurdian_std_office, gaurdian_mail = @gaurdian_mail, gaurdian_phone = @gaurdian_phone, ac_sec_school = @ac_sec_school, ac_sec_city = @ac_sec_city, ac_sec_medium = @ac_sec_medium, ac_sec_board = @ac_sec_board, ac_sec_yop = @ac_sec_yop, ac_sec_max_marks = @ac_sec_max_marks, ac_sec_marks_obt = @ac_sec_marks_obt, ac_sec_percentage = @ac_sec_percentage, ac_sr_sec_school = @ac_sr_sec_school, ac_sr_sec_city = @ac_sr_sec_city, ac_sr_sec_medium = @ac_sr_sec_medium, ac_sr_sec_board = @ac_sr_sec_board, ac_sr_sec_yop = @ac_sr_sec_yop, ac_sr_sec_max_marks = @ac_sr_sec_max_marks, ac_sr_sec_marks_obt = @ac_sr_sec_marks_obt, ac_sr_sec_percentage = @ac_sr_sec_percentage, ac_dipl_school = @ac_dipl_school, ac_dipl_city = @ac_dipl_city, ac_dipl_medium = @ac_dipl_medium, ac_dipl_board = @ac_dipl_board, ac_dipl_yop = @ac_dipl_yop, ac_dipl_max_marks = @ac_dipl_max_marks, ac_dipl_marks_obt = @ac_dipl_marks_obt, ac_dipl_percentage = @ac_dipl_percentage, st_college_year = @st_college_year, st_college_semester = @st_college_semester, st_college_aggre = @st_college_aggre, st_college_back = @st_college_back, st_college_back_sub = @st_college_back_sub, elig_phy_max_marks = @elig_phy_max_marks, elig_phy_marks_obtained = @elig_phy_marks_obtained, elig_math_max_marks = @elig_math_max_marks, elig_math_marks_obtained = @elig_math_marks_obtained, elig_third_max_marks = @elig_third_max_marks, elig_third_marks_obtained = @elig_third_marks_obtained, elig_board = @elig_board WHERE  st_mail_college = @st_mail_college";


            SqlCommand cmd = new SqlCommand(strQuery);
            cmd.Parameters.AddWithValue("@st_mail_college", studentname);
            cmd.Parameters.AddWithValue("@st_name", TextBoxName.Text);
            cmd.Parameters.AddWithValue("@st_regid", TextBoxRegistration.Text);
            cmd.Parameters.AddWithValue("@st_photo", "student_images/" + FileName);
            cmd.Parameters.AddWithValue("@st_branch", DropDownListBranch.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@st_college", DropDownListCollege.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@st_mail_other", TextBoxSTMail.Text);
            cmd.Parameters.AddWithValue("@st_mobile", TextBoxSTPhone.Text);
            cmd.Parameters.AddWithValue("@st_addr", TextBoxAddressLine.Text);
            cmd.Parameters.AddWithValue("@st_addr_ps", TextBoxAddressPolice.Text);
            cmd.Parameters.AddWithValue("@st_addr_distt", TextBoxDistt.Text);
            cmd.Parameters.AddWithValue("@st_addr_pincode", TextBoxPinCode.Text);
            cmd.Parameters.AddWithValue("@st_jee_roll", TextBoxJEERoll.Text);
            cmd.Parameters.AddWithValue("@st_jee_marks", TextBoxJEEMarks.Text);
            cmd.Parameters.AddWithValue("@st_dob", ddlDay.SelectedItem.Text + "/" + ddlMonth.SelectedItem.Text + "/" + ddlYear.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@st_placeofbirth", TextBoxPOB.Text);
            cmd.Parameters.AddWithValue("@st_relegion", TextBoxReligion.Text);
            cmd.Parameters.AddWithValue("@st_caste", TextBoxCaste.Text);
            cmd.Parameters.AddWithValue("@st_minority", DropDownListMinority.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@st_category", DropDownListCat.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@st_citizentype", DropDownListBelongs.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@st_bloodgroup", DropdownBloodGroup.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@st_hobbies", TextBoxHobbies.Text);
            cmd.Parameters.AddWithValue("@st_additionalcources", TextBoxAdditional.Text);
            cmd.Parameters.AddWithValue("@st_illness", TextBoxIllness.Text);
            cmd.Parameters.AddWithValue("@st_livingtype", DropdownResidentType.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@st_hostel", DropDownListHostel.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@st_transport", DropdownCollegeTransport.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@st_localaddress", TextBoxResident.Text);
            
            cmd.Parameters.AddWithValue("@father_name", TextBoxFName.Text);
            cmd.Parameters.AddWithValue("@father_qualification", TextBoxFQuali.Text);
            cmd.Parameters.AddWithValue("@father_occupation", DropdownFJobType.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@father_department", TextBoxFCpy.Text);
            cmd.Parameters.AddWithValue("@father_desgination", TextBoxFDesg.Text);
            cmd.Parameters.AddWithValue("@father_income", TextBoxFIncom.Text);
            cmd.Parameters.AddWithValue("@father_std_home", TextBoxFSTDH.Text);
            cmd.Parameters.AddWithValue("@father_std_office", TextBoxFSTDO.Text);
            cmd.Parameters.AddWithValue("@father_mail", TextBoxFMail.Text);
            cmd.Parameters.AddWithValue("@father_phone", TextBoxFNumber.Text);
            cmd.Parameters.AddWithValue("@mother_name", TextBoxMName.Text);
            cmd.Parameters.AddWithValue("@mother_qualification", TextBoxMQuali.Text);
            cmd.Parameters.AddWithValue("@mother_occupation", DropdownMJobType.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@mother_department", TextBoxMCpy.Text);
            cmd.Parameters.AddWithValue("@mother_desgination", TextBoxMDesg.Text);
            cmd.Parameters.AddWithValue("@mother_income", TextBoxMIncom.Text);
            cmd.Parameters.AddWithValue("@mother_std_home", TextBoxMSTDH.Text);
            cmd.Parameters.AddWithValue("@mother_std_office", TextBoxMSTDO.Text);
            cmd.Parameters.AddWithValue("@mother_mail", TextBoxMMail.Text);
            cmd.Parameters.AddWithValue("@mother_phone", TextBoxMNumber.Text);
            cmd.Parameters.AddWithValue("@gaurdian_name", TextBoxLGName.Text);
            cmd.Parameters.AddWithValue("@gaurdian_rel", TextBoxLGRelation.Text);
            cmd.Parameters.AddWithValue("@gaurdian_occupation", DropdownLGJobType.SelectedItem.Text);
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
        
            cmd.Parameters.AddWithValue("@st_college_year", DropDownList1.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@st_college_semester", DropDownList2.SelectedItem.Text);
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