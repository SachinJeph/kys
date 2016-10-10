<%@ Page Title="" Language="C#" MasterPageFile="~/kys.master" AutoEventWireup="true" CodeFile="tutor_class_details.aspx.cs" Inherits="tutor_class_details" %>

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
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="st_id" DataSourceID="SqlDataSource1" CssClass="col-md-12 Grid" ShowFooter="True">
                        <Columns>
                            <asp:BoundField DataField="st_name" HeaderText="Name" SortExpression="st_name" />
                            <asp:BoundField DataField="st_regid" HeaderText="Registration No." SortExpression="st_regid" />
                            <asp:BoundField DataField="st_mail_other" HeaderText="Mail Id" SortExpression="st_mail_other" />
                            <asp:BoundField DataField="st_mobile" HeaderText="Mobile No." SortExpression="st_mobile" />
                            <asp:BoundField DataField="father_name" HeaderText="Father's Name" SortExpression="father_name" />
                            <asp:BoundField DataField="father_phone" HeaderText="Father's Phone" SortExpression="father_phone" />
                            <asp:BoundField DataField="mother_name" HeaderText="Mother's Name" SortExpression="mother_name" />
                            <asp:BoundField DataField="mother_phone" HeaderText="Mother's Phone" SortExpression="mother_phone" />
                            <asp:BoundField DataField="st_college_back" HeaderText="Back" SortExpression="st_college_back" />
                            <asp:BoundField DataField="st_college_aggre" HeaderText="BTech. %" SortExpression="st_college_aggre" />
                            <asp:BoundField DataField="ac_sec_board" HeaderText="10 Board" SortExpression="ac_sec_board" />
                            <asp:BoundField DataField="ac_sec_percentage" HeaderText="10 Perc" SortExpression="ac_sec_percentage" />
                            <asp:BoundField DataField="ac_sr_sec_board" HeaderText="12 Board" SortExpression="ac_sr_sec_board" />
                            <asp:BoundField DataField="ac_sr_sec_percentage" HeaderText="12 Perc" SortExpression="ac_sr_sec_percentage" />
                            <asp:BoundField DataField="st_attendance" HeaderText="Attendance" SortExpression="st_attendance" />
                            <asp:CommandField ShowDeleteButton="False" ShowEditButton="True" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:kysdatabase %>" DeleteCommand="DELETE FROM [student_info_new] WHERE [st_id] = @original_st_id AND (([st_name] = @original_st_name) OR ([st_name] IS NULL AND @original_st_name IS NULL)) AND (([st_regid] = @original_st_regid) OR ([st_regid] IS NULL AND @original_st_regid IS NULL)) AND (([st_mail_other] = @original_st_mail_other) OR ([st_mail_other] IS NULL AND @original_st_mail_other IS NULL)) AND (([st_mobile] = @original_st_mobile) OR ([st_mobile] IS NULL AND @original_st_mobile IS NULL)) AND (([father_name] = @original_father_name) OR ([father_name] IS NULL AND @original_father_name IS NULL)) AND (([st_college_back] = @original_st_college_back) OR ([st_college_back] IS NULL AND @original_st_college_back IS NULL)) AND (([st_college_aggre] = @original_st_college_aggre) OR ([st_college_aggre] IS NULL AND @original_st_college_aggre IS NULL)) AND (([father_phone] = @original_father_phone) OR ([father_phone] IS NULL AND @original_father_phone IS NULL)) AND (([mother_name] = @original_mother_name) OR ([mother_name] IS NULL AND @original_mother_name IS NULL)) AND (([mother_phone] = @original_mother_phone) OR ([mother_phone] IS NULL AND @original_mother_phone IS NULL)) AND (([ac_sec_board] = @original_ac_sec_board) OR ([ac_sec_board] IS NULL AND @original_ac_sec_board IS NULL)) AND (([ac_sec_percentage] = @original_ac_sec_percentage) OR ([ac_sec_percentage] IS NULL AND @original_ac_sec_percentage IS NULL)) AND (([ac_sr_sec_board] = @original_ac_sr_sec_board) OR ([ac_sr_sec_board] IS NULL AND @original_ac_sr_sec_board IS NULL)) AND (([ac_sr_sec_percentage] = @original_ac_sr_sec_percentage) OR ([ac_sr_sec_percentage] IS NULL AND @original_ac_sr_sec_percentage IS NULL)) AND (([st_attendance] = @original_st_attendance) OR ([st_attendance] IS NULL AND @original_st_attendance IS NULL))" InsertCommand="INSERT INTO [student_info_new] ([st_name], [st_regid], [st_mail_other], [st_mobile], [father_name], [st_college_back], [st_college_aggre], [father_phone], [mother_name], [mother_phone], [ac_sec_board], [ac_sec_percentage], [ac_sr_sec_board], [ac_sr_sec_percentage], [st_attendance]) VALUES (@st_name, @st_regid, @st_mail_other, @st_mobile, @father_name, @st_college_back, @st_college_aggre, @father_phone, @mother_name, @mother_phone, @ac_sec_board, @ac_sec_percentage, @ac_sr_sec_board, @ac_sr_sec_percentage, @st_attendance)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [st_id], [st_name], [st_regid], [st_mail_other], [st_mobile], [father_name], [st_college_back], [st_college_aggre], [father_phone], [mother_name], [mother_phone], [ac_sec_board], [ac_sec_percentage], [ac_sr_sec_board], [ac_sr_sec_percentage], [st_attendance] FROM [student_info_new]" UpdateCommand="UPDATE [student_info_new] SET [st_name] = @st_name, [st_regid] = @st_regid, [st_mail_other] = @st_mail_other, [st_mobile] = @st_mobile, [father_name] = @father_name, [st_college_back] = @st_college_back, [st_college_aggre] = @st_college_aggre, [father_phone] = @father_phone, [mother_name] = @mother_name, [mother_phone] = @mother_phone, [ac_sec_board] = @ac_sec_board, [ac_sec_percentage] = @ac_sec_percentage, [ac_sr_sec_board] = @ac_sr_sec_board, [ac_sr_sec_percentage] = @ac_sr_sec_percentage, [st_attendance] = @st_attendance WHERE [st_id] = @original_st_id AND (([st_name] = @original_st_name) OR ([st_name] IS NULL AND @original_st_name IS NULL)) AND (([st_regid] = @original_st_regid) OR ([st_regid] IS NULL AND @original_st_regid IS NULL)) AND (([st_mail_other] = @original_st_mail_other) OR ([st_mail_other] IS NULL AND @original_st_mail_other IS NULL)) AND (([st_mobile] = @original_st_mobile) OR ([st_mobile] IS NULL AND @original_st_mobile IS NULL)) AND (([father_name] = @original_father_name) OR ([father_name] IS NULL AND @original_father_name IS NULL)) AND (([st_college_back] = @original_st_college_back) OR ([st_college_back] IS NULL AND @original_st_college_back IS NULL)) AND (([st_college_aggre] = @original_st_college_aggre) OR ([st_college_aggre] IS NULL AND @original_st_college_aggre IS NULL)) AND (([father_phone] = @original_father_phone) OR ([father_phone] IS NULL AND @original_father_phone IS NULL)) AND (([mother_name] = @original_mother_name) OR ([mother_name] IS NULL AND @original_mother_name IS NULL)) AND (([mother_phone] = @original_mother_phone) OR ([mother_phone] IS NULL AND @original_mother_phone IS NULL)) AND (([ac_sec_board] = @original_ac_sec_board) OR ([ac_sec_board] IS NULL AND @original_ac_sec_board IS NULL)) AND (([ac_sec_percentage] = @original_ac_sec_percentage) OR ([ac_sec_percentage] IS NULL AND @original_ac_sec_percentage IS NULL)) AND (([ac_sr_sec_board] = @original_ac_sr_sec_board) OR ([ac_sr_sec_board] IS NULL AND @original_ac_sr_sec_board IS NULL)) AND (([ac_sr_sec_percentage] = @original_ac_sr_sec_percentage) OR ([ac_sr_sec_percentage] IS NULL AND @original_ac_sr_sec_percentage IS NULL)) AND (([st_attendance] = @original_st_attendance) OR ([st_attendance] IS NULL AND @original_st_attendance IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_st_id" Type="Int32" />
                            <asp:Parameter Name="original_st_name" Type="String" />
                            <asp:Parameter Name="original_st_regid" Type="String" />
                            <asp:Parameter Name="original_st_mail_other" Type="String" />
                            <asp:Parameter Name="original_st_mobile" Type="Int64" />
                            <asp:Parameter Name="original_father_name" Type="String" />
                            <asp:Parameter Name="original_st_college_back" Type="Int32" />
                            <asp:Parameter Name="original_st_college_aggre" Type="Double" />
                            <asp:Parameter Name="original_father_phone" Type="Int64" />
                            <asp:Parameter Name="original_mother_name" Type="String" />
                            <asp:Parameter Name="original_mother_phone" Type="Int64" />
                            <asp:Parameter Name="original_ac_sec_board" Type="String" />
                            <asp:Parameter Name="original_ac_sec_percentage" Type="Double" />
                            <asp:Parameter Name="original_ac_sr_sec_board" Type="String" />
                            <asp:Parameter Name="original_ac_sr_sec_percentage" Type="Double" />
                            <asp:Parameter Name="original_st_attendance" Type="Double" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="st_name" Type="String" />
                            <asp:Parameter Name="st_regid" Type="String" />
                            <asp:Parameter Name="st_mail_other" Type="String" />
                            <asp:Parameter Name="st_mobile" Type="Int64" />
                            <asp:Parameter Name="father_name" Type="String" />
                            <asp:Parameter Name="st_college_back" Type="Int32" />
                            <asp:Parameter Name="st_college_aggre" Type="Double" />
                            <asp:Parameter Name="father_phone" Type="Int64" />
                            <asp:Parameter Name="mother_name" Type="String" />
                            <asp:Parameter Name="mother_phone" Type="Int64" />
                            <asp:Parameter Name="ac_sec_board" Type="String" />
                            <asp:Parameter Name="ac_sec_percentage" Type="Double" />
                            <asp:Parameter Name="ac_sr_sec_board" Type="String" />
                            <asp:Parameter Name="ac_sr_sec_percentage" Type="Double" />
                            <asp:Parameter Name="st_attendance" Type="Double" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="st_name" Type="String" />
                            <asp:Parameter Name="st_regid" Type="String" />
                            <asp:Parameter Name="st_mail_other" Type="String" />
                            <asp:Parameter Name="st_mobile" Type="Int64" />
                            <asp:Parameter Name="father_name" Type="String" />
                            <asp:Parameter Name="st_college_back" Type="Int32" />
                            <asp:Parameter Name="st_college_aggre" Type="Double" />
                            <asp:Parameter Name="father_phone" Type="Int64" />
                            <asp:Parameter Name="mother_name" Type="String" />
                            <asp:Parameter Name="mother_phone" Type="Int64" />
                            <asp:Parameter Name="ac_sec_board" Type="String" />
                            <asp:Parameter Name="ac_sec_percentage" Type="Double" />
                            <asp:Parameter Name="ac_sr_sec_board" Type="String" />
                            <asp:Parameter Name="ac_sr_sec_percentage" Type="Double" />
                            <asp:Parameter Name="st_attendance" Type="Double" />
                            <asp:Parameter Name="original_st_id" Type="Int32" />
                            <asp:Parameter Name="original_st_name" Type="String" />
                            <asp:Parameter Name="original_st_regid" Type="String" />
                            <asp:Parameter Name="original_st_mail_other" Type="String" />
                            <asp:Parameter Name="original_st_mobile" Type="Int64" />
                            <asp:Parameter Name="original_father_name" Type="String" />
                            <asp:Parameter Name="original_st_college_back" Type="Int32" />
                            <asp:Parameter Name="original_st_college_aggre" Type="Double" />
                            <asp:Parameter Name="original_father_phone" Type="Int64" />
                            <asp:Parameter Name="original_mother_name" Type="String" />
                            <asp:Parameter Name="original_mother_phone" Type="Int64" />
                            <asp:Parameter Name="original_ac_sec_board" Type="String" />
                            <asp:Parameter Name="original_ac_sec_percentage" Type="Double" />
                            <asp:Parameter Name="original_ac_sr_sec_board" Type="String" />
                            <asp:Parameter Name="original_ac_sr_sec_percentage" Type="Double" />
                            <asp:Parameter Name="original_st_attendance" Type="Double" />
                        </UpdateParameters>
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
</asp:Content>
