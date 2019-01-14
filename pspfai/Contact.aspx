﻿<%@ Page Title="" Language="C#" MasterPageFile="~/PSPFAI.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="pspfai.Contact" MaintainScrollPositionOnPostback="true" %>
<%@ MasterType VirtualPath="~/PSPFAI.Master" %>
<%@ Register Assembly="BotDetect" Namespace="BotDetect.Web.UI" TagPrefix="BotDetect" %>

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
                        <h5>Pension Office</h5>
                        <p>James Ronald Webster Building,<br />The Valley, AI-2640, Anguilla, BWI</p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="contact-info text-center">
                        <i class="flaticon-old-typical-phone"></i>
                        <h5>Phone Number</h5>
                        <p>
                            +1 (264) 498-5079<br />
                            +1 (264) 497-2451
                        </p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 col-xs-12">
                    <div class="contact-info text-center">
                        <i class="flaticon-america"></i>
                        <h5>Social</h5>
                        <p style="text-transform: lowercase !important;">
                            www.pspf.ai, info@pspf.ai<br>
                            facebook/pspfai
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-md-12">
                <div class="form-sec">
                    <div  class="default-form contact-form" >
                        <div class="row">
                           <div class="col-md-6 col-sm-12 col-xs-12">
                                <div class="form-group">
                                    <asp:TextBox ID="txtName" placeholder="Name(s)" ValidationGroup="Contact"  required="required" runat="server"></asp:TextBox>
                                    <!-- <input type="text" name="name" placeholder="Your Name" required=""> -->
                                </div>
                            </div>
                             <div class="col-md-6 col-sm-12 col-xs-12">
                                <div class="form-group">
                                    <asp:TextBox ID="txtSurname" placeholder="Surname" required="required" runat="server"></asp:TextBox>
                                    <!-- <input type="email" name="email" placeholder="Email" required=""> -->
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-12 col-xs-12">
                                <div class="form-group">
                                    <asp:TextBox ID="txtEmail" placeholder="Email" TextMode="Email" required="required" runat="server"></asp:TextBox>
                                    <!-- <input type="email" name="email" placeholder="Email" required=""> -->
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-12 col-xs-12">
                                <div class="form-group">
                                    <asp:TextBox ID="txtPhone" placeholder="Phone" TextMode="Phone" required="required" runat="server"></asp:TextBox>
                                    <!-- <input type="tel" name="name" placeholder="Phone" required=""> -->
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-12 col-xs-12">
                                <div class="form-group">
                                    <asp:TextBox ID="txtOrganization" placeholder="Organization" runat="server"></asp:TextBox>
                                    <!-- <input type="url" name="name" placeholder="Website" required=""> -->
                                </div>
                            </div>
                            <div class="col-md-6 col-sm-12 col-xs-12">
                                <div class="form-group">
                                    <asp:TextBox ID="txtWorkPhone" placeholder="Work Phone" TextMode="Phone" runat="server"></asp:TextBox>
                                    <!-- <input type="url" name="name" placeholder="Website" required=""> -->
                                </div>
                            </div>
                            
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="form-group">
                                    <asp:TextBox ID="txtMessage" placeholder="Message"  TextMode="MultiLine" Rows="30" required="required" runat="server"></asp:TextBox>
                                    <!-- <textarea name="form_message" class="form-control textarea required" placeholder="Message"></textarea> -->
                                </div>
                            </div>
                             <div class="col-md-6 col-sm-12 col-xs-12">
                                <div class="form-group">
                                                   <asp:Label ID="CaptchaLabel" runat="server" AssociatedControlID="CaptchaCode">
                                                    Type the Captcha Code Below.
                                                    </asp:Label>
                                                    <BotDetect:WebFormsSimpleCaptcha ID="PSPFCaptcha" runat="server" />
                                                    <asp:TextBox ID="CaptchaCode" runat="server" CssClass="captcha" required="required"/>
                                                    <asp:Label ID="CaptchaErrorLabel" ForeColor="Red" Text="." runat="server"/>
                                </div>
                            </div>
                             <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="form-group">
                                    <asp:Button CssClass="thm-btn bg-clr4" ValidationGroup="Contact" ID="btnSubmit" runat="server" Text="submit" />
                                    <input class="thm-btn bg-clr4" type="reset" value="Clear" />
                                    <!-- <button type="submit" class="thm-btn bg-clr4">submit now</button> -->
                               </div>
                            </div>
                        
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--End contact us-->
    

<script type="text/javascript" src="//downloads.mailchimp.com/js/signup-forms/popup/unique-methods/embed.js" data-dojo-config="usePlainJson: true, isDebug: false"></script>
<script type="text/javascript">
     //window.dojoRequire(["mojo/signup-forms/Loader"], function (L) { L.start({ "baseUrl": "mc.us20.list-manage.com", "uuid": "c5fcfe19ef08397fe371130c3", "lid": "2188849241", "uniqueMethods": true }) })
</script>
<script type="text/javascript">
    
    function showRegisterPopUp() {
        document.cookie = 'MCEvilPopupClosed=;path=/;expires=Thu, 01 Jan 1970 00:00:00 UTC;';
        window.dojoRequire(["mojo/signup-forms/Loader"], function (L) { L.start({ "baseUrl": "mc.us20.list-manage.com", "uuid": "c5fcfe19ef08397fe371130c3", "lid": "2188849241", "uniqueMethods": true }) })
        

        //document.getElementById("open-popup").onclick = function() { showRegisterPopUp() };
    };
</script>
    
<input id="open-popup" type="button" value="test" onclick="return showRegisterPopUp();" />

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FooterScriptContent" runat="server">
    <!--gmap script-->
    <script type="text/javascript" src="Scripts/map.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBXrkGlBen34zFQKbPca5BbspXvguMsVzY"></script>
</asp:Content>

