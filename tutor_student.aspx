<%@ Page Title="" Language="C#" MasterPageFile="~/kys.master" AutoEventWireup="true" CodeFile="tutor_student.aspx.cs" Inherits="tutor_student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form1" runat="server">
        <div class="container text-right">
            <asp:Label ID="LabelName" runat="server" CssClass="tutor-name-text"></asp:Label>
        </div>
        <div class="container">
            <div class="jumbotron text-center page-header">
                <p class="student-name-text">Student Detail</p>
                <hr />
            </div>
        </div>
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
                <div class="col-md-12">
                    <div class="col-md-6">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Phone Number</p>
                            </div>
                            <div class="col-md-9">
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
                                        <asp:TextBox ID="TextBoxYear" runat="server" CssClass="form-control"></asp:TextBox>>
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
                                <p class="student-update-reg">College Name</p>
                            </div>
                            <div class="col-md-9">
                                <div class="col-md-12">
                                    <asp:TextBox ID="TextBoxCollege" runat="server" CssClass="form-control"></asp:TextBox>
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
                                    <asp:TextBox ID="TextBoxBranch" runat="server" CssClass="form-control"></asp:TextBox>
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
                                <asp:TextBox ID="TextBoxCat" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Belongs</p>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TextBoxCitizen" runat="server" CssClass="form-control"></asp:TextBox>
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
                                <asp:TextBox ID="TextBoxFJob" runat="server" CssClass="form-control"></asp:TextBox>
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
                                <asp:TextBox ID="TextBoxMNumber" runat="server" CssClass="form-control" MaxLength="11"></asp:TextBox>
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
                                <asp:TextBox ID="TextBoxMJob" runat="server" CssClass="form-control"></asp:TextBox>
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
                                <asp:TextBox ID="TextBoxLGJob" runat="server" CssClass="form-control"></asp:TextBox>
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
                                <asp:TextBox ID="TextBoxLiving" runat="server" CssClass="form-control"></asp:TextBox>
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
                                <asp:TextBox ID="TextBoxTransport" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="col-md-12">
                            <div class="col-md-3">
                                <p class="student-update-reg">Blood Group</p>
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="TextBoxBlood" runat="server" CssClass="form-control"></asp:TextBox>
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
            </div>
        </div>
    </form>
</asp:Content>

