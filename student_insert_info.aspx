<%@ Page Title="" Language="C#" MasterPageFile="~/kys.master" AutoEventWireup="true" CodeFile="student_insert_info.aspx.cs" Inherits="student_insert_info" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

    <script type="text/javascript">
        function PopulateDays() {
            var ddlMonth = document.getElementById("<%=ddlMonth.ClientID%>");
            var ddlYear = document.getElementById("<%=ddlYear.ClientID%>");
            var ddlDay = document.getElementById("<%=ddlDay.ClientID%>");
            var y = ddlYear.options[ddlYear.selectedIndex].value;
            var m = ddlMonth.options[ddlMonth.selectedIndex].value != 0;
            if (ddlMonth.options[ddlMonth.selectedIndex].value != 0 && ddlYear.options[ddlYear.selectedIndex].value != 0) {
                var dayCount = 32 - new Date(ddlYear.options[ddlYear.selectedIndex].value, ddlMonth.options[ddlMonth.selectedIndex].value - 1, 32).getDate();
                ddlDay.options.length = 0;
                AddOption(ddlDay, "DD", "0");
                for (var i = 1; i <= dayCount; i++) {
                    AddOption(ddlDay, i, i);
                }
            }
        }

        function AddOption(ddl, text, value) {
            var opt = document.createElement("OPTION");
            opt.text = text;
            opt.value = value;
            ddl.options.add(opt);
        }

        function Validate(sender, args) {
            var ddlMonth = document.getElementById("<%=ddlMonth.ClientID%>");
            var ddlYear = document.getElementById("<%=ddlYear.ClientID%>");
            var ddlDay = document.getElementById("<%=ddlDay.ClientID%>");
            args.IsValid = (ddlDay.selectedIndex != 0 && ddlMonth.selectedIndex != 0 && ddlYear.selectedIndex != 0)
        }
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="jumbotron text-center page-header">
            <p class="student-name-text">Student Register Information</p>
            <hr />
        </div>
    </div>
    <div class="container">
        <form id="form1" runat="server">
            <div class="col-lg-12 col-md-12 jumbotron student-update-reg">
                <div class="col-md-12 text-left">
                    <p class="student-update-reg">Student Information</p>
                    <hr />
                </div>
                <div class="col-md-12">
                    <div class="col-md-6">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Name</p>
                            </div>
                            <div class="col-md-9">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required Field " ControlToValidate="TextBoxName"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="TextBoxName" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Registration Number</p>
                            </div>
                            <div class="col-md-9">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxRegistration" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="TextBoxRegistration" runat="server" CssClass="form-control" MaxLength="14"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="col-md-6">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Phone Number</p>
                            </div>
                            <div class="col-md-9">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBoxSTPhone" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxSTPhone" ErrorMessage="invalid number" ValidationExpression="^(\+91[\-\s]?)?[0]?(91)?[789]\d{9}$"></asp:RegularExpressionValidator>
                                <asp:TextBox ID="TextBoxSTPhone" runat="server" CssClass="form-control" MaxLength="11"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Email Address</p>
                            </div>
                            <div class="col-md-9">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxSTMail" ErrorMessage="Required Firld"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxSTMail" ErrorMessage="invalid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                <asp:TextBox ID="TextBoxSTMail" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="col-md-6">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Date Of Birth</p>
                            </div>
                            <div class="col-md-9">
                                <div class="col-md-4">
                                    <asp:DropDownList ID="ddlDay" runat="server" onchange="PopulateDays()" CssClass="form-control " />
                                </div>
                                <div class="col-md-4">
                                    <asp:DropDownList ID="ddlMonth" runat="server" onchange="PopulateMonth()" CssClass="form-control " />
                                </div>
                                <div class="col-md-4">
                                    <asp:DropDownList ID="ddlYear" runat="server" onchange="PopulateYear()" CssClass="form-control " />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Year / Semester</p>
                            </div>
                            <div class="col-md-9">
                                <div class="col-md-12">
                                    <div class="col-md-6 col-xs-12">
                                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True"
                                            OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="form-control form-control-drop year-sem">
                                        </asp:DropDownList>
                                    </div>
                                    <div class="col-md-6 col-xs-12">
                                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" CssClass="form-control year-sem">
                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="col-md-6">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">College Name</p>
                            </div>
                            <div class="col-md-9">
                                <div class="col-md-12">
                                    <asp:DropDownList ID="DropDownListCollege" runat="server" CssClass="form-control year-sem">
                                        <asp:ListItem Selected="True">College</asp:ListItem>
                                        <asp:ListItem>PIET</asp:ListItem>
                                        <asp:ListItem>PCE</asp:ListItem>
                                        <asp:ListItem>PGI</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">College Branch</p>
                            </div>
                            <div class="col-md-9">
                                <div class="col-md-12">
                                    <asp:DropDownList ID="DropDownListBranch" runat="server" CssClass="form-control year-sem">
                                        <asp:ListItem Selected="True">Branch</asp:ListItem>
                                        <asp:ListItem>Computer Engineering</asp:ListItem>
                                        <asp:ListItem>Electronics & Communication Engineering</asp:ListItem>
                                        <asp:ListItem>Electrical Engineering</asp:ListItem>
                                        <asp:ListItem>Mechanical Engineering</asp:ListItem>
                                        <asp:ListItem>Civil Engineering</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="col-md-4">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">BTech Aggre</p>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TextBoxBtechAgree" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Total Back</p>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TextBoxTotalBack" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Back Subject</p>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TextBoxBackSubject" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="col-md-4">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Place of Birth</p>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TextBoxPOB" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Religion</p>
                            </div>
                            <div class="col-md-9">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBoxReligion" ErrorMessage="Required  Field"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="TextBoxReligion" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Caste</p>
                            </div>
                            <div class="col-md-9">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBoxCaste" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="TextBoxCaste" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="col-md-4">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Minority</p>
                            </div>
                            <div class="col-md-9">
                                <asp:DropDownList ID="DropDownListMinority" runat="server" CssClass="form-control year-sem">
                                    <asp:ListItem Selected="True">Select</asp:ListItem>
                                    <asp:ListItem>Yes</asp:ListItem>
                                    <asp:ListItem>No</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Category</p>
                            </div>
                            <div class="col-md-9">
                                <asp:DropDownList ID="DropDownListCat" runat="server" CssClass="form-control year-sem">
                                    <asp:ListItem Selected="True">Select</asp:ListItem>
                                    <asp:ListItem>General</asp:ListItem>
                                    <asp:ListItem>SC</asp:ListItem>
                                    <asp:ListItem>ST</asp:ListItem>
                                    <asp:ListItem>OBC</asp:ListItem>
                                    <asp:ListItem>SBC</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Belongs</p>
                            </div>
                            <div class="col-md-9">
                                <asp:DropDownList ID="DropDownListBelongs" runat="server" CssClass="form-control year-sem">
                                    <asp:ListItem Selected="True">Select</asp:ListItem>
                                    <asp:ListItem>Rural Area</asp:ListItem>
                                    <asp:ListItem>Urban Area</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="col-md-6">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Hobbies</p>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TextBoxHobbies" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Additional Cources</p>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TextBoxAdditional" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="col-md-6">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Student's Photo</p>
                            </div>
                            <div class="col-md-9">
                                <asp:FileUpload ID="imgUpload" runat="server" CssClass=""></asp:FileUpload>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="col-md-12 text-left">
                        <p class="student-update-reg">Parent's Address</p>
                    </div>
                    <div class="col-md-8">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">House name, number, street,colony</p>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TextBoxAddressLine" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Police Station</p>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TextBoxAddressPolice" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="col-md-4">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Distt.</p>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TextBoxDistt" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Pin Code</p>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TextBoxPinCode" runat="server" CssClass="form-control" MaxLength="6"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">State</p>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TextBoxState" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12 text-left">
                    <p class="student-update-reg">Details of Parents</p>
                    <hr />
                </div>
                <div class="col-md-12">
                    <div class="col-md-6">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Father's Name</p>
                            </div>
                            <div class="col-md-9">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxFName" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="TextBoxFName" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Father's Number</p>
                            </div>
                            <div class="col-md-9">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxFNumber" ErrorMessage="Required  Field"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBoxFNumber" ErrorMessage="invalid number" ValidationExpression="^(\+91[\-\s]?)?[0]?(91)?[789]\d{9}$"></asp:RegularExpressionValidator>
                                <asp:TextBox ID="TextBoxFNumber" runat="server" CssClass="form-control" MaxLength="11"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="col-md-6">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Father's STD No(Office)</p>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TextBoxFSTDO" runat="server" CssClass="form-control" MaxLength="11"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Father's STD No(Home)</p>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TextBoxFSTDH" runat="server" CssClass="form-control" MaxLength="11"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="col-md-6">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Father's Email</p>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TextBoxFMail" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Father's Qualification</p>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TextBoxFQuali" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="col-md-3">
                        <div class="col-md-12">
                            <p class="student-update-reg">&nbsp;&nbsp;&nbsp;Father's Occupation</p>
                        </div>
                    </div>
                    <div class="col-md-9">
                        <div class="col-md-12">
                            <div class="col-md-3 col-xs-12">
                                <asp:DropDownList ID="DropdownFJobType" runat="server" CssClass="form-control year-sem">
                                    <asp:ListItem Selected="True">Occupation</asp:ListItem>
                                    <asp:ListItem>Govt. Job (Central)</asp:ListItem>
                                    <asp:ListItem>Govt. Job (State)</asp:ListItem>
                                    <asp:ListItem>Defence</asp:ListItem>
                                    <asp:ListItem>Private</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-3 col-xs-12">
                                <asp:TextBox ID="TextBoxFCpy" runat="server" CssClass="form-control" placeholder="Department"></asp:TextBox>
                            </div>
                            <div class="col-md-3 col-xs-12">
                                <asp:TextBox ID="TextBoxFDesg" runat="server" CssClass="form-control" placeholder="Desgination"></asp:TextBox>
                            </div>
                            <div class="col-md-3 col-xs-12">
                                <asp:TextBox ID="TextBoxFIncom" runat="server" CssClass="form-control" placeholder="Income"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <hr />
                </div>
                <div class="col-md-12">
                    <div class="col-md-6">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Mother's Name</p>
                            </div>
                            <div class="col-md-9">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBoxMName" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                <asp:TextBox ID="TextBoxMName" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Mother's Number</p>
                            </div>
                            <div class="col-md-9">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBoxMNumber" ErrorMessage="Required Field"></asp:RequiredFieldValidator>
                                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBoxMNumber" ErrorMessage="invalid number" ValidationExpression="^(\+91[\-\s]?)?[0]?(91)?[789]\d{9}$"></asp:RegularExpressionValidator>
                                &nbsp;<asp:TextBox ID="TextBoxMNumber" runat="server" CssClass="form-control" MaxLength="11"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="col-md-6">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Mother's STD No(Office)</p>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TextBoxMSTDO" runat="server" CssClass="form-control" MaxLength="11"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Mother's STD No(Home)</p>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TextBoxMSTDH" runat="server" CssClass="form-control" MaxLength="11"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="col-md-6">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Mother's Email</p>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TextBoxMMail" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Mother's Qualification</p>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TextBoxMQuali" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="col-md-3">
                        <div class="col-md-12">
                            <p class="student-update-reg">&nbsp;&nbsp;&nbsp;Mother's Occupation</p>
                        </div>
                    </div>
                    <div class="col-md-9">
                        <div class="col-md-12">
                            <div class="col-md-3 col-xs-12">
                                <asp:DropDownList ID="DropdownMJobType" runat="server" CssClass="form-control year-sem">
                                    <asp:ListItem Selected="True">Occupation</asp:ListItem>
                                    <asp:ListItem>Govt. Job (Central)</asp:ListItem>
                                    <asp:ListItem>Govt. Job (State)</asp:ListItem>
                                    <asp:ListItem>Defence</asp:ListItem>
                                    <asp:ListItem>Private</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-3 col-xs-12">
                                <asp:TextBox ID="TextBoxMCpy" runat="server" CssClass="form-control" placeholder="Department"></asp:TextBox>
                            </div>
                            <div class="col-md-3 col-xs-12">
                                <asp:TextBox ID="TextBoxMDesg" runat="server" CssClass="form-control" placeholder="Desgination"></asp:TextBox>
                            </div>
                            <div class="col-md-3 col-xs-12">
                                <asp:TextBox ID="TextBoxMIncom" runat="server" CssClass="form-control" placeholder="Income"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <p class="student-update-reg">Local Gaurdian / Reference in Jaipur</p>
                    <hr />
                </div>
                <div class="col-md-12">
                    <div class="col-md-6">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Gaurdian's Name</p>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TextBoxLGName" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Relationship</p>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TextBoxLGRelation" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="col-md-6">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Gaurdian's Number</p>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TextBoxLGNumber" runat="server" CssClass="form-control" MaxLength="11"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Gaurdian's STD No(Office)</p>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TextBoxLGSTDO" runat="server" CssClass="form-control" MaxLength="11"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="col-md-6">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Gaurdian's STD No(Home)</p>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TextBoxLGSTDH" runat="server" CssClass="form-control" MaxLength="11"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Gaurdian's Mail</p>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TextBoxLGMail" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="col-md-3">
                        <div class="col-md-12">
                            <p class="student-update-reg">&nbsp;&nbsp;&nbsp;Gaurdian's Occupation</p>
                        </div>
                    </div>
                    <div class="col-md-9">
                        <div class="col-md-12">
                            <div class="col-md-3 col-xs-12">
                                <asp:DropDownList ID="DropdownLGJobType" runat="server" CssClass="form-control year-sem">
                                    <asp:ListItem Selected="True">Occupation</asp:ListItem>
                                    <asp:ListItem>Govt. Job (Central)</asp:ListItem>
                                    <asp:ListItem>Govt. Job (State)</asp:ListItem>
                                    <asp:ListItem>Defence</asp:ListItem>
                                    <asp:ListItem>Private</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-3 col-xs-12">
                                <asp:TextBox ID="TextBoxLGCpy" runat="server" CssClass="form-control" placeholder="Department"></asp:TextBox>
                            </div>
                            <div class="col-md-3 col-xs-12">
                                <asp:TextBox ID="TextBoxLGDesg" runat="server" CssClass="form-control" placeholder="Desgination"></asp:TextBox>
                            </div>
                            <div class="col-md-3 col-xs-12"></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <p class="student-update-reg">Academic Information</p>
                    <hr />
                </div>
                <div class="col-md-12">
                    <div class="col-md-12">
                        <p class="student-update-reg">Secondary</p>
                    </div>
                    <div class="col-md-12">
                        <div class="col-md-4">
                            <div class="col-md-12">
                                <div class="col-md-3">
                                    <p class="student-update-reg">Board</p>
                                </div>
                                <div class="col-md-9">
                                    <asp:TextBox ID="TextBoxSecBoard" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="col-md-12">
                                <div class="col-md-3">
                                    <p class="student-update-reg">Medium</p>
                                </div>
                                <div class="col-md-9">
                                    <asp:TextBox ID="TextBoxSecMedium" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="col-md-12">
                                <div class="col-md-3">
                                    <p class="student-update-reg">Year of Passing</p>
                                </div>
                                <div class="col-md-9">
                                    <asp:TextBox ID="TextBoxSecYOP" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="col-md-8">
                            <div class="col-md-12">
                                <div class="col-md-3">
                                    <p class="student-update-reg">Name Of School</p>
                                </div>
                                <div class="col-md-9">
                                    <asp:TextBox ID="TextBoxSecSchool" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="col-md-12">
                                <div class="col-md-3">
                                    <p class="student-update-reg">City</p>
                                </div>
                                <div class="col-md-9">
                                    <asp:TextBox ID="TextBoxSecCity" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="col-md-4">
                            <div class="col-md-12">
                                <div class="col-md-3">
                                    <p class="student-update-reg">Total Max Marks</p>
                                </div>
                                <div class="col-md-9">
                                    <asp:TextBox ID="TextBoxSecTotalMarks" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="col-md-12">
                                <div class="col-md-3">
                                    <p class="student-update-reg">Total Marks Obtained</p>
                                </div>
                                <div class="col-md-9">
                                    <asp:TextBox ID="TextBoxSecObtMarks" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="col-md-12">
                                <div class="col-md-3">
                                    <p class="student-update-reg">Perc / CGPA</p>
                                </div>
                                <div class="col-md-9">
                                    <asp:TextBox ID="TextBoxSecPerc" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="col-md-12">
                        <p class="student-update-reg">Senior Secondary</p>
                    </div>
                    <div class="col-md-12">
                        <div class="col-md-4">
                            <div class="col-md-12">
                                <div class="col-md-3">
                                    <p class="student-update-reg">Board</p>
                                </div>
                                <div class="col-md-9">
                                    <asp:TextBox ID="TextBoxSrSecBoard" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="col-md-12">
                                <div class="col-md-3">
                                    <p class="student-update-reg">Medium</p>
                                </div>
                                <div class="col-md-9">
                                    <asp:TextBox ID="TextBoxSrSecMedium" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="col-md-12">
                                <div class="col-md-3">
                                    <p class="student-update-reg">Year of Passing</p>
                                </div>
                                <div class="col-md-9">
                                    <asp:TextBox ID="TextBoxSrSecYOP" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="col-md-8">
                            <div class="col-md-12">
                                <div class="col-md-3">
                                    <p class="student-update-reg">Name Of School</p>
                                </div>
                                <div class="col-md-9">
                                    <asp:TextBox ID="TextBoxSrSecSchool" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="col-md-12">
                                <div class="col-md-3">
                                    <p class="student-update-reg">City</p>
                                </div>
                                <div class="col-md-9">
                                    <asp:TextBox ID="TextBoxSrSecCity" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="col-md-4">
                            <div class="col-md-12">
                                <div class="col-md-3">
                                    <p class="student-update-reg">Total Max Marks</p>
                                </div>
                                <div class="col-md-9">
                                    <asp:TextBox ID="TextBoxSrSecTotalMarks" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="col-md-12">
                                <div class="col-md-3">
                                    <p class="student-update-reg">Total Marks Obtained</p>
                                </div>
                                <div class="col-md-9">
                                    <asp:TextBox ID="TextBoxSrSecObtMarks" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="col-md-12">
                                <div class="col-md-3">
                                    <p class="student-update-reg">Perc / CGPA</p>
                                </div>
                                <div class="col-md-9">
                                    <asp:TextBox ID="TextBoxSrSecPerc" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="col-md-12">
                        <p class="student-update-reg">Diploma (if applicable)</p>
                    </div>
                    <div class="col-md-12">
                        <div class="col-md-4">
                            <div class="col-md-12">
                                <div class="col-md-3">
                                    <p class="student-update-reg">Board</p>
                                </div>
                                <div class="col-md-9">
                                    <asp:TextBox ID="TextBoxDipBoard" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="col-md-12">
                                <div class="col-md-3">
                                    <p class="student-update-reg">Medium</p>
                                </div>
                                <div class="col-md-9">
                                    <asp:TextBox ID="TextBoxDipMedium" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="col-md-12">
                                <div class="col-md-3">
                                    <p class="student-update-reg">Year of Passing</p>
                                </div>
                                <div class="col-md-9">
                                    <asp:TextBox ID="TextBoxDipYOP" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="col-md-8">
                            <div class="col-md-12">
                                <div class="col-md-3">
                                    <p class="student-update-reg">Name Of School</p>
                                </div>
                                <div class="col-md-9">
                                    <asp:TextBox ID="TextBoxDipSchool" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="col-md-12">
                                <div class="col-md-3">
                                    <p class="student-update-reg">City</p>
                                </div>
                                <div class="col-md-9">
                                    <asp:TextBox ID="TextBoxDipCity" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="col-md-4">
                            <div class="col-md-12">
                                <div class="col-md-3">
                                    <p class="student-update-reg">Total Max Marks</p>
                                </div>
                                <div class="col-md-9">
                                    <asp:TextBox ID="TextBoxDipTotalMarks" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="col-md-12">
                                <div class="col-md-3">
                                    <p class="student-update-reg">Total Marks Obtained</p>
                                </div>
                                <div class="col-md-9">
                                    <asp:TextBox ID="TextBoxDipObtMarks" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="col-md-12">
                                <div class="col-md-3">
                                    <p class="student-update-reg">Perc / CGPA</p>
                                </div>
                                <div class="col-md-9">
                                    <asp:TextBox ID="TextBoxDipPerc" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <p class="student-update-reg">Other Information</p>
                    <hr />
                </div>
                <div class="col-md-12">
                    <div class="col-md-4">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Resident Type</p>
                            </div>
                            <div class="col-md-9">
                                <asp:DropDownList ID="DropdownResidentType" runat="server" CssClass="form-control year-sem">
                                    <asp:ListItem Selected="True">Select</asp:ListItem>
                                    <asp:ListItem>Local Resident</asp:ListItem>
                                    <asp:ListItem>Hosteller</asp:ListItem>
                                    <asp:ListItem>Private Hostel</asp:ListItem>
                                    <asp:ListItem>Rented</asp:ListItem>
                                    <asp:ListItem>Paying Guest</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Resident Address (Non-Hosteller)</p>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TextBoxResident" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="col-md-4">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">College Transport</p>
                            </div>
                            <div class="col-md-9">
                                <asp:DropDownList ID="DropdownCollegeTransport" runat="server" CssClass="form-control year-sem">
                                    <asp:ListItem Selected="True">Select</asp:ListItem>
                                    <asp:ListItem>Yes</asp:ListItem>
                                    <asp:ListItem>No</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Blood Group</p>
                            </div>
                            <div class="col-md-9">
                                <asp:DropDownList ID="DropdownBloodGroup" runat="server" CssClass="form-control year-sem">
                                    <asp:ListItem Selected="True">Select</asp:ListItem>
                                    <asp:ListItem>A +ve</asp:ListItem>
                                    <asp:ListItem>B +ve</asp:ListItem>
                                    <asp:ListItem>O +ve</asp:ListItem>
                                    <asp:ListItem>AB +ve</asp:ListItem>
                                    <asp:ListItem>A -ve</asp:ListItem>
                                    <asp:ListItem>B -ve</asp:ListItem>
                                    <asp:ListItem>O -ve</asp:ListItem>
                                    <asp:ListItem>AB -ve</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-5">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Any Illness</p>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TextBoxIllness" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="col-md-4">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Hostel</p>
                            </div>
                            <div class="col-md-9">
                                <asp:DropDownList ID="DropDownListHostel" runat="server" CssClass="form-control year-sem">
                                    <asp:ListItem Selected="True">Select</asp:ListItem>
                                    <asp:ListItem>Yes</asp:ListItem>
                                    <asp:ListItem>No</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8">
                    </div>
                </div>
                <div class="col-md-12">
                    <p class="student-update-reg">Qualification For Admission</p>
                    <hr />
                </div>
                <div class="col-md-12">
                    <div class="col-md-6">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">JEE Roll Number</p>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TextBoxJEERoll" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">JEE Marks Obtained</p>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TextBoxJEEMarks" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="col-md-12">
                        <div class="col-md-2">
                            <p class="student-update-reg">Physics</p>
                        </div>
                        <div class="col-md-10">
                            <div class="col-md-12">
                                <div class="col-md-3">
                                    <p class="student-update-reg">Max Marks</p>
                                </div>
                                <div class="col-md-3">
                                    <asp:TextBox ID="TextBoxPhyMaxMarks" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-md-3">
                                    <p class="student-update-reg">Obtained Marks</p>
                                </div>
                                <div class="col-md-3">
                                    <asp:TextBox ID="TextBoxPhyObtMarks" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="col-md-2">
                            <p class="student-update-reg">Maths</p>
                        </div>
                        <div class="col-md-10">
                            <div class="col-md-12">
                                <div class="col-md-3">
                                    <p class="student-update-reg">Max Marks</p>
                                </div>
                                <div class="col-md-3">
                                    <asp:TextBox ID="TextBoxMathMaxMarks" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-md-3">
                                    <p class="student-update-reg">Obtained Marks</p>
                                </div>
                                <div class="col-md-3">
                                    <asp:TextBox ID="TextBoxMathObtMarks" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <div class="col-md-2">
                            <p class="student-update-reg">Chemistry /Biology /Comp. Science /Biotech</p>
                        </div>
                        <div class="col-md-10">
                            <div class="col-md-12">
                                <div class="col-md-3">
                                    <p class="student-update-reg">Max Marks</p>
                                </div>
                                <div class="col-md-3">
                                    <asp:TextBox ID="TextBoxThirdSubMaxMarks" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-md-3">
                                    <p class="student-update-reg">Obtained Marks</p>
                                </div>
                                <div class="col-md-3">
                                    <asp:TextBox ID="TextBoxThirdSubObtMarks" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <hr />
                </div>
                <div class="col-md-12 text-center">
                    <div class="col-md-4"></div>
                    <div class="col-md-4">
                        <asp:Button ID="Button1" runat="server" CssClass="fa-btn btn-1 btn-1e btn btn-lg btn-block" Text="Submit Info" OnClick="Button1_Click" />
                    </div>
                    <div class="col-md-4">
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </div>
                </div>
            </div>
        </form>
    </div>
</asp:Content>
