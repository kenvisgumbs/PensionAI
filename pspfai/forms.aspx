<%@ Page Title="Public Service Pension Fund: Forms" Language="C#" MasterPageFile="~/PSPFAI.Master" AutoEventWireup="true" CodeBehind="forms.aspx.cs" Inherits="pspfai.PSPFForms" %>
<%@ MasterType VirtualPath="~/PSPFAI.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--Page Title-->
    <section class="page-title" style="background: url(Content/Images/pages/loan_page.jpg);">
       <div class="floatover">
            <div class="container">
                <h2>PSPF Forms</h2>
                <ul class="title-manu">
                    <li><a href="Home.aspx">home</a></li>
                    <li>|</li>
                    <li><a href="resources.aspx">resources</a></li>
                    <li>|</li>
                    <li class="current">Forms</li>
                </ul>
            </div>
      </div>
    </section>
    <!--End Page Title-->

    <!--Start latest project area-->
<section class="latest-project-area style-two">
    <div class="container">
       <div class="row">
         <div class="col-md-12">
                    <div class="sec-title text-center">
                      
                        <p>
                            All forms on this page are provided in Portable Document Format(PDF). Download the desired form fill, print
                           <br>
                          and return to the Public Service Pension Office.
                        </p>
                    </div>
             <div style="text-align:center; display:block; margin:0 0 20px 0;"><a target="_blank" href="https://get.adobe.com/reader/"><img src="Content/Images/pages/getacrobat.png" width="180" height="57" /></a></div>
                </div>

        </div>
        <div class="row project-content masonary-layout filter-layout">

            <!--Start single project-->
            <div class="col-md-2 col-sm-6 col-xs-12 filter-item business branding">
                
                <div class="item">
                   
                       <img width="195" height="168" src="Content/Images/pages/document_icons.png" alt="">
                        <div class="overlay">
                            <a target="_blank" href="Content/Documents/PSPF_Registration.pdf"><i class="flaticon-unlink" aria-hidden="true"></i></a>
                           
                        </div> 
                    <a target="_blank" href="Content/Documents/PSPF_Registration.pdf" class="title-overly"><h5>Registration Form</h5></a>      
                </div>
            </div>
            <!--End single project-->

            <!--Start single project-->
            <div class="col-md-2 col-sm-6 col-xs-12 filter-item business market">
                <div class="item">
                    <img width="195" height="168" src="Content/Images/pages/document_icons.png" alt="">
                        <div class="overlay">
                    <a target="_blank" href="Content/Documents/PSPF_Loan_Application_Form.pdf"><i class="flaticon-unlink" aria-hidden="true"></i></a>
                            </div>
                      <a target="_blank" href="Content/Documents/PSPF_Registration.pdf" class="title-overly"> <h5>Loan Application</h5></a>
                                  
                </div>
            </div>
            <!--End single project-->

        
         
        </div> 
    </div>
</section>
<!--End latest project area-->

    

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterScriptContent" runat="server">
</asp:Content>
