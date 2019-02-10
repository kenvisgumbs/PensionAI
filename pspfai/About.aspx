<%@ Page Title="Public Service Pension Fund: About" Language="C#" MasterPageFile="~/PSPFAI.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="pspfai.About" %>
<%@ MasterType VirtualPath="~/PSPFAI.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--Page Title-->
     <section class="page-title" style="background: url(Content/Images/pages/pagehsample.jpg);">
       <div class="floatover">
        <div class="container">
            <h2>About Us</h2>
            <ul class="title-manu">
                <li><a href="Home.aspx">home</a></li>
                <li> | </li>
                <li class="current">About Us</li>
            </ul>
        </div>
       </div>
    </section>
    <!--End Page Title-->


    <!--Start Service Section-->
    <section class="service-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="text-area text-left">
                        <h4>THE PUBLIC SERVICE PENSION FUND MISSION</h4>
                           <p><strong>Dedicated to effectively managing the Pension Fund in an actuarially sound manner and provide meaningful retirement and related benefits to Contributors and their dependants.</strong></p>

                         <h4>the public service pension fund Vision</h4>
                       
                        <p><strong>To be an effective provider of retirement benefits to ensure peace of mind to Contributors and a level of service that exceeds expectations.</strong>
</p>   
                      
                        <h4>HISTORY</h4>
                        <p class="mid">On 1 January 2004, the Public Service Pension Fund became the sole pension scheme for Government employees and government agencies. 
                            The Pensions Act is found in Chapter P20 of the Revised Statutes of Anguilla. The Pension Fund is a contributory fund and all contributors 
                            receive benefits upon Retirement, Resignation or Death.</p>
                        <p>All Government employees holding pensionable posts must contribute
                            to the Pension Fund. In addition, employees of Statutory Agencies also
                            contribute to the Fund. Currently, over 1000 persons contribute to the Public Service 
                            Pension Fund. There is a separate Fund for members of the Royal Anguilla Police Force called 
                            the Police Pension Fund. Both Funds are administered by the Pension Board and Pension Fund office.</p>

                        <h4>Current Pension Fund Contributors</h4>
                        <p>All Government employees holding pensionable posts must contribute to the Pension Fund. 
                            In addition, employees of Statutory Agencies also contribute to the Fund. Currently, over 1000 persons 
                            contribute to the Public Service Pension Fund. There is a separate Fund for members of the Royal Anguilla Police Force 
                            called the Police Pension Fund. Both Funds are administered by the Pension Board and Pension Fund office.
                        </p>

                        <h4>Retirement Ages</h4>
                         <ul> 
                             <li><strong>Age 60</strong> - For Contributors appointed <strong>before</strong> January 1, 2004.</li>
                             <li><strong>Age 65</strong> - For Contributors appointed <strong>on or after</strong> January 1, 2004.</li> 
                        </ul><br />  
                        <h4> Contribution Rates</h4>
                        <p>Current contribution rates are 3% of Gross Salary for Public Officers and 4% for 
                        Police Officers. Contributions rates are variable and can be changed on advice of an Actuary.</p>

                     </div>

              
                </div>
            </div>
        </div>
    </section>
    <!--End Service Section-->


    <!--Start about sec-->
    <section class="about-sec">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-12">
                    <div class="left-content-area">
                        <!-- left content area -->
                        <div class="img-wrapper">
                            <img src="Content/Images/Pages/about1.jpg" alt="">
                           <%-- <div class="hover">
                                <a href="https://www.youtube.com/watch?v=WvZQG4MLRvQ" class="video-play-btn mfp-iframe"><i class="flaticon-music-player-play"></i></a>
                            </div>--%>
                        </div>
                    </div>
                    <!-- //. left content area -->
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="right-content-area">
                        <!-- right content area -->
                         <div class="img-wrapper">
                            <img src="Content/Images/Pages/about2.jpg" alt="">
                           <%-- <div class="hover">
                                <a href="https://www.youtube.com/watch?v=WvZQG4MLRvQ" class="video-play-btn mfp-iframe"><i class="flaticon-music-player-play"></i></a>
                            </div>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--End about sec-->


    <!--Start contact area-->
    <section class="contact-area">
        <div class="container">
            <div class="row">
                <!--Start heading item-->
                <div class="col-md-10 col-sm-10 col-xs-12">
                    <div class="heading-text text-left">
                        <h1>Check out our Loan options; perfect for your needs.</h1>
                    </div>
                </div>
                <!--End single item-->

                <!--Start btn item-->
                <div class="col-md-2 col-sm-2 col-xs-12">
                    <div class="btn-cont text-right">
                        <a href="loans.aspx" class="thm-btn bg-clr2">Loans</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--End contact area-->


    <!--Start tema area-->
    <section class="team-sec">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="sec-title text-center">
                        <a name="team"><h2>Meet Our Staff</h2></a>
                        <span class="border"></span>
                        <p>Lorem ipsum dolor  amet mi ultricies interdum pede eu vestibulum vulputate maurimtum
                            <br>
                            commod rhoncus consectetuer reduce producet</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="team-single text-center">
                        <figure>
                            <img src="https://via.placeholder.com/270x300" alt="team"></figure>
                      
                        <div class="text-bottom">
                            <h5>Monifa Brooks-Gumbs</h5>
                            <h6>Administrator</h6>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="team-single text-center">
                        <figure>
                            <img src="https://via.placeholder.com/270x300" alt="team"></figure>
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
                            <img src="https://via.placeholder.com/270x300" alt="team"></figure>
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
                            <img src="https://via.placeholder.com/270x300" alt="team"></figure>
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
                            <h5>Pamela Jalle</h5>
                            <h6>Pension Clerk</h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--End team area-->



    <!--Start fact counter area-->
    <section class="fact-counter-area">
        <div class="container">
            <div class="row">
                <!--Start single item-->
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="single-item text-left">
                        <h1><span class="timer" data-from="1" data-to="3500" data-speed="5000" data-refresh-interval="50">3500</span><i class="fa fa-plus" aria-hidden="true"></i></h1>
                        <span class="border"></span>
                        <h3>Pensioners</h3>
                    </div>
                </div>
                <!--End single item-->
                <!--Start single item-->
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="single-item text-left">
                        <h1><span class="timer" data-from="1" data-to="20" data-speed="5000" data-refresh-interval="50">20</span><i class="text-m">M</i></h1>
                        <span class="border"></span>
                        <h3>Contributors</h3>
                    </div>
                </div>
                <!--End single item-->
                <!--Start single item-->
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="single-item text-left">
                        <h1><span class="timer" data-from="1" data-to="4780" data-speed="5000" data-refresh-interval="50">4780</span></h1>
                        <span class="border"></span>
                        <h3>Reserves</h3>
                    </div>
                </div>
                <!--End single item-->
                <!--Start single item-->
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="single-item text-left">
                        <h1><span class="timer" data-from="1" data-to="3500" data-speed="5000" data-refresh-interval="50">3500</span><i class="fa fa-plus" aria-hidden="true"></i></h1>
                        <span class="border"></span>
                        <h3>Loans</h3>
                    </div>
                </div>
                <!--End single item-->
            </div>
        </div>
    </section>
    <!--End fact counter area-->


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterScriptContent" runat="server">

</asp:Content>
