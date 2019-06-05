<%@ Page Title="Public Service Pension Fund: Press" Language="C#" MasterPageFile="~/PSPFAI.Master" AutoEventWireup="true" CodeBehind="Press2.aspx.cs" Inherits="pspfai.Press2" %>

<%@ MasterType VirtualPath="~/PSPFAI.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--Page Title-->
    <section class="page-title" style="background: url(Content/Images/pages/coin_page.jpg) no-repeat center;">
        <div class="floatover">
            <div class="container">
                <h2>Press</h2>
                <ul class="title-manu">
                    <li><a href="Home.aspx">home</a></li>
                    <li>| </li>
                    <li class="current">Press</li>
                </ul>
            </div>
        </div>
    </section>
    <!--End Page Title-->


    <!--Blog Section-->
    <section class="blog-section style2">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-sm-12 col-xs-12">
                    <div class="left-side">
                        <asp:Repeater ID="rptPress" runat="server">

                            <HeaderTemplate></HeaderTemplate>
                            <ItemTemplate>
                                <div class="item-holder">
                                    <div class="image-box">
                                        <figure>
                                            <img src="<%# Eval("media")%>" />
                                        </figure>

                                    </div>
                                    <div class="text-area">
                                        <div class="content-text text-left">
                                            <div class="title">
                                                <h5><%#Eval("headline")%></h5>
                                            </div>
                                            <div class="author-com">
                                                <ul>
                                                    <li><strong>Posted</strong>&nbsp;<%#Eval("pdt")%></li>
                                                    <li>&nbsp;&nbsp;<strong>Posted by</strong> Webmaster</li>
                                                    <li>&nbsp;&nbsp;<strong>Category</strong>&nbsp;<%#Eval("category")%></li>
                                                </ul>
                                            </div>
                                            <div class="text">
                                                <p><%#Eval("short_details")%>...</p>
                                            </div>
                                            <div class="read-more-btn">
                                                <a href="press-single.aspx?press-id=<%#Eval("press_id")%>&category-id=<%#Eval("press_id")%>">Read More</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                            <FooterTemplate></FooterTemplate>
                        </asp:Repeater>
                        <div class="busizone-pagination style2">
                            <ul>
                                <li><a class="next-prv-btn" href="#" title=""><asp:LinkButton ID="lbPrevious" runat="server" OnClick="lbPrevious_Click">Prev</asp:LinkButton></a></li>
                                <asp:DataList ID="rptPaging" runat="server" OnItemCommand="rptPaging_ItemCommand" OnItemDataBound="rptPaging_ItemDataBound"
                                                RepeatDirection="Horizontal">
                                                <ItemTemplate>
                                                    <li><a href="#" title=""> <asp:LinkButton ID="lbPaging" runat="server" CommandArgument='<%# Eval("PageIndex") %>' CommandName="newPage"
                                                        Text='<%# Eval("PageText") %> ' Width="20px">      
                                                    </asp:LinkButton></a></li>
                                                </ItemTemplate>
                                            </asp:DataList>
                                <li><a href="#" title="" class="next-btn"><asp:LinkButton ID="lbNext" runat="server" OnClick="lbNext_Click">></asp:LinkButton></a></li>
                            </ul>
                            <div style="margin-top: 20px;">
                                <table>
                                    <tr>
                                        <asp:Label ID="lblpage" runat="server" Text="" Font-Size="Small"></asp:Label>
                                    </tr>
                                    <tr>
                                        <td>
                                           </td>
                                        <td>
                                            
                                        </td>
                                        <td>
                                            
                                        </td>
                                    </tr>
                                </table>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-12 col-xs-12">
                <div class="right-side-bar">
                    <div class="services-area">
                        <div class="title">
                            <h4>Categories</h4>
                        </div>
                        <ul class="service-menu">
                            <asp:Repeater ID="rptCategory" runat="server">
                                <HeaderTemplate></HeaderTemplate>
                                <ItemTemplate>
                                    <li><a href="press.aspx?category-id=<%#Eval("category_id")%>"><%# Eval("category") %><span>(<%# Eval("num") %>)</span></a></li>
                                </ItemTemplate>
                                <FooterTemplate></FooterTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                    <div class="blog-sidebar">
                        <div class="title">
                            <h4>Popular News</h4>
                        </div>
                        <asp:Repeater ID="rptPopular" runat="server">
                            <HeaderTemplate></HeaderTemplate>
                            <ItemTemplate>
                                <div class="item">
                                    <div class="image-box">
                                        <figure>
                                            <a href="press-single.aspx?press-id=<%#Eval("press_id")%>&category-id=<%#Eval("category_id")%>">
                                                <img width="100" height="75" src="<%#Eval("media_tn")%>"></a>
                                        </figure>
                                    </div>
                                    <div class="image-text">
                                        <a href="press-single.aspx?press-id=<%#Eval("press_id")%>&category-id=<%#Eval("category_id")%>">
                                            <h6><%# Eval("headline")%></h6>
                                        </a>
                                        <span><i class="fa fa-calendar" aria-hidden="true"></i>"+ <%# Eval("pdt")%></span>
                                    </div>
                                </div>
                            </ItemTemplate>
                            <FooterTemplate></FooterTemplate>
                        </asp:Repeater>

                    </div>

                </div>
            </div>
        </div>
        </div>
    </section>
    <!--End Blog Section-->


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterScriptContent" runat="server">
</asp:Content>
