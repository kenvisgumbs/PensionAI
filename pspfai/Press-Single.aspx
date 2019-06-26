<%@ Page Title="Public Service Pension Fund: Press" Language="C#" MasterPageFile="~/PSPFAI.Master" AutoEventWireup="true" CodeBehind="Press-Single.aspx.cs" Inherits="pspfai.Press_Single" %>
<%@ MasterType VirtualPath="~/PSPFAI.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--Page Title-->
     <section class="page-title" style="background: url(Content/Images/pages/pension1_page.jpg) no-repeat center;">
       <div class="floatover">
        <div class="container">
            <h2>Press</h2>
            <ul class="title-manu">
                <li><a href="Home.aspx">home</a></li>
                <li> | </li>
                <li class="current">Press</li>
            </ul>
        </div>
       </div>
    </section>
    <!--End Page Title-->

    <!--Begin Blog Section-->
   
    <section class="blog-details">
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-sm-12 col-xs-12">
                <div class="left-side">
                     <%
                         bool hasRows = false;
                         if (Request.QueryString["press-id"] != null)
                         {

                             string constr = ConfigurationManager.ConnectionStrings["sqlConnectionString"].ConnectionString;

                             using (System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection(constr))
                             {
                                 string story;
                                 story = Request.QueryString["press-id"];
                                 using (System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(@"SELECT [press_id]
      ,[headline]
      ,[details]
      ,CONVERT(varchar,[published], 103) pdt
      ,[pubisher]
      ,[media]
,tc.[category_id], category
      ,[display]
  FROM [DB_A421EE_pspf].[dbo].[tbl_press] tp INNER JOIN tbl_category tc ON tc.category_id = tp.category_id WHERE display= 1 and press_id= " + story))
                                 {
                                     cmd.CommandType = System.Data.CommandType.Text;
                                     cmd.Connection = con;
                                     con.Open();
                                     using (System.Data.SqlClient.SqlDataReader sdr = cmd.ExecuteReader())
                                     {
                                         sdr.Read();
                                         mainImage.Src = sdr["media"].ToString();
                                         Headline.InnerText = sdr["headline"].ToString();
                                         storyDetails.InnerHtml = sdr["details"].ToString();
                                         published.InnerText = " " + sdr["pdt"].ToString();
                                         category.InnerText = sdr["category"].ToString();
                                         hasRows = true;
                                     }

                                     //update view count
                                     string qry = @"Update tbl_press set view_count = view_count + 1 WHERE press_id = " + story;
                                     System.Data.SqlClient.SqlCommand cmd1 = new System.Data.SqlClient.SqlCommand(qry);
                                         cmd1.CommandType = System.Data.CommandType.Text;
                                     cmd1.Connection = con;
                                     cmd1.ExecuteScalar();
                                     con.Close();
                                 }
                             }
                         }

                         if (hasRows)
                         { %>
                    <div class="item-holder">
                        <div class="image-box">
                            <figure>
                               <img id="mainImage" runat="server" src="" alt="">
                            </figure>
                           
                        </div>
                        <div class="text-area">
                            <div class="content-text text-left">
                                <div class="title">
                                    <h5 id="Headline" runat="server"></h5>
                                </div>
                                <div class="author-com">
                                    <ul>
                                        <li><strong>Published</strong>&nbsp;<span id="published" runat="server" ></span></li>
                                        <li>&nbsp;&nbsp;<strong>Posted by</strong> &nbsp;Webmaster</li>
                                        <li>&nbsp;&nbsp;<strong>Category</strong>&nbsp;<span id="category" runat="server"></span></li>
                                    </ul>
                                </div>
                                <div id="storyDetails" runat="server" class="image-text">
                                  
                                </div>
                            </div>   
                        </div>
                    </div>

                    <%}
    else
    {%>
  <div class="item-holder">
                       <div class="text-area">
                            <div class="content-text text-left">
                                <div class="title">
                                    <h5>Results</h5>
                                </div>
                                <div class="image-text">
                                   <p>No record(s) Found!</p>
                                </div>
                            </div>   
                        </div>
                    </div>
                    <%} %>
                </div>
            </div>
            <div class="col-md-4 col-sm-12 col-xs-12">
                <div class="right-side-bar">
                    <div class="search-area">
                      
                    </div>
                    <div class="services-area">
                        <div class="title">
                            <h4>Categories</h4>
                        </div>                         
                        <ul class="service-menu">
                            <%  string constr1 = ConfigurationManager.ConnectionStrings["sqlConnectionString"].ConnectionString;

                                using (System.Data.SqlClient.SqlConnection con1 = new System.Data.SqlClient.SqlConnection(constr1))
                                {
                                    
                                    using (System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(@"select tc.category_id, category,[sort], count(press_id) num FROM tbl_category tc LEFT OUTER JOIN
tbl_press tpc ON tpc.category_id = tc.category_id Where display = 1
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
                           <!-- <li class="active"><a href="#">Business <span>(25)</span></a></li>
                            <li><a href="#">Finaces<span>(31)</span></a></li>
                            <li><a href="#">Workshop<span>(54)</span></a></li>
                            <li><a href="#">Investment<span>(12)</span></a></li>
                            <li><a href="#">Marketing<span>(45)</span></a></li>-->
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
