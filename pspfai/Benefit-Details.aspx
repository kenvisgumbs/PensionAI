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
                <li class="current"><% =subPage %> Benefit Details</li>
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

                
                <div class="col-md-6 col-md-12">
                    <h4 class="bendetails">Criteria</h4>
                    <ul class="bendetails"><li><i class="fa fa-arrow-circle-right"></i>Must have at least 10 years of continuous service</li>
<li><i class="fa fa-arrow-circle-right"></i>Hold a pensionable post</li>
                        <li><i class="fa fa-arrow-circle-right"></i>Contributed to the pension fund</li>
                        <li><i class="fa fa-arrow-circle-right"></i><strong>Normal Retirement</strong> Age is <strong>60</strong>, if appointed <strong>before</strong> January 1, 2004 and <br /><span style="padding-left:28px"><strong>65</strong> years, 
                            if appointed <strong>on or after</strong> January 1, 2004</span></li>
                    </ul>
                    

                </div>

                 <div class="col-md-6 col-md-12">
                    <h4 class="bendetails">Key Terms</h4>
                   <p class="bendetails"><strong>Pension</strong> - monthly payments only</p>
<p class="bendetails"><strong>Gratuity Reduced Pension</strong> - one-time lump sum payment and a reduced monthly payment</p>
<p class="bendetails"><strong>Discounted Gratuity Reduced Pension</strong> - one-time discounted (based on years to normal retirement age) lump sum payment and a reduced monthly payment</p>
<p class="bendetails"><strong>Pensionable Emoluments</strong> - Annual Salary 
</p> 
                </div>
                
                <div class="col-md-6 col-sm-12">
                    <div class="left-content-area bendetails">
                        <!-- left content area -->
                        <h4 class="bendetails">Payment of Benefit &amp; Other Information</h4>
                        <p>Pension payments begin to accrue on the day following the last day of service and are paid in arrears in monthly installments. Deferred pension 
                            payments begin when the normal retirement age is attained.</p>
                        <p>Pension payments are made on the 29<sup>th</sup> day of each month. Exceptions are for the months of February and December. 
                            February payments will be made on the 28<sup>th</sup> and December payments on the 20<sup>th</sup>. If the scheduled payment date falls on a weekend or holiday, payments will be made on the closest working day.
</p>
                        <h5 class="bendetails">Key Documents</h5>
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
                <div class="col-md-6 col-sm-12">
                    <div class="right-content-area bendetails">
                        <!-- right content area -->
                        <div class="img-wrapper">
                            <img src="https://via.placeholder.com/570x405" alt="Services Image">
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
