<%@ Page Title="" Language="C#" MasterPageFile="~/kys.master" AutoEventWireup="true" CodeFile="placement.aspx.cs" Inherits="placement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container text-right">
        <asp:Label ID="LabelName" runat="server" CssClass="tutor-name-text"></asp:Label>
    </div>
    <div class="container">
        <div class="jumbotron text-center page-header">
            <p class="student-name-text">Placement Zone</p>
            <hr />
        </div>
    </div>
    <div class="container">
        <div class="jumbotron col-md-12 col-xs-12">
            <div class="col-md-12">
                <div class="col-md-12 text-center">
                    <p class="student-name-text">Student Selection For Placement</p>
                </div>
                <div class="col-md-12 text-left">
                    <p class="student-name-text">Student Selection</p>
                </div>
                <form id="form1" runat="server">
                    <div class="col-md-12">
                        <div class="col-md-2 col-xs-12">
                            <asp:DropDownList ID="DropDownListYear" runat="server" CssClass="form-control year-sem">
                                <asp:ListItem Selected="True">Select Year</asp:ListItem>
                                <asp:ListItem>First</asp:ListItem>
                                <asp:ListItem>Second</asp:ListItem>
                                <asp:ListItem>Third</asp:ListItem>
                                <asp:ListItem>Fourth</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-2 col-xs-12">
                            <asp:DropDownList ID="ddl10per" runat="server" CssClass="form-control year-sem">
                                <asp:ListItem Selected="True">10th %</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-2 col-xs-12">
                            <asp:DropDownList ID="ddl12per" runat="server" CssClass="form-control year-sem">
                                <asp:ListItem Selected="True">12th %</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-2 col-xs-12">
                            <asp:DropDownList ID="ddlbtechper" runat="server" CssClass="form-control year-sem">
                                <asp:ListItem Selected="True">B.Tech %</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-2 col-xs-12">
                            <asp:DropDownList ID="ddlback" runat="server" CssClass="form-control year-sem">
                                <asp:ListItem Selected="True">Backs</asp:ListItem>
                                <asp:ListItem>0</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-2 col-xs-12">
                            <asp:Button ID="Button1" runat="server" CssClass="fa-btn btn-1 btn-1e btn btn-lg btn-block" Text="Submit Info" OnClick="Button1_Click" />
                        </div>
                    </div>
                    <div class="col-md-12">
                        <hr />
                    </div>
                    <div class="col-md-12 text-center">
                        <p class="student-name-text">Student Selection For Volunteer / Coordinator</p>
                    </div>
                    <div class="col-md-12 text-left">
                        <p class="student-name-text">Student Selection</p>
                    </div>
                    <div class="col-md-12">
                        <div class="col-md-2 col-xs-12">
                            <asp:DropDownList ID="ddlyear" runat="server" CssClass="form-control year-sem">
                                <asp:ListItem Selected="True">Select Year</asp:ListItem>
                                <asp:ListItem>First</asp:ListItem>
                                <asp:ListItem>Second</asp:ListItem>
                                <asp:ListItem>Third</asp:ListItem>
                                <asp:ListItem>Fourth</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-2 col-xs-12">
                            <asp:Button ID="Button2" runat="server" CssClass="fa-btn btn-1 btn-1e btn btn-lg btn-block" Text="Search Info" OnClick="Button2_Click" />
                        </div>
                        <div class="col-md-6 col-xs-12">
                            <asp:TextBox ID="TextBoxStType" runat="server" CssClass="form-control" placeholder="Student Search "></asp:TextBox>
                        </div>
                        <div class="col-md-2 col-xs-12">
                            <asp:Button ID="Button3" runat="server" CssClass="fa-btn btn-1 btn-1e btn btn-lg btn-block" Text="Search Info" OnClick="Button3_Click" />
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-md-12">
                <hr />
            </div>
        </div>
    </div>
</asp:Content>

