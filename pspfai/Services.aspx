<%@ Page Title="Public Service Pension Fund: Services" Language="C#" MasterPageFile="~/PSPFAI.Master" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="pspfai.Services" %>
<%@ MasterType VirtualPath="~/PSPFAI.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--Page Title-->
    <section class="page-title" style="background: url(Content/Images/pages/pagehsample.jpg);">
         <div class="floatover">
            <div class="container">
                <h2>Services</h2>
                <ul class="title-manu">
                    <li><a href="Home.aspx">home</a></li>
                    <li>|</li>
                    <li>Services</li>
                </ul>
            </div>
          </div>
    </section>
    <!--End Page Title-->


    <!--Start service style 2-->
    <section class="service-section style2">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="service-block text-left">
                        <div class="icon-area">
                            <div class="icon-box">
                                <figure>
                                    <img src="Content/Images/pages/pension_sm.jpg" alt="services-1"></figure>
                                <i class="flaticon-rocking-chair-with-dollar-sign-silhouette"></i>
                            </div>
                            <div class="service-det">
                                <a href="service-details.aspx?type=pension">
                                    <h5>Pension</h5>
                                </a>
                                <p>Pension is a monthly amount paid at retirement. Contributors qualify for a pension after 10 continuous years of contributions.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="service-block text-left">
                        <div class="icon-area">
                            <div class="icon-box">
                                <figure>
                                    <img src="Content/Images/pages/gratuity_sm.jpg" alt="services-1"></figure>
                                <i class="flaticon-retirement"></i>
                            </div>
                            <div class="service-det">
                                <a href="service-details.aspx?type=gratuity">
                                    <h5>Gratuity Payments
                                    </h5>
                                </a>
                                <p>Gratuity is a one-time lump sum payment made to Contributors who have at least 10 years of service.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="service-block text-left">
                        <div class="icon-area">
                            <div class="icon-box">
                                <figure>
                                    <img src="Content/Images/pages/refunds_sm.jpg" alt="services-1"></figure>
                                <i class="flaticon-money"></i>
                            </div>
                            <div class="service-det">
                                <a href="service-details.aspx?type=refund">
                                    <h5>Refunds</h5>
                                </a>
                                <p>Refund is a payment of your contributions plus interest upon retirement or resignation for less than 10 years of service.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="service-block text-left">
                        <div class="icon-area">
                            <div class="icon-box">
                                <figure>
                                    <img src="Content/Images/pages/survivor_sm.jpg" alt="services-1"></figure>
                                <i class="flaticon-family"></i>
                            </div>
                            <div class="service-det">
                                <a href="service-details.aspx?type=survivor">
                                    <h5>Survivor's Pensions
                                    </h5>
                                </a>
                                <p>Survivors Pension is a monthly payment made to the Spouse and Dependent Children of a Contributor.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="service-block text-left">
                        <div class="icon-area">
                            <div class="icon-box">
                                <figure>
                                    <img src="Content/Images/pages/early_sm.jpg" alt="services-1"></figure>
                                <i class="flaticon-cheque"></i>
                            </div>
                            <div class="service-det">
                                <a href="service-details.aspx?type=early">
                                    <h5>Early Retirement</h5>
                                </a>
                                <p>In special cases with approval, a Contributor who has 5 years left to normal retirement can receive Early Retirement.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-sm-6 col-xs-12">
                    <div class="service-block text-left">
                        <div class="icon-area">
                            <div class="icon-box">
                                <figure>
                                    <img src="Content/Images/Pages/pills_sm.jpg" alt="services-1"></figure>
                                <i class="flaticon-doctor-stethoscope"></i>
                            </div>
                            <div class="service-det">
                                <a href="service-details.aspx?type=medical">
                                    <h5>Medical Boarding</h5>
                                </a>
                                <p>On Medical evidence that the Contributor by reason of infirmity of mind or body, is no longer capable of performing duties..</p>
                            </div>
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
