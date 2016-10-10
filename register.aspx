<%@ Page Title="" Language="C#" MasterPageFile="~/kys.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container">
        <div class="col-md-12 text-center">
            <p class="student-name-text">Registration Page</p>
            <hr />
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-md-4 col-md-offset-4">
                <h1 class="text-center login-title">Register here for KYS</h1>
                <div class="account-wall">
                    <img src="img/login.png" class="profile-img img-responsive" />
                    <form id="form1" runat="server" class="form-signin">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextEmail" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextEmail" ErrorMessage="only use poornima mail id" ValidationExpression="^\w+([-+.']\w+)*@poornima.org$"></asp:RegularExpressionValidator>
                        <asp:TextBox ID="TextEmail" runat="server" placeholder="Email" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextPassword" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextPassword" ErrorMessage="weak password. must have special character 2 upercase 2 lowercase text and numeric values" ValidationExpression="(?=^.{6,25}$)(?=(?:.*?\d){2})(?=.*[a-z])(?=(?:.*?[A-Z]){2})(?=(?:.*?[!@#$%*()_+^&amp;}{:;?.]){1})(?!.*\s)[0-9a-zA-Z!@#$%*()_+^&amp;]*$"></asp:RegularExpressionValidator>
                        <asp:TextBox ID="TextPassword" runat="server" placeholder="Password" CssClass="form-control" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control ">
                            <asp:ListItem Selected="True">Select Type</asp:ListItem>
                            <asp:ListItem Value="student">student</asp:ListItem>
                            <asp:ListItem Value="faculty">faculty</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <div class="col-md-12">
                            <div class="col-md-3"></div>
                            <div class="col-md-6">
                                <asp:Button ID="btnRegister" runat="server" CssClass="fa-btn btn-1 btn-1e btn btn-lg btn-block" Text="Register" OnClick="btnRegister_Click" />
                            </div>
                            <div class="col-md-3"></div>
                        </div>
                        <a href="#" class="pull-right need-help">Need help? </a>
                        <span class="clearfix"></span>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <br />
</asp:Content>

