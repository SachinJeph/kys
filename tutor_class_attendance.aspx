<%@ Page Title="" Language="C#" MasterPageFile="~/kys.master" AutoEventWireup="true" CodeFile="tutor_class_attendance.aspx.cs" Inherits="tutor_class_attendance" %>

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
                <p class="student-name-text">Class Attendance</p>
            </div>
            <form id="form1" runat="server" class="form-group text-center">
                <div class="col-md-12">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="col-md-12 Grid " DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="st_name" HeaderText="Name" SortExpression="st_name" />
                            <asp:BoundField DataField="st_regid" HeaderText="Registration Id" SortExpression="st_regid" />
                            <asp:BoundField DataField="st_college_aggre" HeaderText="BTech Percentage" SortExpression="st_college_aggre" />
                            <asp:BoundField DataField="st_college_back" HeaderText="Backs" SortExpression="st_college_back" />
                            <asp:BoundField DataField="st_attendance" HeaderText="Attendance" SortExpression="st_attendance" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:kysdataConnectionString %>" SelectCommand="SELECT [st_name], [st_regid], [st_college_aggre], [st_college_back], [st_attendance] FROM [student_info_new]"></asp:SqlDataSource>
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
        <br /><br /><br /><br /><br /><br /><br /><br />
    </div>
</asp:Content>

