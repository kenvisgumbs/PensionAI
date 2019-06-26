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
                            To qualify for Pension, an Employee <strong>must</strong> have 10 years of continuous contributions. The Pension Administrator reviews all applications for Pension and determines eligibility according
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
                            Part 3, Section 59 of the Pensions Act 2014, allows for the payment of Survivors’ Benefits upon the death of a Contributor Deferred Pensioner or Existing Pensioner.The deceased must be one of the following a Contributor with 10 or more years of contributor pensionable service, a deferred Pensioner or an existing Pensioner. In the case of a Contributor with less than 10 years of service, a refund is calculated and paid to the Legal Personal Representative.</p>
                            

                    </div>
                </div>
     
                <div class="col-md-6 col-md-12">
                    <h4 class="bendetails">Criteria</h4>

                    <ul class="bendetails"><li><i class="fa fa-arrow-circle-right"></i>Must be an eligible Survivor</li>

                        
                       
                    </ul>


                </div>

                 <div class="col-md-6 col-md-12">
                    <h4 class="bendetails">The Calculation</h4>
                   <p class="bendetails">The Surviving Spouse is entitled to one half of the pension payable or being paid.</p>
<p class="bendetails">A Surviving Child receives one fourth of Pension payable or being paid.</p>
<p class="bendetails">Multiple Surviving children receive equal shares of the Pension Payable of pension being paid.</p>

                </div>
                
                <div class="col-md-6 col-sm-12">
                    <div class="left-content-area bendetails">
                        <!-- left content area -->
                        <h4 class="bendetails">key notes</h4>
                        	

                       <ul class="bendetails"><li>
<strong>Pension paid to a surviving spouse (Section 61(1-3))</strong>
	<ul><li>Ceases upon remarriage</li>
	<li>After 5 years if surviving spouse was under the age of 50 at the time of death</li></ul></li>
	<li><strong>Pension paid to surviving child(ren) (Section 61(1-3 & 63))</strong>
	<ul class="bendetails"><li>Ceases at the age of 18 or 21 if receiving full-time instructions at University, College or other educational establishment</li></ul></li>
                       </ul>	
                                 
                        
	
                            <h5 class="bendetails">Key Documents</h5>   
                        <div class="about-item">
                            <ul class="left-side">
                                <li><i class="fa fa-arrow-circle-right"></i>Death Certificate of Deceased</li>
                                <li><i class="fa fa-arrow-circle-right"></i>Birth certificate(s)</li>
                                <li><i class="fa fa-arrow-circle-right"></i>Marriage Certificate</li>
                                <li><i class="fa fa-arrow-circle-right"></i>Valid Government ID</li>
                                  <li><i class="fa fa-arrow-circle-right"></i>Bank Account number for Survivor(s)</li>
                                
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
    <%} else if (subPage == "early retirement") { %>
    <section class="services-details">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="text-area text-left">
                        <h4>Details About Early Retirement</h4>
                        <p>Section 7(a) of the Pensions Act provides for the special case of Early Retirement, 5 years before the normal retirement age. 
Interested persons should write to the Deputy Governor, via the Permanent Secretary of Public Administration to seek approval. Requests for Early retirement should be made at least 6 months prior to the five year eligibility window. <strong>Please note approval is not automatic nor is it always granted.</strong>
 </p>
                            

                    </div>
                </div>

                
                <div class="col-md-6 col-md-12">
                    <h4 class="bendetails">Criteria</h4>

                    <ul class="bendetails"><li><i class="fa fa-arrow-circle-right"></i>At least 10 years of contributory pensionable service</li>
<li><i class="fa fa-arrow-circle-right"></i>Meet the age requirement of 5 year within 60 years or 65 years</li>
                        
                       
                    </ul>
                    

                </div>

                 <div class="col-md-6 col-md-12">
                    <h4 class="bendetails">The Calculation</h4>
                   <p class="bendetails">Benefits are calculated up to the effective date or the approval date given by the Deputy Governor.</p>
<p class="bendetails">The formula used is the same as that for Normal Retirement calculations.</p>
<p class="bendetails">There is no discounting of gratuity benefits and pension; payments begin on the day following the effective date.</p>

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
                                <li><i class="fa fa-arrow-circle-right"></i>Approval from the Deputy Governor</li>
                                
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
                        <p>Section 7(e) of the Pensions Act provides for the special case
of Medical Boarding. The process is triggered by the employing Human Resource
(HR) Department following a period of continuous accumulated
Sick Leave.The HR Department commissions a Medical Board consisting
of Medical Professionals and the Medical Board Candidate. After an interview process and review of Medical Records the
Medical Board determines whether the employee is fit to work. The Medical Board submits a report to the Governor or Deputy
Governor for final approval.</p>
                            

                    </div>
                </div>

                
                <div class="col-md-6 col-md-12">
                    <h4 class="bendetails">Criteria</h4>

                    <ul class="bendetails">
<li><i class="fa fa-arrow-circle-right"></i>At least ten years of contributory pensionable service</li>
                        
                       
                    </ul>
                    

                </div>
                


                 <div class="col-md-6 col-md-12">
                    <h4 class="bendetails">The Calculation</h4>
                   <p class="bendetails">Benefits are calculated up to the approval date given by the
Governor or Deputy Governor.</p>
<p class="bendetails">The formula used is the same as that for Normal Retirement
calculations.</p>
<p class="bendetails">There is no discounting of gratuity benefits and pension
payments begin on the day following the approval date.</p>

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
                                <li><i class="fa fa-arrow-circle-right"></i>Governor or Dpty Governor Approval</li>
                              
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
