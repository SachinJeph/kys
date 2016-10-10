<%@ Page Title="" Language="C#" MasterPageFile="~/kys.master" AutoEventWireup="true" CodeFile="placement_student.aspx.cs" Inherits="placement_student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript">
        function PrintGridData() {
            var prtGrid = document.getElementById('<%=GridView1.ClientID %>');
            prtGrid.border = 0;
            var prtwin = window.open('', 'PrintGridViewData', 'left=100,top=100,width=1000,height=1000,tollbar=0,scrollbars=1,status=0,resizable=1');
            prtwin.document.write(prtGrid.outerHTML);
            prtwin.document.close();
            prtwin.focus();
            prtwin.print();
            prtwin.close();
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container text-right">
        <asp:Label ID="LabelName" runat="server" CssClass="tutor-name-text"></asp:Label>
    </div>
    <div class="container">
        <div class="jumbotron col-md-12 ">
            <div class="text-center page-header">
                <p class="student-name-text">Students Details</p>
            </div>
            <form id="form1" runat="server" class="form-group text-center">
                <div class="col-md-12">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="col-md-12 Grid " DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="st_name" HeaderText="Student Name" SortExpression="st_name" />
                            <asp:BoundField DataField="st_regid" HeaderText="Registration ID" SortExpression="st_regid" />
                            <asp:BoundField DataField="st_mail_college" HeaderText="Mail ID" SortExpression="st_mail_college" />
                            <asp:BoundField DataField="st_mobile" HeaderText="Mobile" SortExpression="st_mobile" />
                            <asp:BoundField DataField="st_hostel" HeaderText="Hosteller" SortExpression="st_hostel" />
                            <asp:BoundField DataField="st_caste" HeaderText="Caste" SortExpression="st_caste" />
                            <asp:BoundField DataField="st_dob" HeaderText="DOB" SortExpression="st_dob" />
                            <asp:BoundField DataField="st_college_aggre" HeaderText="Btech Agree." SortExpression="st_college_aggre" />
                            <asp:BoundField DataField="st_college_back" HeaderText="Backs" SortExpression="st_college_back" />
                            <asp:BoundField DataField="st_attendance" HeaderText="Attendance" SortExpression="st_attendance" />
                            <asp:BoundField DataField="ac_sr_sec_percentage" HeaderText="12 Percentage" SortExpression="ac_sr_sec_percentage" />
                            <asp:BoundField DataField="ac_sec_percentage" HeaderText="10 Percentage" SortExpression="ac_sec_percentage" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kysdatabase %>" SelectCommand="SELECT [st_name], [st_regid], [st_mail_college], [st_mobile], [st_hostel], [st_caste], [st_dob], [st_college_aggre], [st_college_back], [st_attendance], [ac_sr_sec_percentage], [ac_sec_percentage] FROM [student_info_new] WHERE (([ac_sec_percentage] &gt;= @ac_sec_percentage) AND ([ac_sr_sec_percentage] &gt;= @ac_sr_sec_percentage) AND ([st_college_aggre] &gt;= @st_college_aggre) AND ([st_college_back] &lt;= @st_college_back) AND ([st_college_year] = @st_college_year))">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="ac_sec_percentage" QueryStringField="data" Type="Double" />
                            <asp:QueryStringParameter Name="ac_sr_sec_percentage" QueryStringField="data2" Type="Double" />
                            <asp:QueryStringParameter Name="st_college_aggre" QueryStringField="data3" Type="Double" />
                            <asp:QueryStringParameter Name="st_college_back" QueryStringField="data4" Type="Double" />
                            <asp:QueryStringParameter Name="st_college_year" QueryStringField="data5" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <div class="col-md-12">
                        <br />
                        <div class="col-md-4"></div>
                        <div class="col-md-4">
                            <input type="button" id="btnPrint" value="Print" class="fa-btn btn-1 btn-1e btn btn-lg btn-block" onclick="PrintGridData()" />
                        </div>
                        <div class="col-md-4"></div>
                    </div>
                </div>
            </form>
        </div>
    </div>
     <div class="clearfix"></div>
    <div class="container">
        <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
    </div>
</asp:Content>

