<%@ Page Title="" Language="C#" MasterPageFile="~/kys.master" AutoEventWireup="true" CodeFile="tutor.aspx.cs" Inherits="tutor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container text-right">
        <asp:Label ID="LabelName" runat="server" CssClass="tutor-name-text"></asp:Label>
    </div>
    <div class="container">
        <div class="jumbotron text-center page-header">
            <p class="student-name-text">Tutor's Zone</p>
            <hr />
        </div>
    </div>
    <div class="container">
        <div class="jumbotron col-md-12 col-sm-12 col-xs-12">
            <div class="col-md-12">
                <div class="col-md-12 text-left">
                    <p class="student-name-text">Student Details</p>
                </div>
                <form id="form1" runat="server">
                    <div class="col-md-12">
                        <div class="col-md-2">
                            <p class="student-update-Details">Class Attendance</p>
                        </div>
                        <div class="col-md-2">
                            <asp:Button ID="BtnClassAttendance" runat="server" CssClass="fa-btn btn-1 btn-1e btn btn-lg btn-block" Text="Class Attendance" OnClick="BtnAttendance" />
                        </div>
                        <div class="col-md-2">
                            <p class="student-update-details">Class Marks</p>
                        </div>
                        <div class="col-md-2">
                            <asp:Button ID="BtnClassMarks" runat="server" CssClass="fa-btn btn-1 btn-1e btn btn-lg btn-block" Text="Class Marks" OnClick="BtnClassMarks_Click" />
                        </div>
                        <div class="col-md-2">
                            <p class="student-update-Details">Class Details</p>
                        </div>
                        <div class="col-md-2">
                            <asp:Button ID="BtnClassDetails" runat="server" CssClass="fa-btn btn-1 btn-1e btn btn-lg btn-block" Text="Class Details" OnClick="BtnDetails"/>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <br />
                    </div>
                    <div class="col-md-12 text-left">
                        <p class="student-name-text">Search Student </p>
                    </div>
                    <div class="col-md-12">
                        <div class="col-md-8">
                            <asp:TextBox ID="TextBoxStName" runat="server" CssClass="form-control" placeholder="Student Search enter name or registration number"></asp:TextBox>
                        </div>
                        <div class="col-md-4 col-xs-12">
                            <asp:Button ID="Button2" runat="server" CssClass="fa-btn btn-1 btn-1e btn btn-lg btn-block" Text="Search Info" OnClick="Button2_Click" />
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="container">
        <br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
    </div>
</asp:Content>

