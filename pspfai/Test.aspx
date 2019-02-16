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
                    <table>
                        <tr>
                            <td>page1</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>Page 2</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>Page3</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
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
                         <asp:Button ID="btnNext" runat="server" Text="Next >>" CssClass="btn btn-evernote"
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
                             CausesValidation="false"  CssClass="btn btn-premium"
                             CommandName="MovePrevious"
                          />
                    
                     </td>
                     <td>
                      
                          <asp:Button ID="btnNext" runat="server" Text="Next >>" CssClass="btn btn-evernote"
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
                                        CssClass="btn btn-premium" CommandName="MovePrevious" />
                                
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
