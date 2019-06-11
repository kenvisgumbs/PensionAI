<%@ Page Title="Public Service Pension Fund: Benefits" Language="C#" MasterPageFile="~/PSPFAI.Master" AutoEventWireup="true" CodeBehind="Service-Details.aspx.cs" Inherits="pspfai.Service_Details" %>
<%@ MasterType VirtualPath="~/PSPFAI.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <!--Page Title-->
    <section class="page-title" style="background: url(Content/Images/pages/<%=bgFile%>) no-repeat center;">
       <div class="floatover">
        <div class="container">
            <h2><% =subPage%> Details</h2>
            <ul class="title-manu">
                <li><a href="Home.aspx">home</a></li>
                <li>|</li>
                <li><a href="services.aspx">services</a></li>
                <li>|</li>
                <li class="current"><% =subPage %> Details</li>
            </ul>
        </div>

       </div>
    </section>
    <!--End Page Title-->

    <!--Start service style 2-->
    <% if (subPage == "pension" || subPage == "gratuity")
        {%>
    <section class="services-details">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="text-area text-left">
                        <h4>Details About <%=subPage %></h4>
                        <%if (subPage == "pension")
                            { %>
                        <p>
                            A pension is a type of retirement plan where an Employee contributes to a fund that also includes contributions by the Employer. 
                            The Employee's pension payments at retirement are determined by the length of the employee's service and the annual income earned leading up to retirement. 
                            To qualify for Pension, an Employee <strong>must</strong> have 10 years of continuous contributions. The Pension Administrator reviews all applications for Pension and determines elligibilily according
                            to the Pension Statutes of Anguilla. 
                            
</p> <%}
    else if (subPage == "gratuity")
    { %>
                <p>
Gratuity is a one-time lump sum payment made to Contributors who have at least 10 years of service. Gratuity is normally paid at retirement but can be paid when a Contributor resigns <strong>having 10 or more years</strong> of service. In the case of resignation, the gratuity is discounted based on the number of years left to retirement.
                </p>    
                        <%} %>
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
                                <li><i class="fa fa-arrow-circle-right"></i>Appointment Forms</li>
                                <li><i class="fa fa-arrow-circle-right"></i>Contribution Forms</li>
                                
                            </ul>
                          <%--  <ul class="right-side">
                                <li><i class="fa fa-arrow-circle-right"></i>Free Advice Provied</li>
                                <li><i class="fa fa-arrow-circle-right"></i>Research Company </li>
                                <li><i class="fa fa-arrow-circle-right"></i>Achived Gobal Trust</li>
                            </ul>--%>
                        </div>
                    </div>
                    <!-- //. left content area -->
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="right-content-area bendetails">
                        <!-- right content area -->
                        <div class="img-wrapper">
                            <img src="Content/Images/pages/service_pension1.jpg" alt="Services Image">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <% }
        else if (subPage == "refund")
        { %>
            <section class="services-details">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="text-area text-left">
                        <h4>Details About Refunds</h4>
                        <p>
                            Refund is a payment of contributions plus interest upon retirement or resignation. Refunds are applicable when Contributors have <strong>less than</strong> 10 years of service. These refund forms must be signed by the Human Resource Department of each respective resignee.
If a resignee anticipates being off Island before the refund process is completed; contact <strong>MUST</strong> be made with the Pension Office prior to leaving the island.
Under the Pension Law, any outstanding debts to the Government of Anguilla <strong>MUST</strong> be settled before Pension refund payment is made.</p>
                            

                    </div>
                </div>

                
                <div class="col-md-6 col-md-12">
                    <h4 class="bendetails">Criteria</h4>

                    <ul class="bendetails"><li><i class="fa fa-arrow-circle-right"></i>Contributed to the Public Service Pension Fund</li>
<li><i class="fa fa-arrow-circle-right"></i>Less than 10 years of continuous service</li>
                        
                       
                    </ul>
                    

                </div>

                 <div class="col-md-6 col-md-12">
                    <h4 class="bendetails">The Calculation</h4>
                   <p class="bendetails">Upon resignation, employees receive a refund of all Pension Contributions plus interest, compounded annually, at the current interest rate</p>
<p class="bendetails">Pension deductions are usually not made for the last month of service</p>
<p class="bendetails">All refund calculations are verified by either the Treasury Department or the respective agency Human Resource departments.</p>

                </div>
                
                <div class="col-md-6 col-sm-12">
                    <div class="left-content-area bendetails">
                        <!-- left content area -->
                        <h4 class="bendetails">Timeframe for receiving refund</h4>

                       <p>The refund process begins when the Pension Fund office receives notice of an employee’s resignation from Public Administration or agency Human Resource Department. 
Every effort will be made to have payment ready for the employee’s effective date of resignation.</p>	
                                 
                         
	
                            <h5 class="bendetails">Key Documents</h5>   
                        <div class="about-item">
                            <ul class="left-side">
                                <li><i class="fa fa-arrow-circle-right"></i>Letter of Resignation</li>
                                <li><i class="fa fa-arrow-circle-right"></i>Notice from your HR Dept</li>
                                
                            </ul>
                        </div>
                    </div>
                    <!-- //. left content area -->
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="right-content-area bendetails">
                        <!-- right content area -->
                        <div class="img-wrapper">
                            <img src="Content/Images/pages/service_pension1.jpg" alt="Services Image">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>  
      <% } else if (subPage == "survivor") { %>  <!--end refund-->
     <section class="services-details">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="text-area text-left">
                        <h4>Details About Survivor Pension</h4>
                        <p>
                            <strong>Survivors Pension</strong> is a monthly payment made to the Spouse and Dependent Children of a Contributor. If a Contributor dies without a Spouse or Dependent Children, benefits are paid to the Legal Personal Representative. </p>
                            

                    </div>
                </div>

                
                <div class="col-md-6 col-md-12">
                    <h4 class="bendetails">Criteria</h4>

                    <ul class="bendetails"><li><i class="fa fa-arrow-circle-right"></i>Contributed to the Public Service Pension Fund</li>
<li><i class="fa fa-arrow-circle-right"></i>Less than 10 years of continuous service</li>
                        
                       
                    </ul>
                    

                </div>

                 <div class="col-md-6 col-md-12">
                    <h4 class="bendetails">The Calculation</h4>
                   <p class="bendetails">Upon resignation, employees receive a refund of all Pension Contributions plus interest, compounded annually, at the current interest rate</p>
<p class="bendetails">Pension deductions are usually not made for the last month of service</p>
<p class="bendetails">All refund calculations are verified by either the Treasury Department or the respective agency Human Resource departments.</p>

                </div>
                
                <div class="col-md-6 col-sm-12">
                    <div class="left-content-area bendetails">
                        <!-- left content area -->
                        <h4 class="bendetails">Timeframe for receiving refund</h4>

                       <p>The refund process begins when the Pension Fund office receives notice of an employee’s resignation from Public Administration or agency Human Resource Department. 
Every effort will be made to have payment ready for the employee’s effective date of resignation.</p>	
                                 
                         
	
                            <h5 class="bendetails">Key Documents</h5>   
                        <div class="about-item">
                            <ul class="left-side">
                                <li><i class="fa fa-arrow-circle-right"></i>Letter of Resignation</li>
                                <li><i class="fa fa-arrow-circle-right"></i>Notice from your HR Dept</li>
                                
                            </ul>
                        </div>
                    </div>
                    <!-- //. left content area -->
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="right-content-area bendetails">
                        <!-- right content area -->
                        <div class="img-wrapper">
                            <img src="Content/Images/pages/service_pension1.jpg" alt="Services Image">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <%} else if (subPage == "early") { %>
    <section class="services-details">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="text-area text-left">
                        <h4>Details About Early Retirement</h4>
                        <p>
                           In special cases with the approval of the Secretary of State, a Contributor who has 5 years left to normal retirement can receive Early Retirement. In this case, pension benefits are calculated up to the effective date, there is no discount on gratuity and pension is paid without delay. </p>
                            

                    </div>
                </div>

                
                <div class="col-md-6 col-md-12">
                    <h4 class="bendetails">Criteria</h4>

                    <ul class="bendetails"><li><i class="fa fa-arrow-circle-right"></i>Contributed to the Public Service Pension Fund</li>
<li><i class="fa fa-arrow-circle-right"></i>Less than 10 years of continuous service</li>
                        
                       
                    </ul>
                    

                </div>

                 <div class="col-md-6 col-md-12">
                    <h4 class="bendetails">The Calculation</h4>
                   <p class="bendetails">Upon resignation, employees receive a refund of all Pension Contributions plus interest, compounded annually, at the current interest rate</p>
<p class="bendetails">Pension deductions are usually not made for the last month of service</p>
<p class="bendetails">All refund calculations are verified by either the Treasury Department or the respective agency Human Resource departments.</p>

                </div>
                
                <div class="col-md-6 col-sm-12">
                    <div class="left-content-area bendetails">
                        <!-- left content area -->
                        <h4 class="bendetails">Timeframe for receiving refund</h4>

                       <p>The refund process begins when the Pension Fund office receives notice of an employee’s resignation from Public Administration or agency Human Resource Department. 
Every effort will be made to have payment ready for the employee’s effective date of resignation.</p>	
                                 
                         
	
                            <h5 class="bendetails">Key Documents</h5>   
                        <div class="about-item">
                            <ul class="left-side">
                                <li><i class="fa fa-arrow-circle-right"></i>Letter of Resignation</li>
                                <li><i class="fa fa-arrow-circle-right"></i>Notice from your HR Dept</li>
                                
                            </ul>
                        </div>
                    </div>
                    <!-- //. left content area -->
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="right-content-area bendetails">
                        <!-- right content area -->
                        <div class="img-wrapper">
                            <img src="Content/Images/pages/service_pension1.jpg" alt="Services Image">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
     <%} else if (subPage == "medical") { %>
    <section class="services-details">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="text-area text-left">
                        <h4>Details About Medical Boarding &amp Retirement</h4>
                        <p>On Medical evidence to the satisfaction of the Governor or Secretary of State that the Contributor by reason of any infirmity of mind or body, is no longer capable of performing his or her duties, and such infirmity is likely to be permanent, then Early Retirement can be granted. In this case, pension benefits are calculated up to the effective date, there is no discount on gratuity and pension is paid without delay.</p>
                            

                    </div>
                </div>

                
                <div class="col-md-6 col-md-12">
                    <h4 class="bendetails">Criteria</h4>

                    <ul class="bendetails"><li><i class="fa fa-arrow-circle-right"></i>Contributed to the Public Service Pension Fund</li>
<li><i class="fa fa-arrow-circle-right"></i>Less than 10 years of continuous service</li>
                        
                       
                    </ul>
                    

                </div>

                 <div class="col-md-6 col-md-12">
                    <h4 class="bendetails">The Calculation</h4>
                   <p class="bendetails">Upon resignation, employees receive a refund of all Pension Contributions plus interest, compounded annually, at the current interest rate</p>
<p class="bendetails">Pension deductions are usually not made for the last month of service</p>
<p class="bendetails">All refund calculations are verified by either the Treasury Department or the respective agency Human Resource departments.</p>

                </div>
                
                <div class="col-md-6 col-sm-12">
                    <div class="left-content-area bendetails">
                        <!-- left content area -->
                        <h4 class="bendetails">Timeframe for receiving refund</h4>

                       <p>The refund process begins when the Pension Fund office receives notice of an employee’s resignation from Public Administration or agency Human Resource Department. 
Every effort will be made to have payment ready for the employee’s effective date of resignation.</p>	
                                 
                         
	
                            <h5 class="bendetails">Key Documents</h5>   
                        <div class="about-item">
                            <ul class="left-side">
                                <li><i class="fa fa-arrow-circle-right"></i>Letter of Resignation</li>
                                <li><i class="fa fa-arrow-circle-right"></i>Notice from your HR Dept</li>
                                
                            </ul>
                        </div>
                    </div>
                    <!-- //. left content area -->
                </div>
                <div class="col-md-6 col-sm-12">
                    <div class="right-content-area bendetails">
                        <!-- right content area -->
                        <div class="img-wrapper">
                            <img src="Content/Images/pages/service_pension1.jpg" alt="Services Image">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <%} %>
    <!--End service style 2-->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterScriptContent" runat="server">
</asp:Content>
