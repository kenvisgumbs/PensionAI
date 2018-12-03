<%@ Page Title="" Language="C#" MasterPageFile="~/PSPFAI.Master" AutoEventWireup="true" CodeBehind="404.aspx.cs" Inherits="pspfai._404" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--Page Title-->
    <section class="page-title" style="background: url(https://via.placeholder.com/1920x275);">
        <div class="container text-center">
            <h2>404</h2>
            <ul class="title-manu">
                <li><a href="Home.aspx">home</a></li>
                <li>//</li>
                <li><a href="project.aspx">404</a></li>
            </ul>
        </div>
    </section>
    <!--End Page Title-->

    <!--Start Error Page-->
    <section class="error-page">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="error-text text-center">
                        <h1>404</h1>
                        <h5>Page Do Not Found</h5>
                        <a href="Home.aspx" class="error-btn thm-btn bg-clr4">Go To Home</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--End Error Page-->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterScriptContent" runat="server">
</asp:Content>
