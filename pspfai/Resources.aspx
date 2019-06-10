<%@ Page Title="Public Service Pension Fund: Resources" Language="C#" MasterPageFile="~/PSPFAI.Master" AutoEventWireup="true" CodeBehind="Resources.aspx.cs" Inherits="pspfai.Resources" %>
<%@ MasterType VirtualPath="~/PSPFAI.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--Page Title-->
    <section class="page-title" style="background: url(Content/Images/pages/loan_page.jpg);">
       <div class="floatover">
        <div class="container">
            <h2>Resources</h2>
            <ul class="title-manu">
                <li><a href="Home.aspx">home</a></li>
                 <li>|</li>
                <li><a href="resources.aspx">Resources</a></li>
                
            </ul>
        </div>

       </div>
    </section>
    <!--End Page Title-->

    <!--Start service style 2-->
    <section class="service-section">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="service-block text-center">
                        <div class="icon-area">
                            <div class="icon-box">
                                <i class="flaticon-clipboard"></i>
                            </div>
                            <a href="forms.aspx"><h5>Forms</h5></a>
                            <p>Our fillable PDF forms, allow customers to easily fill, validate and print forms before submitting to the office.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="service-block text-center">
                        <div class="icon-area">
                            <div class="icon-box">
                                <i class="flaticon-information"></i>
                            </div>
                            <a href="services-details.html"><h5>FAQ</h5></a>
                            <p>Chances are our FAQ catelog will have the answers to your inquiries. Also feel free to make suggestions.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="service-block text-center">
                        <div class="icon-area">
                            <div class="icon-box">
                                <i class="flaticon-seo-performance-marketing-graphic"></i>
                            </div>
                            <a href="reports.aspx"><h5>Reports</h5></a>
                            <p>Annually, we publish our audited Accounts & Financial Statements. You can subscribe below. </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="service-block text-center">
                        <div class="icon-area">
                            <div class="icon-box">
                                <i class="flaticon-calculator"></i>
                            </div>
                            <a href="calculator.aspx"><h5>Calculator</h5></a>
                            <p>Our pension calculator provides a much desired forecasting utility to aid in your decision making. </p>
                        </div>
                    </div>
                </div>
                

            </div>
        </div>
    </section>
    <!--End service style 2-->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterScriptContent" runat="server">
</asp:Content>
