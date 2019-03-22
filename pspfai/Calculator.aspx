
<%@ Page Title="Public Service Pension Fund: Calculator" Language="C#" MasterPageFile="~/PSPFAI.Master" AutoEventWireup="true" CodeBehind="Calculator.aspx.cs" Inherits="pspfai.Calculator" %>
<%@ MasterType VirtualPath="~/PSPFAI.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <script type="text/javascript">
       function UpdateDate(cntrl) {

           if (cntrl == "dob") {


               // Get the current selected index of your source
               var d = document.getElementById("<%=dob_day.ClientID%>");
               var dy = d.options[d.selectedIndex].value;
               var m = document.getElementById("<%=dob_month.ClientID%>");
               var mon = m.options[m.selectedIndex].value;
               var y = document.getElementById("<%=dob_year.ClientID%>");
               var yr = y.options[y.selectedIndex].value;
               // Set the selected index of your target
               document.getElementById("<%=TextBox1.ClientID%>").value = yr + '-' + mon + '-' + dy;
           }
           else if (cntrl == "hire") {

               // Get the current selected index of your source
               var d = document.getElementById("<%=hire_day.ClientID%>");
               var dy = d.options[d.selectedIndex].value;
               var m = document.getElementById("<%=hire_month.ClientID%>");
               var mon = m.options[m.selectedIndex].value;
               var y = document.getElementById("<%=hire_year.ClientID%>");
               var yr = y.options[y.selectedIndex].value;
               // Set the selected index of your target
               document.getElementById("<%=TextBox2.ClientID%>").value = yr + '-' + mon + '-' + dy;
           }
           else if (cntrl == "resig") {

               // Get the current selected index of your source
               var d = document.getElementById("<%=resig_day.ClientID%>");
               var dy = d.options[d.selectedIndex].value;
               var m = document.getElementById("<%=resig_month.ClientID%>");
               var mon = m.options[m.selectedIndex].value;
               var y = document.getElementById("<%=resig_year.ClientID%>");
               var yr = y.options[y.selectedIndex].value;
               // Set the selected index of your target
               document.getElementById("<%=TextBox3.ClientID%>").value = yr + '-' + mon + '-' + dy;
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
    <section class="page-title" style="background: url(Content/Images/pages/pagehsample.jpg);">
        <div class="floatover">
            <div class="container">
                <h2>Calculator</h2>
                <ul class="title-manu">
                    <li><a href="Home.aspx">home</a></li>
                    <li>|</li>
                    <li><a href="resources.aspx">resources</a></li>
                    <li>|</li>
                    <li class="current">Calculator</li>
                </ul>
            </div>
        </div>
    </section>
    <!--End Page Title-->
  

    <!--Start service style -->
    <section class="service-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">

                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            

                            <asp:Wizard ID="Wizard1" runat="server" Width="90%" DisplaySideBar="False">
                                <WizardSteps>
                                    <asp:WizardStep ID="WizardStep0" runat="server" Title="Get Started">
                                        <div class="form__key">
                                            <h5>PSPF Pension Calculator Basics</h5>
                                            <h5>&nbsp;</h5>
                                            <p class="para">
                                                This calculator is only used for estimating purposes. For offical calculations please contact our office at your earliest convenience.
                                                Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
                                            </p>
                                            <p>Do you want to project <strong>Normal Retirement or Resignition/Termination?</strong>
                                                 <span class="form__group-item">
                                                    <asp:RadioButtonList ID="RadioButtonList2" required="required" runat="server">
                                                        <asp:ListItem Text="Normal Retirement" Value="1" Selected="True" />
                                                        <asp:ListItem Text="Resignition/Termination" Value="2" />
                                                    </asp:RadioButtonList>

                                                </span>
                                            </p>

                                        </div>
                                    </asp:WizardStep>
                                    <asp:WizardStep ID="WizardStep1" runat="server" Title="About You">
                                        <script type="text/javascript">
                                            Sys.Application.add_load(UpdateDate);
                            </script>
                                        <% 
                                            string mde = "Normal Retirement";
                                            if (RadioButtonList2.SelectedValue == "2") mde = "Resignition/Terminiation";

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

                                        <div class="form__row t-date-of-birth">
                                            <fieldset class="form__group form__group--inline">
                                                <legend>Your date of birth*
                                                </legend>

                                                <span class="form__group-item">
                                                    <asp:DropDownList ID="dob_day" onchange="UpdateDate('dob')" runat="server" required="required" CssClass="select dob">
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
                                                    <asp:DropDownList ID="dob_month" runat="server" onchange="UpdateDate('dob')" required="required" CssClass="select dob">
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
                                                    <asp:DropDownList ID="dob_year" runat="server" onchange="UpdateDate('dob')" required="required" CssClass="select dob">
                                                        <asp:ListItem Value="">Year</asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:CompareValidator ID="CompareValidator4" runat="server" ErrorMessage="Invalid Date!" ControlToValidate="TextBox1" Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
                                                 <span style="visibility:hidden;"><asp:TextBox ID="TextBox1" required="required" runat="server"></asp:TextBox></span>


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
                                                        <asp:ListItem Value="1">PSPF Office</asp:ListItem>
                                                        <asp:ListItem Value="2">GOA</asp:ListItem>
                                                        <asp:ListItem Value="3">HAA</asp:ListItem>
                                                        <asp:ListItem Value="3">RAPF</asp:ListItem>
                                                    </asp:DropDownList>

                                                </span>



                                            </fieldset>

                                        </div>

                                          <div class="form__row t-date-of-birth">
                                            <fieldset class="form__group form__group--inline">
                                                <legend>Your hire date*
                                                </legend>

                                                <span class="form__group-item">
                                                    <asp:DropDownList ID="hire_day" onchange="UpdateDate('hire')" runat="server" required="required" CssClass="select dob">
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
                                                    <asp:DropDownList ID="hire_month" runat="server" onchange="UpdateDate('hire')" required="required" CssClass="select dob">
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
                                                    <asp:DropDownList ID="hire_year" runat="server" onchange="UpdateDate('hire')" required="required" CssClass="select dob">
                                                        <asp:ListItem Value="">Year</asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:CompareValidator ID="CompareValidator5" runat="server" ErrorMessage="Invalid Date!" ControlToValidate="TextBox2" Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
                                              
                                                 <span style="visibility:hidden;"><asp:TextBox ID="TextBox2" required="required" runat="server"></asp:TextBox></span>


                                                </span>

                                            </fieldset>
                                        </div>

                                        <%if (RadioButtonList2.SelectedValue == "2")
                                            { %>

                                           <div class="form__row t-date-of-birth">
                                            <fieldset class="form__group form__group--inline">
                                                <legend>Your resignition/termination date*
                                                </legend>

                                                <span class="form__group-item">
                                                    <asp:DropDownList ID="resig_day" onchange="UpdateDate('resig')" runat="server" required="required" CssClass="select dob">
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
                                                    <asp:DropDownList ID="resig_month" runat="server" onchange="UpdateDate('resig')" required="required" CssClass="select dob">
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
                                                    <asp:DropDownList ID="resig_year" runat="server" onchange="UpdateDate('resig')" required="required" CssClass="select dob">
                                                        <asp:ListItem Value="">Year</asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:CompareValidator ID="CompareValidator6" runat="server" ErrorMessage="Invalid Date!" ControlToValidate="TextBox3" Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
                                                   <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                                                 <span style="visibility:hidden;"><asp:TextBox ID="TextBox3" required="required" runat="server"></asp:TextBox></span>


                                                </span>

                                            </fieldset>
                                        </div>

                                        <%} %>


                                    </asp:WizardStep>
                                    <asp:WizardStep ID="WizardStep2" runat="server" Title="Your Income">
                                        <% 
                                            string mde = "Normal Retirement";
                                            if (RadioButtonList2.SelectedValue == "2") mde = "Resignition/Terminiation";

                                        %>  
                                         <div class="form__key">
                                           <h3><%=mde %> Projection</h3>

                                        </div>
                                        <div class="form__key">
                                            * All information is required

                                        </div>
                                        <div class="form__row t-date-of-birth">
                                            <fieldset class="form__group form__group--inline">
                                                <legend>Annual Salary at Retirement or Average Annual if in Post less than 3 Years*
                                                </legend>

                                                <span class="form__group-item">
                                                    <asp:TextBox ID="salary" Text="" required="required" runat="server"></asp:TextBox>
                                                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Currency Only!" ControlToValidate="salary" Operator="DataTypeCheck" Type="Currency"></asp:CompareValidator>



                                                </span>

                                            </fieldset>
                                        </div>

                                    </asp:WizardStep>
                                    <asp:WizardStep ID="WizardStep3" runat="server" Title="Contributions">
                                        <% 
                                            string mde = "Normal Retirement";
                                            if (RadioButtonList2.SelectedValue == "2") mde = "Resignition/Terminiation";

                                        %>  
                                        <div class="form__key">
                                           <h3><%=mde %> Projection</h3>

                                        </div>
                                        <div class="form__key">
                                            * All information is required

                                        </div>
                                        <div class="form__row t-date-of-birth ">
                                            <fieldset class="form__group form__group--inline">
                                                <legend>Number of Contributions <strong>prior</strong> to January 1<sup>st</sup> 2004*
                                                </legend>

                                                <span class="form__group-item">
                                                    <%
                                                        int pre04 = 0;
                                                        int post04 = 0;
                                                        int normalservice = 65;

                                                        DateTime mrk = new DateTime(2004, 1, 1);
                                                        DateTime d1 = new DateTime(Convert.ToInt16(hire_year.SelectedValue), Convert.ToInt16(hire_month.SelectedValue), Convert.ToInt16(hire_day.SelectedValue));

                                                        if (DateTime.Compare(d1, mrk) < 0) normalservice = 60;

                                                        //retirement date
                                                        DateTime d2;
                                                        if (RadioButtonList2.SelectedValue == "1")
                                                               d2 = Convert.ToDateTime(TextBox1.Text).AddYears(normalservice);
                                                        
                                                        else d2 = Convert.ToDateTime(TextBox3.Text);


                                                        DateTime dtemp = new DateTime(d1.Year, d1.Month, d1.Day);
                                                        if (DateTime.Compare(d1, mrk) > 0)
                                                        {

                                                            while (DateTime.Compare(dtemp, d2) < 0)
                                                            {
                                                                post04++;
                                                                dtemp = dtemp.AddMonths(1);
                                                            }
                                                            //post04 = DateTime.Compare(dtemp, d2);
                                                            //Label1.Text = "1 :" + DateTime.Compare(d1, mrk) + ": " + d1.ToString() + " " + d2.ToString() + " " + mrk.ToString() + " " + dtemp.ToString() + " " + post04.ToString();
                                                        }
                                                        else
                                                        {

                                                            while (DateTime.Compare(dtemp, mrk) < 0)
                                                            {
                                                                dtemp = dtemp.AddMonths(1);
                                                                pre04++;
                                                                //Label2.Text = Label2.Text + dtemp.ToString("dd/MM/yyy") + ":" + DateTime.Compare(dtemp, mrk) + ",        ";
                                                            }

                                                            dtemp = new DateTime(mrk.Year, mrk.Month, mrk.Day);
                                                            while (DateTime.Compare(dtemp, d2) < 0)
                                                            {
                                                                dtemp = dtemp.AddMonths(1);
                                                                post04++;
                                                            }
                                                            // Label1.Text = "2 :" + DateTime.Compare(d1, mrk) + ": " + d1.ToString() + " " + d2.ToString() + " " + mrk.ToString() + " " + dtemp.ToString() + " " + post04.ToString();
                                                        }

                                                        prior_2004.Text = pre04.ToString();
                                                        after_2004.Text = post04.ToString();
                                                        normalyos.Text = normalservice.ToString();

                                                        //pre04 = Convert.ToDateTime(TextBox2.Text).AddYears(65).ToString("dd/MM/yyyy");
                                                    %>
                                                    <asp:TextBox ID="prior_2004" required="required" runat="server"></asp:TextBox>
                                                    <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Numbers Only!" ControlToValidate="prior_2004" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                                                </span>

                                            </fieldset>
                                        
                                        </div>

                                        <div class="form__row t-date-of-birth ">
                                            <fieldset class="form__group form__group--inline">
                                                <legend>Number of Contributions <strong>after</strong> January 1<sup>st</sup> 2004*
                                                </legend>

                                                <span class="form__group-item">
                                                    <asp:TextBox ID="after_2004"  required="required" runat="server"></asp:TextBox>
                                                    <asp:CompareValidator ID="CompareValidator3" runat="server" ErrorMessage="Numbers Only!" ControlToValidate="after_2004" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                                                </span>

                                            </fieldset>
                                        </div>
                                        <div style="visibility: hidden">
                                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                            <asp:TextBox ID="normalyos" runat="server"></asp:TextBox>
                                        </div>
                                    </asp:WizardStep>
                                    <asp:WizardStep ID="WizardStep4" runat="server" Title="Options">
                                        <% 
                                            string mde = "Normal Retirement";
                                            if (RadioButtonList2.SelectedValue == "2") mde = "Resignition/Terminiation";

                                        %>  
                                         <div class="form__key">
                                           <h3><%=mde %> Projection</h3>

                                        </div>
                                        <div class="form__key">
                                            * All information is required

                                        </div>
                                        <div class="form__row t-date-of-birth ">
                                            <fieldset class="form__group form__group--inline">
                                                <legend>At <%=mde %> I'd like to receive
                                                </legend>

                                                <span class="form__group-item">
                                                    
                                                    <asp:RadioButtonList ID="RadioButtonList1" required="required" runat="server">
                                                    </asp:RadioButtonList>
                                           
                                                </span>

                                            </fieldset>
                                        </div>
                                    </asp:WizardStep>
                                    <asp:WizardStep ID="WizardStep5" runat="server" Title="Results">
                                        <% 
                                            string mde = "Normal Retirement";
                                            if (RadioButtonList2.SelectedValue == "2") mde = "Resignition/Terminiation";

                                        %>  
                                         <div class="form__key">
                                        <h3><%=mde %> Projection</h3>

                                        </div>
                                        <div class="form__row t-date-of-birth ">
                                            <fieldset class="form__group form__group--inline">
                                                <legend>Here are your results <%=name.Text %>
                                                </legend>
                                                <% 

                                                    double s1 = Convert.ToDouble(salary.Text);
                                                    double pension1 = Convert.ToDouble(prior_2004.Text) / 600 * s1;
                                                    double pension2 = Convert.ToDouble(after_2004.Text) / 960 * s1;
                                                    double pension = pension1 + pension2;
                                                    double factor = 0;

                                                    int yearsofservice = 0;
                                                    if (RadioButtonList1.SelectedValue=="3")
                                                        yearsofservice = Convert.ToInt32(TextBox4.Text);

                                                    int yearstoretirement = 0;
                                                    if (RadioButtonList1.SelectedValue == "2"  && RadioButtonList2.SelectedValue =="2")
                                                    {
                                                        yearstoretirement = Convert.ToInt32(TextBox5.Text);


                                                        //database connection etc
                                                        string sqlcon = "Data Source=SQL5014.site4now.net;Initial Catalog=DB_A421EE_pspf;User Id=DB_A421EE_pspf_admin;Password=PSPF2019;";
                                                        System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection(sqlcon);


                                                        con.Open();
                                                        string checkuser = @" SELECT MAX([factor])
  FROM [DB_A421EE_pspf].[dbo].[tbl_discount_rates] tdr
  INNER JOIN tbl_config tc ON tdr.rate_applied = tc.[value] AND tc.variable = 'discount_rate' AND years_to_retirement = " + yearstoretirement;
                                                        System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(checkuser, con);

                                                        factor = Convert.ToDouble(cmd.ExecuteScalar().ToString());


                                                        con.Close();
                                                    }

                                                    double ciel = s1 * .75;

                                                    if (pension > ciel) pension = ciel;

                                                    

                                                %>
                                                <span class="form__group-item">
                                                    Your normal retirement date is <strong><%= 
                                                              Convert.ToDateTime(TextBox1.Text).AddYears(Convert.ToInt16(normalyos.Text)).ToString("dd/MM/yyyy")
                                                    %></strong>.
                                                    <% 
                                                        int mde1 = 0;
                                                        if (RadioButtonList1.SelectedValue == "1")
                                                        {
                                                            mde1 = 1;
                                                            %>
                                                    At retirement you will receive an Annual Pension equal to EC
                                                    <strong>
                                                        <%= string.Format("{0:C}", pension) %></strong>. 
                                                    <%}
                                                        else if (RadioButtonList1.SelectedValue == "2" && RadioButtonList2.SelectedValue == "1")
                                                        {
                                                            mde1 = 2;

                                                            %>
                                                    At retirement you will receive a <strong>Gratuity Payment</strong> equal to EC<strong><%= string.Format("{0:C}", (pension / 4 * 12.5))
                                                           %><%pension = (pension * 3 / 4); %></strong> and an <strong>Annual Reduced Pension</strong> equal to EC<strong><%=string.Format("{0:C}", pension) %></strong>. 
                                                                  <% }
                                                                      else if (RadioButtonList1.SelectedValue == "2" && RadioButtonList2.SelectedValue == "2")
                                                                      {
                                                                          mde1 = 3;
                                                                          %>

                                                       At resignation/termination you will receive a discounted <strong>Gratuity Payment</strong> equal to EC<strong><%= string.Format("{0:C}", ((pension / 4 * 12.5) * factor))
                                                           %><%pension = (pension * 3 / 4); %></strong> and at Normal retirement age an <strong>Annual Reduced Pension</strong> equal to EC<strong><%=string.Format("{0:C}", pension ) %></strong>. 
                                                                

                                                    <%}
                                                        else if (RadioButtonList1.SelectedValue == "3" && RadioButtonList2.SelectedValue == "2")
                                                        {
                                                            mde1 = 4;
                                                            %>
                                                    At resignition/termination you will receive a refund of EC
                                                    <% 

                                                        double refund = 0;
                                                        double stemp = s1;
                                                        for (int i = 1; i < yearsofservice; i++)
                                                        {
                                                            double cmp = stemp * 0.03;
                                                            stemp = stemp + cmp;
                                                            refund = refund + cmp;
                                                        }
                                                       
                                                        %>
                                                   <strong><%=string.Format("{0:C}", refund)%></strong>.
                                                    <%

                                                            pension = refund;

                                                        }

                                                        %>
                                               For a detailed projection of salaries above and below <strong><%=string.Format("{0:C}",s1) %></strong>. click <a href="chart.aspx?salary=<%=s1 %>&pension=<%=pension %>&mode=<%=mde1%>&prior04=<%=Convert.ToDouble(prior_2004.Text) %>&post04=<%=Convert.ToDouble(after_2004.Text) %>&factor=<%=factor %>&yos=<%=yearsofservice %>" target="_blank" style="color:#000; font-weight:bold;">here</a>. </span>
                                            </fieldset
                                        </div>
                                       
                                             

                                        
     
                                          

                                               <%-- drawGraph(<%=x1%>,<%=y1%>,<%=x2%>,<%=y2%>,<%=x3%>,<%=y3%>,<%=x4%>,<%=y4%>,<%=x5%>,<%=y5%>,
                                                    <%=z1%>, <%=z2%>, <%=z3%>, <%=z4%>, <%=z5%>);--%>


                                            
   
                                         
                                       

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
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterScriptContent" runat="server">
</asp:Content>
