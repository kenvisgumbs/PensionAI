<%@ Page Title="Public Service Pension Fund: Forms" Language="C#" MasterPageFile="~/PSPFAI.Master" AutoEventWireup="true" CodeBehind="forms.aspx.cs" Inherits="pspfai.PSPFForms" %>
<%@ MasterType VirtualPath="~/PSPFAI.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--Page Title-->
    <section class="page-title" style="background: url(Content/Images/pages/pagehsample.jpg);">
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
        <%--<div class="row">
            <div class="col-md-12">
                <ul class="project-filter post-filter text-center">
                    <li class="active" data-filter=".filter-item"><span>All Work</span></li>
                    <li data-filter=".business"><span>Business</span></li>
                    <li data-filter=".seo"><span>Seo</span></li>
                    <li data-filter=".finace"><span>Finace</span></li>
                    <li data-filter=".market"><span>Market</span></li>
                    <li data-filter=".branding"><span>Branding</span></li>
                </ul>
            </div>
        </div>--%>
        <div class="row">
         <div class="col-md-12">
                    <div class="sec-title text-center">
                      
                        <p>
                            Lorem ipsum dolor  amet mi ultricies interdum pede eu vestibulum vulputate maurimtum
                            <br>
                            commod rhoncus consectetuer reduce producet
                        </p>
                    </div>
                </div>

        </div>
        <div class="row project-content masonary-layout filter-layout">

            <!--Start single project-->
            <div class="col-md-4 col-sm-6 col-xs-12 filter-item business market">
                <div class="item">
                    <img src="https://via.placeholder.com/390x335" alt="">
                    <div class="overlay">
                        <a href="project-single.html"><i class="flaticon-broken-link"></i></a>
                        <a href="project-single.html" class="title-overly"><h5>Investment Plaing</h5></a>
                    </div>                    
                </div>
            </div>
            <!--End single project-->

            <!--Start single project-->
            <div class="col-md-4 col-sm-6 col-xs-12 filter-item business branding">
                <div class="item">
                    <img src="https://via.placeholder.com/390x335" alt="">
                    <div class="overlay">
                        <a target="_blank" href="Content/Documents/PSPF_Registration.pdf"><i class="flaticon-broken-link"></i></a>
                        <a target="_blank" href="Content/Documents/PSPF_Registration.pdf" class="title-overly"><h5>Registration Form</h5></a>
                    </div>                    
                </div>
            </div>
            <!--End single project-->

            <!--Start single project-->
            <div class="col-md-4 col-sm-6 col-xs-12 filter-item business market">
                <div class="item">
                    <img src="https://via.placeholder.com/390x335" alt="">
                    <div class="overlay">
                        <a target="_blank" href="Content/Documents/PSPF_Loan_Application_Form.pdf"><i class="flaticon-broken-link"></i></a>
                        <a target="_blank" href="Content/Documents/PSPF_Loan_Application_Form.pdf" class="title-overly"><h5>Loan Application</h5></a>
                    </div>                    
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
