<%@ Page Title="" Language="C#" MasterPageFile="~/kys.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="Server">
    <script type="text/javascript">
        function buttonmsg() {
            alert('To use any of the zone you need to login first');
        }
    </script>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="slider_bg">
        <!-- start slider -->
        <div class="container">
            <div id="da-slider" class="da-slider text-center">
                <div class="da-slide">
                    <h2>Know Your Student</h2>
                    <p>An initiative to<span class="hide_text"> know the information of student of the department.</span></p>
                </div>
                <div class="da-slide">
                    <h2>Student Zone</h2>
                    <p>To show student<span class="hide_text"> an overview of their performance and show their attendance update.</span></p>
                </div>
                <div class="da-slide">
                    <h2>Tutor Zone</h2>
                    <p>Tutor can check <span class="hide_text">the overall performance of the student as well as of whole class.</span></p>
                </div>
                <div class="da-slide">
                    <h2>Placement Zone</h2>
                    <p>Placement cell can check the <span class="hide_text">student and call them according to their requirement.</span></p>
                </div>
            </div>
        </div>
    </div>
    <!-- end slider -->
    <!-- search bar -->
    <div class="container">
        <div class="col-md-12">
            <div class="">
                <!-- start main -->
                <div class="main row">
                    <div class="col-md-4 images_1_of_4 text-center">
                        <span class="bg">
                            <img src="img/student.png" class="img-responsive" /></span>
                        <h4><a href="#">Students</a></h4>
                        <p class="para"></p>
                        <input type="button" class="fa-btn btn-1 btn-1e custbtn" value="Go" onclick="buttonmsg()" />
                    </div>
                    <div class="col-md-4 images_1_of_4 bg1 text-center">
                        <span class="bg">
                            <img src="img/tutor.png" class="img-responsive" /></span>
                        <h4><a href="#">Tutor</a></h4>
                        <p class="para"></p>
                        <input type="button" class="fa-btn btn-1 btn-1e custbtn" value="Go" onclick="buttonmsg()" />
                    </div>
                    <div class="col-md-4 images_1_of_4 bg1 text-center">
                        <span class="bg">
                            <img src="img/placement.png" class="img-responsive" /></span>
                        <h4><a href="#">Placement</a></h4>
                        <p class="para"></p>
                        <input type="button" class="fa-btn btn-1 btn-1e custbtn" value="Go" onclick="buttonmsg()" />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end main -->
</asp:Content>

