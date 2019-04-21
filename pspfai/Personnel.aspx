<%@ Page Title="Public Service Pension Fund: Board" Language="C#" MasterPageFile="~/PSPFAI.Master" AutoEventWireup="true" CodeBehind="Personnel.aspx.cs" Inherits="pspfai.Personnel" %>

<%@ MasterType VirtualPath="~/PSPFAI.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--Page Title-->
    <section class="page-title" style="background: url(Content/Images/pages/pension_page.jpg) no-repeat center;">
        <div class="floatover">
            <div class="container">
                <h2>The <% =subPage %></h2>
                <ul class="title-manu">
                    <li><a href="Home.aspx">home</a></li>
                    <li>| </li>
                    <li><a href="About.aspx">About Us</a></li>
                    <li>| </li>
                    <li class="current"><% =subPage %></li>
                </ul>
            </div>
        </div>
    </section>
    <!--End Page Title-->

    <% if (subPage == "board")
        { %>
    <!--Start tema area-->
    <section class="team-sec">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="sec-title text-center">
                        <a name="team">
                            <h2>Meet Our Board of Directors</h2>
                        </a>
                        <span class="border"></span>
                        <p>
                            Lorem ipsum dolor  amet mi ultricies interdum pede eu vestibulum vulputate maurimtum
                            <br>
                            commod rhoncus consectetuer reduce producet
                        </p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="team-single text-center">
                        <figure>
                            <img src="https://via.placeholder.com/270x300" alt="team">
                        </figure>

                        <div class="text-bottom">
                            <h5>Mrs. Kathleen Rogers</h5>
                            <h6>Chairman</h6>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="team-single text-center">
                        <figure>
                            <img src="https://via.placeholder.com/270x300" alt="team">
                        </figure>
                        <div class="overlay">
                            <ul>
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-skype"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            </ul>
                        </div>
                        <div class="text-bottom">
                            <h5>Mr Timothy A. Hodge</h5>
                            <h6>Member</h6>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="team-single text-center">
                        <figure>
                            <img src="https://via.placeholder.com/270x300" alt="team">
                        </figure>
                        <div class="overlay">
                            <ul>
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-skype"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            </ul>
                        </div>
                        <div class="text-bottom">
                            <h5>Dr. Aidan Harrigan</h5>
                            <h6>Member</h6>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="team-single text-center">
                        <figure>
                            <img src="https://via.placeholder.com/270x300" alt="team">
                        </figure>
                        <div class="overlay">
                            <ul>
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-skype"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            </ul>
                        </div>
                        <div class="text-bottom">
                            <h5>Ms. Emma Furguson</h5>
                            <h6>Member</h6>
                        </div>
                    </div>
                </div>
            </div>
            </div>
        <div class="clearfix"><</div>
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="team-single text-center">
                        <figure>
                            <img src="https://via.placeholder.com/270x300" alt="team">
                        </figure>
                        <div class="overlay">
                            <ul>
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-skype"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            </ul>
                        </div>
                        <div class="text-bottom">
                            <h5>Ms. Susan Hodge</h5>
                            <h6>Member</h6>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="team-single text-center">
                        <figure>
                            <img src="https://via.placeholder.com/270x300" alt="team">
                        </figure>
                        <div class="overlay">
                            <ul>
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-skype"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            </ul>
                        </div>
                        <div class="text-bottom">
                            <h5>Ms. Michelle Queeley</h5>
                            <h6>Member</h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--End team area-->
    <%}
    else
    { %>

    <!--Start tema area-->
    <section class="team-sec">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="sec-title text-center">
                        <a name="team">
                            <h2>Meet Our Professional Staff</h2>
                        </a>
                        <span class="border"></span>
                        <p>
                            Lorem ipsum dolor  amet mi ultricies interdum pede eu vestibulum vulputate maurimtum
                            <br>
                            commod rhoncus consectetuer reduce producet
                        </p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="team-single text-center">
                        <figure>
                            <img src="Content/Images/personnel/monifa.jpg" alt="team">
                        </figure>

                        <div class="text-bottom">
                            <h5>Monifa Brooks-Gumbs</h5>
                            <h6>Administrator</h6>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="team-single text-center">
                        <figure>
                            <img src="Content/Images/personnel/lenia.jpg" alt="team">
                        </figure>
                        <div class="overlay">
                            <ul>
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-skype"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            </ul>
                        </div>
                        <div class="text-bottom">
                            <h5>Lenia Simpson</h5>
                            <h6>Accounts & Loans Officer</h6>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="team-single text-center">
                        <figure>
                            <img src="Content/Images/personnel/sharice.jpg" alt="team">
                        </figure>
                        <div class="overlay">
                            <ul>
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-skype"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            </ul>
                        </div>
                        <div class="text-bottom">
                            <h5>Sharice Richardson</h5>
                            <h6>Accounts Clerk</h6>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="team-single text-center">
                        <figure>
                            <img src="Content/Images/personnel/ron.jpg" alt="team">
                        </figure>
                        <div class="overlay">
                            <ul>
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-skype"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            </ul>
                        </div>
                        <div class="text-bottom">
                            <h5>Rochelle Bryan</h5>
                            <h6>Pension Clerk</h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--End team area-->

    <% }%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterScriptContent" runat="server">
</asp:Content>
