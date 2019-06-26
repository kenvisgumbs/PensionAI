<%@ Page Title="Public Service Pension Fund: About" Language="C#" MasterPageFile="~/PSPFAI.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="pspfai.About" %>
<%@ MasterType VirtualPath="~/PSPFAI.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--Page Title-->
     <section class="page-title" style="background: url(Content/Images/pages/piggy_page.jpg) no-repeat center;">
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
                       <h4>CORE VALUES</h4>
                        <ul class="core">
                            <li class="c1"><span class="highlight">I</span>ntegrity</li>
                            <li>E<span class="highlight">m</span>pathy</li>
                            <li class="c2"><span class="highlight">P</span>rudence</li>
                            <li class="c3"><span class="highlight">A</span>ccountability</li>
                            <li class="c4"><span class="highlight">C</span>ustomer Focus</li>
                            <li class="c5"><span class="highlight">T</span>ransparency</li>
                        </ul>
                        <h4>HISTORY</h4>
                        <p class="mid">On 1 January 2004, the Public Service Pension Fund became the sole pension scheme for Government employees and government agencies. 
                            The Pensions Act is found in Chapter P20 of the Revised Statutes of Anguilla. The Pension Fund is a contributory fund and all contributors 
                            receive benefits upon Retirement, Resignation or Death.</p>
                        <p>All Government employees holding pensionable posts must contribute
                            to the Pension Fund. In addition, employees of Statutory Agencies also
                            contribute to the Fund. Currently, over 1000 persons contribute to the Public Service 
                            Pension Fund. There is a separate Fund for members of the Royal Anguilla Police Force called 
                            the Police Pension Fund. Both Funds are administered by the Pension Board and Pension Fund office.</p>

                       

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
                            <img src="Content/Images/Pages/graph1.jpg" alt="">
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
                            <img src="Content/Images/Pages/graph2.jpg" alt="">
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


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterScriptContent" runat="server">

</asp:Content>
