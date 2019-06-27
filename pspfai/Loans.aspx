<%@ Page Title="Public Service Pension Fund: Loans" Language="C#" MasterPageFile="~/PSPFAI.Master" AutoEventWireup="true" CodeBehind="Loans.aspx.cs" Inherits="pspfai.Loans" %>

<%@ MasterType VirtualPath="~/PSPFAI.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <script type="text/javascript">
     function UpdateDate(cntrl) {

         if (cntrl == "hire") {

             // Get the current selected index of your source
             var d = document.getElementById("<%=hire_day.ClientID%>");
             var dy = d.options[d.selectedIndex].value;
             var m = document.getElementById("<%=hire_month.ClientID%>");
             var mon = m.options[m.selectedIndex].value;
             var y = document.getElementById("<%=hire_year.ClientID%>");
             var yr = y.options[y.selectedIndex].value;
             // Set the selected index of your target
             document.getElementById("<%=TextBox1.ClientID%>").value = yr + '-' + mon + '-' + dy;
         }
     }
     </script>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
        
    </asp:ScriptManager>
    
    
    
    <style>
        #wizHeader li .prevStep {
            background-color: #669966;
        }

            #wizHeader li .prevStep:after {
                border-left-color: #669966 !important;
            }

        #wizHeader li .currentStep {
            background-color: #21a53b;
        }

            #wizHeader li .currentStep:after {
                border-left-color: #21a53b !important;
            }

        #wizHeader li .nextStep {
            background-color: #C2C2C2;
        }

            #wizHeader li .nextStep:after {
                border-left-color: #C2C2C2 !important;
            }

        #wizHeader {
            list-style: none;
            overflow: hidden;
            font: 18px Helvetica, Arial, Sans-Serif;
            margin: 0px;
            padding: 0px;
        }

            #wizHeader li {
                float: left;
            }

                #wizHeader li a {
                    color: white;
                    text-decoration: none;
                    padding: 10px 0 10px 55px;
                    background: brown; /* fallback color */
                    background: hsla(34,85%,35%,1);
                    position: relative;
                    display: block;
                    float: left;
                }

                    #wizHeader li a:after {
                        content: " ";
                        display: block;
                        width: 0;
                        height: 0;
                        border-top: 50px solid transparent; /* Go big on the size, and let overflow hide */
                        border-bottom: 50px solid transparent;
                        border-left: 30px solid hsla(34,85%,35%,1);
                        position: absolute;
                        top: 50%;
                        margin-top: -50px;
                        left: 100%;
                        z-index: 2;
                    }

                    #wizHeader li a:before {
                        content: " ";
                        display: block;
                        width: 0;
                        height: 0;
                        border-top: 50px solid transparent;
                        border-bottom: 50px solid transparent;
                        border-left: 30px solid white;
                        position: absolute;
                        top: 50%;
                        margin-top: -50px;
                        margin-left: 1px;
                        left: 100%;
                        z-index: 1;
                    }

                #wizHeader li:first-child a {
                    padding-left: 10px;
                }

                #wizHeader li:last-child {
                    padding-right: 50px;
                }

                #wizHeader li a:hover {
                    background: #000;
                }

                    #wizHeader li a:hover:after {
                        border-left-color: #000 !important;
                    }

        .content {
            height: 150px;
            padding-top: 75px;
            text-align: center;
            background-color: #F9F9F9;
            font-size: 48px;
        }

        .button--compact {
            cursor: pointer;
            padding: 12px 8px;
            height: 52px;
            min-width: 100px;
            vertical-align: middle;
            color: #ffffff;
            background: #d1d5d5;
            transition: background 0.2s ease;
            border: none;
            border-radius: 4px;
            border-bottom: 3px solid #929494;
            margin-right: 4px;
        }

        .button--primary {
            background: #21a53b;
            border-bottom-color: #066c1a;
        }

        .button--secondary {
            background: #C2C2C2;
            border-bottom-color: #999999;
        }


        .form__key {
            font-size: 12px;
            line-height: 1.125rem;
            margin-top: 25px;
            margin-bottom: 0.40625rem;
            color: #515151;
            margin-left: 10px;
            zoom: 1;
            font-weight: 700;
        }

        legend {
            color: #006a00;
            display: block;
            font-weight: 500;
            margin-bottom: 0.75rem;
            font-size: 13px;
        }

        legend {
            border: 0;
            padding: 0;
        }

        legend {
            display: block;
            -webkit-padding-start: 2px;
            -webkit-padding-end: 2px;
            border-width: initial;
            border-style: none;
            border-color: initial;
            border-image: initial;
        }

        .form__row {
            zoom: 1;
            margin-bottom: 2.25rem;
            margin-left: 10px;
            font-size: 13px;
        }

        .select {
            font-size: 15px !important;
            color: #2e3030;
        }

        input[type="text"], input[type="number"], input[type="email"], input[type="search"], input[type="password"] {
            height: 23px;
            line-height: 1.875rem;
            width: 20%;
        }

        input[type="text"], input[type="number"], input[type="email"], input[type="search"], input[type="password"], textarea, .form__input-outline {
            -webkit-appearance: none;
            background-color: white;
            border: 1px solid;
            border-color: initial;
            border-radius: 0;
            color: #2e3030;
            display: inline-block;
            padding: 0 0.375rem;
        }

        input[type="radio"] {
            padding-right: 10px;
            margin-right: 15px;
            padding-top: 5px;
        }

        .hidden {
            visibility: hidden;
        }

        .para {
            line-height: 18px;
            font-family: "Roboto";
            padding-right: 25px;
            font-size: 13px;
            font-weight: 300;
            width: 80%;
        }

        #chartdiv {
            width: 100%;
            max-height: 600px;
            height: 100vh;
        }
    </style>
    <!--Page Title-->
    <section class="page-title" style="background: url(Content/Images/pages/loan_page.jpg) center no-repeat;">
        <div class="floatover">
            <div class="container">
                <h2>Loans</h2>
                <ul class="title-manu">
                    <li><a href="Home.aspx">home</a></li>
                    <li>|</li>

                    <li class="current">Loans</li>
                </ul>
            </div>

        </div>
    </section>
    <!--End Page Title-->

    <!--Start service style 2-->

    <section class="services-details">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="text-area text-left">
                        <h4>pension fund LOAN programme</h4>

                        <p>
                            The <strong>Pension Fund Loan</strong> programme commenced on February 1, 2017 and is available to active Contributors with at least two years of contributions. Contributors have the opportunity to borrow up to 75% of their total contributions. The minimum that can be borrowed is EC$1,000.00 and the repayment period varies with the amount borrowed, up to a maximum of 5 years. The interest rate is currently 6% per annum. 
                            
                        </p>
                    </div>
                </div>

                <div class="col-md-6 col-md-12">
                    <h4 class="bendetails">Criteria</h4>
                    <ul class="bendetails">
                        <li><i class="fa fa-arrow-circle-right"></i>Must have at least two (2) years Contributions</li>
                        <li><i class="fa fa-arrow-circle-right"></i>Loan amount up to 75% of Contributions</li>

                    </ul>


                </div>

                <div class="col-md-6 col-md-12">
                    <h4 class="bendetails">Key Terms</h4>
                    <p class="bendetails"><strong>Per Annum</strong> - yearly or annually</p>
                    <p class="bendetails"><strong>Interest Rate</strong> - the amount of interest due per period, as a proportion of the amount borrowed(called the principal sum)</p>

                </div>
                <div style="margin:30px 14px 38px 16px; position:relative; border-bottom: 1px solid #21a53b;">&nbsp;</div>
                                <div class="col-md-12">

                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            

                            <asp:Wizard ID="Wizard1" runat="server" Width="90%" DisplaySideBar="False">
                                <WizardSteps>
                                    <asp:WizardStep ID="WizardStep0" runat="server" Title="Get Started">
                                        <div class="form__key">
                                            <h5>PSPF Loan Calculator Basics</h5>
                                            <h5>&nbsp;</h5>
                                            <p class="para">
                                                This calculator is only used for estimating purposes. For offical calculations & amortization information please contact our office at your earliest convenience.
                                             
                                            </p>
                                         
                                        </div>
                                    </asp:WizardStep>
                                    <asp:WizardStep ID="WizardStep1" runat="server" Title="About You">
                                        <script type="text/javascript">
                                            Sys.Application.add_load(UpdateDate);
                            </script>
                                        <% 
                                            string mde = "Loan Calculator";
                                           

                                        %>  
                                        <div class="form__key">
                                           <h3><%=mde %> Projection</h3>

                                        </div>
                                        
                                        <div class="form__key">
                                            * All information is required

                                        </div>
                                        
                                        <div class="form__row t-date-of-birth ">
                                            <fieldset class="form__group form__group--inline">
                                                <legend>Your Name
                                                </legend>

                                                <span class="form__group-item">
                                                    <asp:TextBox ID="name" Text="" required="required" runat="server" Columns="40"></asp:TextBox>
                                                </span>

                                            </fieldset>

                                        </div>

                                        <div class="form__row t-date-of-birth ">
                                            <fieldset class="form__group form__group--inline">
                                                <legend>Your Employer*
                                                </legend>

                                                <span class="form__group-item">
                                                    <asp:DropDownList ID="employer" runat="server" required="required" CssClass="select dob">
                                                        
                                                        <asp:ListItem Value="">Employer</asp:ListItem>
                                                        <asp:ListItem Value="1">GOA</asp:ListItem>
                                                        <asp:ListItem Value="2">AASPA</asp:ListItem>
                                                        <asp:ListItem Value="3">ACC</asp:ListItem>
                                                         <asp:ListItem Value="4">ADB</asp:ListItem>
                                                         <asp:ListItem Value="5">ATB</asp:ListItem>
                                                         <asp:ListItem Value="6">FSC</asp:ListItem>
                                                         <asp:ListItem Value="7">HAA</asp:ListItem>
                                                        <asp:ListItem Value="8">PSPF</asp:ListItem>
                                                        <asp:ListItem Value="9">PUC</asp:ListItem>
                                                      
                                                        <asp:ListItem Value="10">WCA</asp:ListItem>
                                                    </asp:DropDownList>
                                               

                                                </span>



                                            </fieldset>
                                            <ul>
                                                <li>GOA - Government of Anguilla</li>
                                                <li>AASPA - Anguilla Air &amp; Seaports Authority</li>
                                                <li>ACC - Anguilla Community College</li>
                                                <li>ADB - Anguilla Development Board</li>
                                                <li>ATB - Anguilla Tourist Board</li>
                                                <li>FSC - Financial Services Commission</li>
                                                <li>HAA - Health Authority Anguilla</li>
                                                <li>PSPF - Public Service Pension Fund</li>
                                                <li>PUC - Public Utilities Commission</li>
                                            </ul>
                                        </div>

                                          <div class="form__row t-date-of-birth">
                                            <fieldset class="form__group form__group--inline">
                                                <legend>Your hire date*
                                                </legend>

                                                <span class="form__group-item">
                                                    <asp:DropDownList ID="hire_day" runat="server" onchange="UpdateDate('hire')" required="required" CssClass="select dob">
                                                        <asp:ListItem Value="">Day</asp:ListItem>
                                                        <asp:ListItem Value="1">1</asp:ListItem>
                                                        <asp:ListItem Value="2">2</asp:ListItem>
                                                        <asp:ListItem Value="3">3</asp:ListItem>
                                                        <asp:ListItem Value="4">4</asp:ListItem>
                                                        <asp:ListItem Value="5">5</asp:ListItem>
                                                        <asp:ListItem Value="6">6</asp:ListItem>
                                                        <asp:ListItem Value="7">7</asp:ListItem>
                                                        <asp:ListItem Value="8">8</asp:ListItem>
                                                        <asp:ListItem Value="9">9</asp:ListItem>
                                                        <asp:ListItem Value="10">10</asp:ListItem>
                                                        <asp:ListItem Value="11">11</asp:ListItem>
                                                        <asp:ListItem Value="12">12</asp:ListItem>
                                                        <asp:ListItem Value="13">13</asp:ListItem>
                                                        <asp:ListItem Value="14">14</asp:ListItem>
                                                        <asp:ListItem Value="15">15</asp:ListItem>
                                                        <asp:ListItem Value="16">16</asp:ListItem>
                                                        <asp:ListItem Value="17">17</asp:ListItem>
                                                        <asp:ListItem Value="18">18</asp:ListItem>
                                                        <asp:ListItem Value="19">19</asp:ListItem>
                                                        <asp:ListItem Value="20">20</asp:ListItem>
                                                        <asp:ListItem Value="21">21</asp:ListItem>
                                                        <asp:ListItem Value="22">22</asp:ListItem>
                                                        <asp:ListItem Value="23">23</asp:ListItem>
                                                        <asp:ListItem Value="24">24</asp:ListItem>
                                                        <asp:ListItem Value="25">25</asp:ListItem>
                                                        <asp:ListItem Value="26">26</asp:ListItem>
                                                        <asp:ListItem Value="27">27</asp:ListItem>
                                                        <asp:ListItem Value="28">28</asp:ListItem>
                                                        <asp:ListItem Value="29">29</asp:ListItem>
                                                        <asp:ListItem Value="30">30</asp:ListItem>
                                                        <asp:ListItem Value="31">31</asp:ListItem>
                                                    </asp:DropDownList>

                                                </span>
                                                <span class="form__group-item">
                                                    <asp:DropDownList ID="hire_month" onchange="UpdateDate('hire')" runat="server" required="required" CssClass="select dob">
                                                        <asp:ListItem Value="">Month</asp:ListItem>
                                                        <asp:ListItem Value="1">January</asp:ListItem>
                                                        <asp:ListItem Value="2">February</asp:ListItem>
                                                        <asp:ListItem Value="3">March</asp:ListItem>
                                                        <asp:ListItem Value="4">April</asp:ListItem>
                                                        <asp:ListItem Value="5">May</asp:ListItem>
                                                        <asp:ListItem Value="6">June</asp:ListItem>
                                                        <asp:ListItem Value="7">July</asp:ListItem>
                                                        <asp:ListItem Value="8">August</asp:ListItem>
                                                        <asp:ListItem Value="9">September</asp:ListItem>
                                                        <asp:ListItem Value="10">October</asp:ListItem>
                                                        <asp:ListItem Value="11">November</asp:ListItem>
                                                        <asp:ListItem Value="12">December</asp:ListItem>
                                                    </asp:DropDownList>

                                                </span>
                                                <span class="form__group-item">
                                                    <asp:DropDownList ID="hire_year" onchange="UpdateDate('hire')" runat="server" required="required" CssClass="select dob">
                                                        <asp:ListItem Value="">Year</asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:CompareValidator ID="CompareValidator5" runat="server" ErrorMessage="Invalid Date!" ControlToValidate="TextBox1" Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
                                                    <asp:RangeValidator ID="RangeValidator2" ControlToValidate="TextBox2" runat="server" ErrorMessage="Insufficient years of service!"></asp:RangeValidator>
                                                 <span style="visibility:hidden;"><asp:TextBox ID="TextBox1" required="required" runat="server"></asp:TextBox>
                                                     <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                                 </span>


                                                </span>

                                            </fieldset>
                                        </div>

                                   
                                    </asp:WizardStep>
                                    <asp:WizardStep ID="WizardStep2" runat="server" Title="Pension Contributions">
                                        <% 
                                            string mde = "Loan Calculator";
                                

                                        %>  
                                         <div class="form__key">
                                           <h3><%=mde %> Projection</h3>

                                        </div>
                                        <div class="form__key">
                                            * All information is required

                                        </div>
                                        <div class="form__row t-date-of-birth">
                                            <fieldset class="form__group form__group--inline">
                                                <legend>Total Pension Contributions*
                                                </legend>

                                                <span class="form__group-item">
                                                    <asp:TextBox ID="contributions" Text="" required="required" runat="server"></asp:TextBox>
                                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Currency Only!" ControlToValidate="contributions" Operator="DataTypeCheck" Type="Currency"></asp:CompareValidator>

                                                </span>

                                            </fieldset>
                                        </div>

                                    </asp:WizardStep>
                                    <asp:WizardStep ID="WizardStep3" runat="server" Title="Loan Info">
                                        <% 
                                            string mde = "Loan Calculator";
                                 
                                        %>  
                                        <div class="form__key">
                                           <h3><%=mde %> Projection</h3>

                                        </div>
                                        <div class="form__key">
                                            * All information is required

                                        </div>
                                        <div class="form__row t-date-of-birth ">
                                            <fieldset class="form__group form__group--inline">
                                                <legend>Loan Amount*
                                                </legend>

                                                <span class="form__group-item">
                                                  
                                                    <asp:TextBox ID="amount" required="required" runat="server"></asp:TextBox>
                                                    <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Numbers Only!" ControlToValidate="amount" Operator="DataTypeCheck" Type="Double"></asp:CompareValidator>
                                                    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Exceding Max Allowed!" ControlToValidate="amount" MinimumValue="1000"
                                                      MaximumValue="3000" Type="Currency" ></asp:RangeValidator>
                                                </span>

                                            </fieldset>
                                        
                                        </div>

                                        <div class="form__row t-date-of-birth ">
                                            <fieldset class="form__group form__group--inline">
                                                <legend>Payment Period*
                                                </legend>

                                                <span class="form__group-item">
                                                      <asp:DropDownList ID="repayment" runat="server" required="required" CssClass="select dob">
                                                        <asp:ListItem Value="">Period</asp:ListItem>
                                                        <asp:ListItem Value="1">1 Year</asp:ListItem>
                                                        <asp:ListItem Value="2">2 Years</asp:ListItem>
                                                          <asp:ListItem Value="3">3 Years</asp:ListItem>
                                                        <asp:ListItem Value="4">4 Years</asp:ListItem>
                                                        <asp:ListItem Value="5">5 Years</asp:ListItem>
                                                    </asp:DropDownList>
                                                </span>

                                            </fieldset>
                                        </div>
                                        <div style="visibility:hidden">
                                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                            <asp:TextBox ID="normalyos" runat="server"></asp:TextBox>
                                        </div>
                                    </asp:WizardStep>
                                    <asp:WizardStep ID="WizardStep4" runat="server" Title="Results">
                                        <% 
                                            string mde = "Loan Calculator";

                                        %>  
                                         <div class="form__key">
                                        <h3><%=mde %> Projection</h3>
                                             </div>
                                             <div class="form__row t-date-of-birth ">
                                             <span class="form__group-item"> For a principal of EC$<%=amount.Text.ToString() %> over <%=repayment.SelectedValue.ToString() %> years. Your wil be required to pay monthly EC$

                                                 <%
                                                     double mp = 0;
                                                     double principal = Convert.ToDouble(amount.Text);
                                                     double interest = 5.5/12/100; //annual interest divided by 12 for monthly interest
                                                     int  n = Convert.ToInt16(repayment.SelectedValue) * -12;


                                                     double cal = Math.Pow((1 + interest), n);
                                                     mp = (interest * principal) / (1 - cal);

                                                     %>
                                              <strong> <%=string.Format("{0:C}", mp) %> </strong>
                                        </span>
                                        </div>
                                        
                                       
                                    

                                    </asp:WizardStep>
                                </WizardSteps>
                                <HeaderTemplate>
                                    <ul id="wizHeader">
                                        <asp:Repeater ID="SideBarList" runat="server">
                                            <ItemTemplate>
                                                <li><a class="<%# GetClassForWizardStep(Container.DataItem) %>" title="<%#Eval("Name")%>">
                                                    <%# Eval("Name")%></a> </li>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </ul>
                                </HeaderTemplate>
                                <StartNavigationTemplate>
                                    <table cellpadding="3" cellspacing="3">
                                        <tr>

                                            <td>
                                                <asp:Button ID="btnNext" runat="server" Text="Start >>" CssClass="button--compact button--primary"
                                                    CausesValidation="true"
                                                    CommandName="MoveNext" />
                                            </td>
                                        </tr>
                                    </table>
                                </StartNavigationTemplate>
                                <StepNavigationTemplate>
                                    <table cellpadding="3" cellspacing="3">
                                        <tr>
                                            <td>
                                                <asp:Button ID="btnPrevious" runat="server"  Text="<< Previous"
                                                    CausesValidation="false" CssClass="button--compact button--secondary btn"
                                                    CommandName="MovePrevious" />

                                            </td>
                                            <td>

                                                <asp:Button ID="btnNext" runat="server" Text="Next >>" CssClass="button--primary button--compact"
                                                    CausesValidation="true"
                                                    CommandName="MoveNext" />
                                            </td>
                                        </tr>
                                    </table>
                                </StepNavigationTemplate>
                                <FinishNavigationTemplate>
                                    <table cellpadding="3" cellspacing="3">
                                        <tr>
                                            <td>
                                                <asp:Button ID="btnPrevious" runat="server" UseSubmitBehavior="False" Text="<< Previous" CausesValidation="false"
                                                    CssClass="button--compact button--secondary" CommandName="MovePrevious" />

                                            </td>
                                         
                                        </tr>
                                    </table>
                                </FinishNavigationTemplate>
                            </asp:Wizard>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>


            </div>
        </div>
    </section>

    <!--End service style 2-->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterScriptContent" runat="server">
</asp:Content>
