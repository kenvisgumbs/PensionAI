<%@ Page Title="" Language="C#" MasterPageFile="~/PSPFAI.Master" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="pspfai.Test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:ScriptManager ID="ScriptManager1" runat="server">
</asp:ScriptManager>
<style>
      #wizHeader li .prevStep
{
    background-color: #669966;
}
#wizHeader li .prevStep:after
{
    border-left-color:#669966 !important;
}
#wizHeader li .currentStep
{
    background-color: #21a53b;
}
#wizHeader li .currentStep:after
{
    border-left-color: #21a53b !important;
}
#wizHeader li .nextStep
{
    background-color:#C2C2C2;
}
#wizHeader li .nextStep:after
{
    border-left-color:#C2C2C2 !important;
}
#wizHeader
{
    list-style: none;
    overflow: hidden;
    font: 18px Helvetica, Arial, Sans-Serif;
    margin: 0px;
    padding: 0px;
}
#wizHeader li
{
    float: left;
}
#wizHeader li a
{
    color: white;
    text-decoration: none;
    padding: 10px 0 10px 55px;
    background: brown; /* fallback color */
    background: hsla(34,85%,35%,1);
    position: relative;
    display: block;
    float: left;
}
#wizHeader li a:after
{
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
#wizHeader li a:before
{
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
#wizHeader li:first-child a
{
    padding-left: 10px;
}
#wizHeader li:last-child 
{
    padding-right: 50px;
}
#wizHeader li a:hover
{
    background: #000;
}
#wizHeader li a:hover:after
{
    border-left-color: #000 !important;
}        
.content
{
    height:150px;           
    padding-top:75px;
    text-align:center;
    background-color:#F9F9F9;
    font-size:48px;
}

.button--compact {
    cursor: pointer;
    padding: 12px 8px;
    height: 52px;
    min-width: 100px;
    vertical-align: middle;
    color:#ffffff;
    background: #d1d5d5;
    transition: background 0.2s ease;
    border: none;
    border-radius: 4px;
    border-bottom: 3px solid #929494;
    margin-right:4px;
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
    margin-top: 15px;
    margin-bottom: 0.40625rem;
    color: #515151;
    
    margin-left:10px;
    zoom:1;
    font-weight:700;
}

legend {
    color: #006a00;
    display: block;
    font-weight: 500;
    margin-bottom: 0.75rem;
    font-size:13px;
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
    margin-left:10px;
    font-size:13px;
}

.select{ font-size:15px !important;}

  </style>
     <!--Page Title-->
    <section class="page-title" style="background: url(Content/Images/pages/pagehsample.jpg);">
       <div class="floatover">
            <div class="container">
                <h2>Annual Reports</h2>
                <ul class="title-manu">
                    <li><a href="Home.aspx">home</a></li>
                    <li>|</li>
                    <li><a href="resources.aspx">resources</a></li>
                    <li>|</li>
                    <li class="current">Annual Reports</li>
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
                <asp:WizardStep ID="WizardStep1" runat="server" Title="About You">
                    <div class="form__key">
    * All information is required

  </div>
  <div class="form__row t-date-of-birth ">
    <fieldset class="form__group form__group--inline">
      <legend>Your date of birth*
      </legend>
      
      <span class="form__group-item">
         
          <select name="dob_day" id="dob-day" class="dob select" required="required"><option selected="selected" value="">Day</option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
<option value="31">31</option></select>
      </span>
          <span class="form__group-item">
           
            <select name="dob_month" id="dob-month" class="dob select" required="required"><option selected="selected" value="">Month</option>
<option value="1">January</option>
<option value="2">February</option>
<option value="3">March</option>
<option value="4">April</option>
<option value="5">May</option>
<option value="6">June</option>
<option value="7">July</option>
<option value="8">August</option>
<option value="9">September</option>
<option value="10">October</option>
<option value="11">November</option>
<option value="12">December</option></select>
          </span>
          <span class="form__group-item">
            
            <select name="dob_year" id="dob-year" class="dob select" required="required"><option selected="selected" value="">Year</option>
<option value="1944">1944</option>
<option value="1945">1945</option>
<option value="1946">1946</option>
<option value="1947">1947</option>
<option value="1948">1948</option>
<option value="1949">1949</option>
<option value="1950">1950</option>
<option value="1951">1951</option>
<option value="1952">1952</option>
<option value="1953">1953</option>
<option value="1954">1954</option>
<option value="1955">1955</option>
<option value="1956">1956</option>
<option value="1957">1957</option>
<option value="1958">1958</option>
<option value="1959">1959</option>
<option value="1960">1960</option>
<option value="1961">1961</option>
<option value="1962">1962</option>
<option value="1963">1963</option>
<option value="1964">1964</option>
<option value="1965">1965</option>
<option value="1966">1966</option>
<option value="1967">1967</option>
<option value="1968">1968</option>
<option value="1969">1969</option>
<option value="1970">1970</option>
<option value="1971">1971</option>
<option value="1972">1972</option>
<option value="1973">1973</option>
<option value="1974">1974</option>
<option value="1975">1975</option>
<option value="1976">1976</option>
<option value="1977">1977</option>
<option value="1978">1978</option>
<option value="1979">1979</option>
<option value="1980">1980</option>
<option value="1981">1981</option>
<option value="1982">1982</option>
<option value="1983">1983</option>
<option value="1984">1984</option>
<option value="1985">1985</option>
<option value="1986">1986</option>
<option value="1987">1987</option>
<option value="1988">1988</option>
<option value="1989">1989</option>
<option value="1990">1990</option>
<option value="1991">1991</option>
<option value="1992">1992</option>
<option value="1993">1993</option>
<option value="1994">1994</option>
<option value="1995">1995</option>
<option value="1996">1996</option>
<option value="1997">1997</option>
<option value="1998">1998</option>
<option value="1999">1999</option></select>
          </span>
    </fieldset>
  </div>

  <div class="form__row t-date-of-birth ">
    <fieldset class="form__group form__group--inline">
      <legend>Your Employer*
      </legend>
      
      <span class="form__group-item">
          <select name="employer" id="employer" class="dob select" required="required"><option selected="selected" value="">Employer</option>
<option value="1">PSPF Office</option>
<option value="2">GOA</option>
<option value="3">ADB</option>
<option value="4">HAA</option>
<option value="5">May</option>
<option value="6">June</option>
<option value="7">July</option>
<option value="8">August</option>
<option value="9">September</option>
<option value="10">October</option>
<option value="11">November</option>
<option value="12">December</option></select>

      </span>

    </fieldset>

  </div>

                     <div class="form__row t-date-of-birth ">
    <fieldset class="form__group form__group--inline">
      <legend>Your Name
      </legend>
      
      <span class="form__group-item">
          <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
           </span>

    </fieldset>

  </div>
                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep2" runat="server" Title="Your Income">
                    <textarea id="TextArea1" cols="150" rows="5"></textarea>

                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep3" runat="server" Title="Contributions">
                <textarea id="TextArea2" cols="150" rows="5"></textarea>

                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep4" runat="server" Title="Options">
                <textarea id="TextArea3" cols="150" rows="5"></textarea>

                </asp:WizardStep>
                <asp:WizardStep ID="WizardStep5" runat="server" Title="Results">
                <textarea id="TextArea4" cols="150" rows="5"></textarea>

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
                         <asp:Button ID="btnNext" runat="server" Text="Next >>" CssClass="button--compact button--primary"
                             CausesValidation="true"
                             CommandName="MoveNext"
                          />
                     </td>
                 </tr>
             </table>
         </StartNavigationTemplate>
  
         <StepNavigationTemplate>
             <table cellpadding="3" cellspacing="3">
                 <tr>
                     <td>
                      <asp:Button ID="btnPrevious" runat="server" Text="<< Previous"
                             CausesValidation="false"  CssClass="button--compact button--secondary btn"
                             CommandName="MovePrevious"
                          />
                    
                     </td>
                     <td>
                      
                          <asp:Button ID="btnNext" runat="server" Text="Next >>" CssClass="button--primary button--compact"
                             CausesValidation="true"
                             CommandName="MoveNext"
                          />
                     </td>
                 </tr>
             </table>
         </StepNavigationTemplate>
        <FinishNavigationTemplate>
                        <table cellpadding="3" cellspacing="3">
                            <tr>
                              <td>
                                    <asp:Button ID="btnPrevious" runat="server" Text="<< Previous" CausesValidation="false"
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
