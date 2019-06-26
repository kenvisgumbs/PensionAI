<%@ Page Title="Public Service Pension Fund: Press" Language="C#" MasterPageFile="~/PSPFAI.Master" AutoEventWireup="true" CodeBehind="Press.aspx.cs" Inherits="pspfai.Press" %>

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
                        <p id="pcatFilter" runat="server">Filter Category='<asp:Label ID="CategoryFilter" runat="server" Text=""></asp:Label>'. Remove <a href="press.aspx">(X)</a></p>
                        <asp:Repeater ID="rptPress" runat="server">

                            <HeaderTemplate></HeaderTemplate>
                            <ItemTemplate>
                                <div class="item-holder">
                                    <div class="image-box">
                                        <figure>
                                            <img width="770" height="455" src="<%# Eval("media")%>" />
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
                                                <a href="press-single.aspx?press-id=<%#Eval("press_id")%>&category-id=<%#Eval("category_id")%>">Read More</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </ItemTemplate>
                            <FooterTemplate></FooterTemplate>
                        </asp:Repeater>
                        <div class="busizone-pagination style2">
                            <ul>
                               <li id="lblPreviousli" runat="server"><asp:LinkButton ID="lbPrevious" CssClass="next-btn2" runat="server" OnClick="lbPrevious_Click">< Prev</asp:LinkButton></li> 
                                <asp:DataList ID="rptPaging" runat="server" OnItemCommand="rptPaging_ItemCommand" OnItemDataBound="rptPaging_ItemDataBound"
                                                RepeatDirection="Horizontal">
                                  
                                                <ItemTemplate>
                                                    <li><asp:LinkButton ID="lbPaging" runat="server" CommandArgument='<%# Eval("PageIndex") %>' CommandName="newPage"
                                                        Text='<%# Eval("PageText") %> '>      
                                                    </asp:LinkButton></li>
                                                </ItemTemplate>
                                 
                                            </asp:DataList>
                               <li><asp:LinkButton CssClass="next-btn" ID="lbNext" runat="server" OnClick="lbNext_Click">Next ></asp:LinkButton></li>
                            </ul>
                            <div style="margin-top:10px; margin-left:10px;">
                                <table>
                                    <tr>
                                        <asp:Label ID="lblpage" runat="server" Text="" Font-Size="Small"></asp:Label>
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
                             <%  string constr1 = ConfigurationManager.ConnectionStrings["sqlConnectionString"].ConnectionString;

                                using (System.Data.SqlClient.SqlConnection con1 = new System.Data.SqlClient.SqlConnection(constr1))
                                {
                                    
                                    using (System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(@"select tc.category_id, category,[sort], count(press_id) num FROM tbl_category tc LEFT OUTER JOIN
tbl_press tpc ON tpc.category_id = tc.category_id WHERE display = 1
group by tc.category_id, category,[sort]
order by [sort],category"))
                                    {
                                        cmd.CommandType = System.Data.CommandType.Text;
                                        cmd.Connection = con1;
                                        con1.Open();
                                        string category;
                                        category = Request.QueryString["category-id"];
                                        using (System.Data.SqlClient.SqlDataReader sdr = cmd.ExecuteReader())
                                        {
                                            while (sdr.Read()) {
                                                if (category != sdr["category_id"].ToString() )
                                                Response.Write(@"<li><a href=""press.aspx?category-id="+ sdr["category_id"].ToString() + @"&category="+ sdr["category"].ToString() + @""">" +  sdr["category"].ToString() + "<span>("+sdr["num"].ToString()+")</span></a></li>");
                                                else Response.Write(@"<li class=""active""><a href=""press.aspx?category-id="+ sdr["category_id"].ToString() + @"&category="+ sdr["category"].ToString() + @""">" +  sdr["category"].ToString() + "<span>("+sdr["num"].ToString()+")</span></a></li>");
                                            }
                                          
                                        }
                                        con1.Close();
                                    }
                                }


                          %>
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
                                        <span><i class="fa fa-calendar" aria-hidden="true"></i><%# Eval("pdt")%></span>
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
