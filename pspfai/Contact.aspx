<%@ Page Title="" Language="C#" MasterPageFile="~/PSPFAI.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="pspfai.Contact" %>
<%@ MasterType VirtualPath="~/PSPFAI.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--Page Title-->
    <section class="page-title" style="background: url(https://via.placeholder.com/1920x275);">
        <div class="container text-center">
            <h2>Contact Us</h2>
            <ul class="title-manu">
                <li><a href="Home.aspx">home</a></li>
                <li>//</li>
                <li>Contact Us</li>
            </ul>
        </div>
    </section>
    <!--End Page Title-->

    <!--Start contact us-->
    <section class="contact-us">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <div id="map" class="map-cont"></div>
                    <h4>Our Contact Information</h4>
                </div>
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="contact-info text-center">
                        <i class="flaticon-placeholder"></i>
                        <h5>Office Address</h5>
                        <p>2540 Hermann Ridge Apt. 223, North Romainestad, ND 62927-0427</p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="contact-info text-center">
                        <i class="flaticon-old-typical-phone"></i>
                        <h5>Phone Number</h5>
                        <p>
                            (052) 611-5711, (633) 497-1888<br>
                            (062) 109-9222, (517) 548-4152
                        </p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="contact-info text-center">
                        <i class="flaticon-america"></i>
                        <h5>Offcial Website</h5>
                        <p>
                            www.busizone.com , info@gmail.com<br>
                            facebook/busizone.com
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                <div class="form-sec">
                    <form name="contact_form" class="default-form contact-form" method="post">
                        <div class="row">
                            <div class="col-md-6 col-sm-12 col-xs-12">
                                <div class="form-group">
                                    <input type="text" name="name" placeholder="Your Name" required="">
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-12 col-xs-12">
                                <div class="form-group">
                                    <input type="email" name="email" placeholder="Email" required="">
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-12 col-xs-12">
                                <div class="form-group">
                                    <input type="tel" name="name" placeholder="Phone" required="">
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-12 col-xs-12">
                                <div class="form-group">
                                    <input type="url" name="name" placeholder="Website" required="">
                                </div>
                            </div>
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="form-group">
                                    <textarea name="form_message" class="form-control textarea required" placeholder="Message"></textarea>
                                </div>
                                <div class="form-group text-left">
                                    <button type="submit" class="thm-btn bg-clr4">submit now</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!--End contact us-->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="RevolutionSliderContent" runat="server">
    <!--gmap script-->
    <script type="text/javascript" src="js/map.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key= API KEY HERE"></script>
</asp:Content>
