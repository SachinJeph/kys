<%@ Page Title="" Language="C#" MasterPageFile="~/kys.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <script language="javascript" type="text/javascript">
        var OAUTHURL = 'https://accounts.google.com/o/oauth2/auth?';
        var VALIDURL = 'https://www.googleapis.com/oauth2/v1/tokeninfo?access_token=';
        var SCOPE = 'https://www.googleapis.com/auth/userinfo.profile https://www.googleapis.com/auth/userinfo.email';
        var CLIENTID = '173801523856-9dbsmhuo7j19v2at3io0m93lun542cla.apps.googleusercontent.com';
        var REDIRECT = 'http://localhost:5762/login.aspx';
        var LOGOUT = 'http://accounts.google.com/Logout';
        var TYPE = 'token';
        var _url = OAUTHURL + 'scope=' + SCOPE + '&client_id=' + CLIENTID + '&redirect_uri=' + REDIRECT + '&response_type=' + TYPE;
        var acToken;
        var tokenType;
        var expiresIn;
        var user;
        var loggedIn = false;
        function login() {

            var win = window.open(_url, "windowname1", 'width=800, height=600');
            var pollTimer = window.setInterval(function () {
                try {
                    console.log(win.document.URL);
                    if (win.document.URL.indexOf(REDIRECT) != -1) {
                        window.clearInterval(pollTimer);
                        var url = win.document.URL;
                        acToken = gup(url, 'access_token');
                        tokenType = gup(url, 'token_type');
                        expiresIn = gup(url, 'expires_in');
                        win.close();
                        // alert("hiii");
                        validateToken(acToken);
                    }
                }
                catch (e) {

                }
            }, 500);
        }
        function validateToken(token) {
            $.ajax(
			{
			    url: VALIDURL + token,
			    data: null,
			    success: function (responseText) {
			        getUserInfo();
			        loggedIn = true;
			        $('#loginText').hide();
			        $('#logoutText').show();
			    },
			    dataType: "jsonp"
			});
        }
        function getUserInfo() {
            $.ajax({
                url: 'https://www.googleapis.com/oauth2/v1/userinfo?access_token=' + acToken,
                data: null,
                success: function (resp) {
                    user = resp;
                    console.log(user);
                    window.location = "redirect.aspx?email=" + user.email + "&domain=" + user.hd;
                },
                dataType: "jsonp"
            });
        }
        //credits: http://www.netlobo.com/url_query_string_javascript.html  

        function gup(url, name) {
            namename = name.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
            var regexS = "[\\#&]" + name + "=([^&#]*)";
            var regex = new RegExp(regexS);
            var results = regex.exec(url);
            if (results == null)
                return "";
            else
                return results[1];
        }
        function startLogoutPolling() {
            $('#loginText').show();
            $('#logoutText').hide();
            loggedIn = false;
            $('#uName').val('Welcome ');
            $('#imgHolder').attr('src', 'none.jpg');
        }



    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="col-md-12 text-center">
            <p class="student-name-text">Login</p>
            <hr />
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-md-4 col-md-offset-4">
                <h1 class="text-center login-title">Sign in here to continue to KYS</h1>
                <div class="account-wall">
                    <img src="img/login.png" class="profile-img img-responsive" />
                    <form id="form1" runat="server" class="form-signin">
						<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextEmail" ErrorMessage="only use poornima mail id" ValidationExpression="^\w+([-+.']\w+)*@poornima.org$"></asp:RegularExpressionValidator>
                        <asp:TextBox ID="TextEmail" runat="server" placeholder="Email" CssClass="form-control"></asp:TextBox>
                        <asp:TextBox ID="TextPassword" runat="server" placeholder="Password" CssClass="form-control" TextMode="Password"></asp:TextBox>
                        <br />
                        <div class="col-md-12">
                            <div class="col-md-6">
                                <asp:Button ID="Button1" runat="server" CssClass="fa-btn btn-1 btn-1e btn btn-lg btn-block" Text="Sign In" OnClick="Button1_Click" />
                            </div>
                            <div class="col-md-6">
                                <asp:Button ID="Button2" runat="server" CssClass="fa-btn btn-1 btn-1e btn btn-lg btn-block" Text="Register" OnClick="Button2_Click" />
                            </div>
                        </div>
                        <div class="col-md-12">
                            <h1 class="text-center login-title">OR</h1>
                        </div>
                        <div class="col-md-12">
                            <a href="#">
                                <img border="0" alt="Login with Google" onclick='login();' id="loginText" src="img/google.png" class="img-responsive">

                                <a href="#" temp_href="#" style="display: none" id="logoutText" target='myIFrame' onclick="myIFrame.location='https://www.google.com/accounts/Logout'; startLogoutPolling();return false;">Click here to logout </a>
                                <iframe name='myIFrame' id="myIFrame" style='display: none'></iframe>
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

