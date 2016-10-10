<%@ Page Title="" Language="C#" MasterPageFile="~/kys.master" AutoEventWireup="true" CodeFile="student.aspx.cs" Inherits="student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server">
        <br />
        <div class="container">
            <div class="col-md-12 col-sm-12">
                <div class="col-md-12 col-sm-12 jumbotron">
                    <div class="col-md-4 col-sm-4">
                        <asp:Image ID="StudentImage" runat="server" CssClass="img-responsive img-rounded profile-img" />
                    </div>
                    <div class="col-md-8 col-sm-8 text-center student-name">
                        <div class="col-md-12">
                            <div class="col-md-6">
                                <p class="student-name-text">Student Name </p>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="TextBoxName" runat="server" CssClass="form-control student-name-text2"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="col-md-6">
                                <p class="student-name-reg">Registration Number</p>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="TextBoxRegistration" runat="server" CssClass="form-control student-name-text2"></asp:TextBox>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="col-md-6">
                                <p class="student-name-reg">Attendance</p>
                            </div>
                            <div class="col-md-6">
                                <asp:TextBox ID="TextBoxAttendance" runat="server" CssClass="form-control student-name-text2"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="col-md-12 col-sm-12 col-xs-12 jumbotron">
                <div class="col-md-12 text-center">
                    <p class="student-name-text">Student Details </p>
                    <hr />
                </div>
                <div class="col-md-12 col-sm-12 col-xs-12 ">
                    <div class="col-md-12">
                        <div class="col-md-6">
                            <div class="col-md-12">
                                <div class="col-md-3">
                                    <p class="student-update-reg">Phone Number</p>
                                </div>
                                <div class="col-md-9">
                                    <asp:TextBox ID="TextBoxSTPhone" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="col-md-12">
                                <div class="col-md-3">
                                    <p class="student-update-reg">Email Address</p>
                                </div>
                                <div class="col-md-9">
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
                                    <asp:TextBox ID="TextBoxDOB" runat="server" CssClass="form-control"></asp:TextBox>
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
                                            <asp:TextBox ID="TextBoxYear" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                        <div class="col-md-6 col-xs-12">
                                            <asp:TextBox ID="TextBoxSem" runat="server" CssClass="form-control"></asp:TextBox>
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
                                    <p class="student-update-reg">Student Result</p>
                                </div>
                                <div class="col-md-9">
                                    <div class="col-md-12">
                                        <div class="col-md-4">
                                            <asp:TextBox ID="TextBoxST10" runat="server" CssClass="form-control"></asp:TextBox>
                                            <p class="superscript"><sup>10th</sup></p>
                                        </div>
                                        <div class="col-md-4">
                                            <asp:TextBox ID="TextBoxST12" runat="server" CssClass="form-control"></asp:TextBox>
                                            <p class="superscript"><sup>12th</sup></p>
                                        </div>
                                        <div class="col-md-4">
                                            <asp:TextBox ID="TextBoxSTBtech" runat="server" CssClass="form-control"></asp:TextBox>
                                            <p class="superscript"><sup>B.Tech</sup></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="col-md-12">
                                <div class="col-md-3">
                                    <p class="student-update-reg">Back's Record</p>
                                </div>
                                <div class="col-md-9">
                                    <div class="col-md-3">
                                        <asp:TextBox ID="TextBoxNoBack" runat="server" CssClass="form-control"></asp:TextBox>
                                        <p class="superscript"><sup>Total Sub</sup></p>
                                    </div>
                                    <div class="col-md-9">
                                        <asp:TextBox ID="TextBoxCodeBack" runat="server" CssClass="form-control"></asp:TextBox>
                                        <p class="superscript"><sup>subject code</sup></p>
                                    </div>
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
                                    <asp:TextBox ID="TextBoxMinority" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="col-md-12">
                                <div class="col-md-3">
                                    <p class="student-update-reg">Category</p>
                                </div>
                                <div class="col-md-9">
                                    <asp:TextBox ID="TextBoxCategory" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="col-md-12">
                                <div class="col-md-3">
                                    <p class="student-update-reg">Belongs</p>
                                </div>
                                <div class="col-md-9">
                                    <asp:TextBox ID="TextBoxBelongs" runat="server" CssClass="form-control"></asp:TextBox>
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
                                    <asp:TextBox ID="TextBoxTech" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
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
                                    <asp:TextBox ID="TextBoxPinCode" runat="server" CssClass="form-control"></asp:TextBox>
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
                                    <asp:TextBox ID="TextBoxFNumber" runat="server" CssClass="form-control"></asp:TextBox>
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
                                    <asp:TextBox ID="TextBoxFSTDO" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="col-md-12">
                                <div class="col-md-3">
                                    <p class="student-update-reg">Father's STD No(Home)</p>
                                </div>
                                <div class="col-md-9">
                                    <asp:TextBox ID="TextBoxFSTDH" runat="server" CssClass="form-control"></asp:TextBox>
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
                                    <asp:TextBox ID="TextBoxFOccu" runat="server" CssClass="form-control"></asp:TextBox>
                                    <p class="superscript"><sup>Fathers Occupation Type</sup></p>
                                </div>
                                <div class="col-md-3 col-xs-12">
                                    <asp:TextBox ID="TextBoxFCpy" runat="server" CssClass="form-control"></asp:TextBox>
                                    <p class="superscript"><sup>Father's Department Name</sup></p>
                                </div>
                                <div class="col-md-3 col-xs-12">
                                    <asp:TextBox ID="TextBoxFDesg" runat="server" CssClass="form-control"></asp:TextBox>
                                    <p class="superscript"><sup>Father's Desgination</sup></p>
                                </div>
                                <div class="col-md-3 col-xs-12">
                                    <asp:TextBox ID="TextBoxFIncom" runat="server" CssClass="form-control"></asp:TextBox>
                                    <p class="superscript"><sup>Father's Income</sup></p>
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
                                    <asp:TextBox ID="TextBoxMNumber" runat="server" CssClass="form-control"></asp:TextBox>
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
                                    <asp:TextBox ID="TextBoxMSTDO" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="col-md-12">
                                <div class="col-md-3">
                                    <p class="student-update-reg">Mother's STD No(Home)</p>
                                </div>
                                <div class="col-md-9">
                                    <asp:TextBox ID="TextBoxMSTDH" runat="server" CssClass="form-control"></asp:TextBox>
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
                                    <asp:TextBox ID="TextBoxMOccu" runat="server" CssClass="form-control"></asp:TextBox>
                                    <p class="superscript"><sup>Mother's Occupation Type</sup></p>
                                </div>
                                <div class="col-md-3 col-xs-12">
                                    <asp:TextBox ID="TextBoxMCpy" runat="server" CssClass="form-control"></asp:TextBox>
                                    <p class="superscript"><sup>Mother's Department Name</sup></p>
                                </div>
                                <div class="col-md-3 col-xs-12">
                                    <asp:TextBox ID="TextBoxMDesg" runat="server" CssClass="form-control"></asp:TextBox>
                                    <p class="superscript"><sup>Mother's Desgination</sup></p>
                                </div>
                                <div class="col-md-3 col-xs-12">
                                    <asp:TextBox ID="TextBoxMIncom" runat="server" CssClass="form-control"></asp:TextBox>
                                    <p class="superscript"><sup>Mother's Income</sup></p>
                                </div>
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
                                <asp:TextBox ID="TextBoxLGNumber" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Gaurdian's STD No(Office)</p>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TextBoxLGSTDO" runat="server" CssClass="form-control"></asp:TextBox>
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
                                <asp:TextBox ID="TextBoxLGSTDH" runat="server" CssClass="form-control"></asp:TextBox>
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
                                <asp:TextBox ID="TextBoxLGOccu" runat="server" CssClass="form-control"></asp:TextBox>
                                <p class="superscript"><sup>Gaurdian's Occupation Type</sup></p>
                            </div>
                            <div class="col-md-3 col-xs-12">
                                <asp:TextBox ID="TextBoxLGCpy" runat="server" CssClass="form-control"></asp:TextBox>
                                <p class="superscript"><sup>Gaurdian's Department Name</sup></p>
                            </div>
                            <div class="col-md-3 col-xs-12">
                                <asp:TextBox ID="TextBoxLGDesg" runat="server" CssClass="form-control"></asp:TextBox>
                                <p class="superscript"><sup>Gaurdian's Desgination</sup></p>
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
                                <asp:TextBox ID="TextBoxResidentType" runat="server" CssClass="form-control"></asp:TextBox>
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
                                <asp:TextBox ID="TextBoxCollegeTransport" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Blood Group</p>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TextBoxIBloodGroup" runat="server" CssClass="form-control"></asp:TextBox>
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
                                <asp:TextBox ID="TextBoxHostel" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3"></div>
                    <div class="col-md-5"></div>
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
            </div>
            <div class="col-md-12 ">
                <div class="col-md-6"></div>
                <div class="col-md-3 text-right">
                    <a href="http://www.poornima.org/internal-results/" class="fa-btn btn-1 btn-1e">Result</a>
                </div>
                <div class="col-md-3 text-right">
                    <asp:Button ID="ButtonInfo" runat="server" CssClass="fa-btn btn-1 btn-1e" Text="Update Info" OnClick="ButtonInfo_Click" />
                </div>
            </div>
        </div>
    </form>
</asp:Content>

