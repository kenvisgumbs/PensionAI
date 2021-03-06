﻿<%@ Page Title="Public Service Pension Fund: Board" Language="C#" MasterPageFile="~/PSPFAI.Master" AutoEventWireup="true" CodeBehind="Personnel.aspx.cs" Inherits="pspfai.Personnel" %>

<%@ MasterType VirtualPath="~/PSPFAI.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--Page Title-->
    <section class="page-title" style="background: url(Content/Images/pages/pension_page.jpg) no-repeat center;">
        <div class="floatover">
            <div class="container">
                <h2>The <% =subPage %></h2>
                <ul class="title-manu">
                    <li><a href="Home.aspx">home</a></li>
                    <li>| </li>
                    <li><a href="About.aspx">About Us</a></li>
                    <li>| </li>
                    <li class="current"><% =subPage %></li>
                </ul>
            </div>
        </div>
    </section>
    <!--End Page Title-->

    <% if (subPage == "board")
        {
            if (Request.QueryString["person"] == null)
            {%>%>
    <!--Start tema area-->
    <section class="team-sec">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="sec-title text-center">
                        <a name="team">
                            <h2>Meet Our Board of Directors</h2>
                        </a>
                        <span class="border"></span>
                        <p>
                            The Public Service Pension Fund Board of Directors embodies sound,  
                            <br>
                         timely &amp; strategic Governance.
                        </p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="team-single text-center">
                        <figure>
                              <a href="?person=kathleen&type=board"><img src="Content/Images/personnel/kathleen.jpg" alt="team"></a>
                        </figure>

                        <div class="text-bottom">
                            <h5>Mrs. Kathleen Rogers</h5>
                            <h6>Chairman</h6>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="team-single text-center">
                        <figure>
                             <a href="?person=timothy&type=board"><img src="Content/Images/personnel/timothy.jpg" alt="team"></a>
                        </figure>
                      
                        <div class="text-bottom">
                            <h5>Mr Timothy A. Hodge</h5>
                            <h6>Member</h6>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="team-single text-center">
                        <figure>
                             <a href="?person=aidan&type=board"><img src="Content/Images/personnel/aidan.jpg" alt="team"></a>
                        </figure>
                       
                        <div class="text-bottom">
                            <h5>Dr. Aidan Harrigan</h5>
                            <h6>Member</h6>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="team-single text-center">
                        <figure>
                             <a href="?person=susan&type=board"><img src="Content/Images/personnel/susan.jpg" alt="team"></a>
                        </figure>
                       
                        <div class="text-bottom">
                            <h5>Ms. Susan Hodge</h5>
                            <h6>Member</h6>
                        </div>
                    </div>
                </div>
            </div>
            </div>
        <div class="clearfix"><</div>
        <div class="container">
            <div class="row">
               
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="team-single text-center">
                        <figure>
                             <a href="?person=michelle&type=board"><img src="Content/Images/personnel/michelle.jpg" alt="team"></a>
                        </figure>
                      
                        <div class="text-bottom">
                            <h5>Ms. Michelle Queeley</h5>
                            <h6>Member</h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--End team area-->
    <%}
        else
        {%>
             <section class="project-details">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-12">
                    <div class="left-content-area"><!-- left content area -->
                       <div class="img-wrapper">
                            <img id="singlephoto1" runat="server" src="/" alt="">
                       <p><a href="personnel.aspx?type=board">Back</a></p> 
                       </div>
                    </div><!-- //. left content area -->
               </div>
               <div class="col-md-9 col-sm-12">
                    <div class="right-content-area"><!-- right content area -->
                        <h3 id="singlename1" runat="server"></h3>
                        <div id="singletext1" runat="server"></div>
                    </div>
               </div>
              <div  class="col-md-12">
              </div>
             
            </div>
      </div>
    </section> 
       <% }
           }
           else
           {
               if (Request.QueryString["person"] == null)
               {%>

    <!--Start tema area-->
    <section class="team-sec">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="sec-title text-center">
                        <a name="team">
                            <h2>Meet Our Professional Staff</h2>
                        </a>
                        <span class="border"></span>
                        <p>
                            The Public Service Pension Fund professional staff are ready and
                            <br>
                            able to assist with your needs.
                        </p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="team-single text-center">
                        <figure>
                          <a href="?person=monifa&type=staff"> <img src="Content/Images/personnel/monifa.jpg" alt="team"></a> 
                        </figure>

                        <div class="text-bottom">
                            <h5>Monifa Brooks-Gumbs</h5>
                            <h6>Administrator</h6>
                        </div>
                    </div>
                </div>
                 <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="team-single text-center">
                        <figure>
                             <a href="?person=girdon&type=staff">  <img src="Content/Images/personnel/girdon.jpg" alt="team"></a>
                        </figure>

                        <div class="text-bottom">
                            <h5>Girdon Connor</h5>
                            <h6>Finance Manager</h6>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="team-single text-center">
                        <figure>
                             <a href="?person=lenia&type=staff">  <img src="Content/Images/personnel/lenia.jpg" alt="team"></a>
                        </figure>
                       
                        <div class="text-bottom">
                            <h5>Lenia Simpson</h5>
                            <h6>Accounts & Loans Officer</h6>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="team-single text-center">
                        <figure>
                              <a href="?person=sharice&type=staff"> <img src="Content/Images/personnel/sharice.jpg" alt="team"></a>
                        </figure>
                     
                        <div class="text-bottom">
                            <h5>Sharice Richardson</h5>
                            <h6>Accounts Clerk</h6>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="team-single text-center">
                        <figure>
                             <a href="?person=rochelle&type=staff">  <img src="Content/Images/personnel/rochelle.jpg" alt="team"></a>
                        </figure>
                       
                        <div class="text-bottom">
                            <h5>Rochelle Bryan</h5>
                            <h6>Pension Clerk</h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--End team area-->

    <% }
        else
        {  %>
    
    <section class="project-details">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-12">
                    <div class="left-content-area"><!-- left content area -->
                       <div class="img-wrapper">
                            <img id="singlephoto" runat="server" src="/" alt="">
                       <p><a href="personnel.aspx?type=staff">Back</a></p> 
                       </div>
                    </div><!-- //. left content area -->
               </div>
               <div class="col-md-9 col-sm-12">
                    <div class="right-content-area"><!-- right content area -->
                        <h3 id="singlename" runat="server"></h3>
                        <div id="singletext" runat="server"></div>
                    </div>
               </div>
              <div  class="col-md-12">
              </div>
             
            </div>
      </div>
    </section>
    
    
    <% }


        }%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterScriptContent" runat="server">
</asp:Content>
