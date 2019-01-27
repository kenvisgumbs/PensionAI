<%@ Page Title="Public Service Pension Fund: Benefits" Language="C#" MasterPageFile="~/PSPFAI.Master" AutoEventWireup="true" CodeBehind="Benefit-Details.aspx.cs" Inherits="pspfai.Benefit_Details" %>
<%@ MasterType VirtualPath="~/PSPFAI.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <!--Page Title-->
    <section class="page-title" style="background: url(Content/Images/pages/pagehsample.jpg);">
       <div class="floatover">
        <div class="container">
            <h2><% =subPage%> Benefit Details</h2>
            <ul class="title-manu">
                <li><a href="Home.aspx">home</a></li>
                <li>|</li>
                <li><a href="services.aspx">services</a></li>
                <li>|</li>
                <li><% =subPage %> Benefit Details</li>
            </ul>
        </div>

       </div>
    </section>
    <!--End Page Title-->

    <!--Start service style 2-->
    <% if (subPage == "pension")
        {%>
    <section class="services-details">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="text-area text-left">
                        <h4>Details About <%=subPage %> Benefit</h4>
                        <p>
                            A pension is a type of retirement plan where an Employee contributes to a fund that also includes contributions by the Employer. 
                            The Employee's pension payments at retirement are determined by the length of the employee's service and the annual income earned leading up to retirement. 
                            To qualify for Pension, an Employee <strong>must</strong> have 10 years of continuous contributions. The Pension Administrator reviews all applications for Pension and determines elligibilily according
                            to the Pension Statutes of Anguilla. 
                            
</p>
                    </div>
                </div>
                <div class="col-md-5 col-sm-12">
                    <div class="left-content-area">
                        <!-- left content area -->
                        <h4>we create 25000+ business place for growth your profite. </h4>
                        <p>Lorem ipsum dolor sit amet, mi ultricies interdum pede eu vestibulumteunon libero fringilla, fermentum commodo eget etiam, rhoncus constetuerligula ac ultrices, ipsum at aspernatur ante mi. Aliquet est, duis elit. Tortor id,ivamus fugit dictum pellentesque, in in luctus hendrerit mi nisl rutrum, accumsan ac, cquat accumsan eros nisl non etiam eget. </p>

                        <div class="about-item">
                            <ul class="left-side">
                                <li><i class="fa fa-arrow-circle-right"></i>We have 25000 Happy Client</li>
                                <li><i class="fa fa-arrow-circle-right"></i>24/7 Customer Support </li>
                                <li><i class="fa fa-arrow-circle-right"></i>75 Over Services Provided</li>
                            </ul>
                            <ul class="right-side">
                                <li><i class="fa fa-arrow-circle-right"></i>Free Advice Provied</li>
                                <li><i class="fa fa-arrow-circle-right"></i>Research Company </li>
                                <li><i class="fa fa-arrow-circle-right"></i>Achived Gobal Trust</li>
                            </ul>
                        </div>
                    </div>
                    <!-- //. left content area -->
                </div>
                <div class="col-md-7 col-sm-12">
                    <div class="right-content-area">
                        <!-- right content area -->
                        <div class="img-wrapper">
                            <img src="https://via.placeholder.com/670x405" alt="Services Image">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <% } else if(subPage=="gratuity") { }%>  <!--end pension-->
    <!--End service style 2-->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterScriptContent" runat="server">
</asp:Content>
