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
                <li> | </li>
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
              
                    <%      string constr = ConfigurationManager.ConnectionStrings["sqlConnectionString"].ConnectionString;

                        using (System.Data.SqlClient.SqlConnection con = new System.Data.SqlClient.SqlConnection(constr))
                        {
                            string story;
                            story = Request.QueryString["press-id"];
                            using (System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand(@"SELECT tp.[press_id]
      ,[headline]
      ,[details], [short_details]
      ,CONVERT(varchar,[published], 103) pdt
      ,[pubisher]
      ,[media]
,tc.[category_id], category
      ,[display]
  FROM [DB_A421EE_pspf].[dbo].[tbl_press] tp INNER JOIN tbl_category tc ON tc.category_id = tp.category_id WHERE display= 1 Order by published Desc"))
                            {
                                cmd.CommandType = System.Data.CommandType.Text;
                                cmd.Connection = con;
                                con.Open();
                                using (System.Data.SqlClient.SqlDataReader sdr = cmd.ExecuteReader())
                                {
                                    while (sdr.Read()) {
                                        //sdr["media"].ToString();
                                        Response.Write(@"<div class=""item-holder"">
                        <div class=""image-box"">
                            <figure>
                               <img src=""" + sdr["media"].ToString() + @"""/>
                            </figure>
                          
                        </div>
                        <div class=""text-area"">
                            <div class=""content-text text-left"">
                                <div class=""title"">
                                  <h5>" + sdr["headline"].ToString() + @"</h5>
                                </div>
                                <div class=""author-com"">
                                    <ul>
                                        <li><strong>Posted</strong>&nbsp;" + sdr["pdt"].ToString() + @"</li>
                                        <li>&nbsp;&nbsp;<strong>Posted by</strong> Webmaster</li>
                                        <li>&nbsp;&nbsp;<strong>Category</strong>&nbsp;" + sdr["category"].ToString() + @"</li>
                                    </ul>
                                </div>
                                <div class=""text"">
                                    <p>"+ sdr["short_details"].ToString() +@"...</p>
                                </div>
                                <div class=""read-more-btn"">
                                    <a href=""press-single.aspx?press-id=" + sdr["press_id"].ToString() + "&category-id=" + sdr["category_id"].ToString() +  @""">Read More</a>
                                </div>                            
                            </div>    
                        </div>
                    </div>");
                                    }

                                }
                                con.Close();
                            }
                        }
                        %>
                
                <div class="busizone-pagination style2">
                    <ul>
                        <li><a href="#" title="">1</a></li>
                        <li><a href="#" title="">2</a></li>
                        <li><a href="#" title="">3</a></li>
                        <li><a href="#" title="">4</a></li>
                        <li><a href="#" title="" class="next-btn">Next</a></li>
                    </ul>
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
tbl_press tpc ON tpc.category_id = tc.category_id
group by tc.category_id,category,[sort]
order by [sort],category"))
                                    {
                                        cmd.CommandType = System.Data.CommandType.Text;
                                        cmd.Connection = con1;
                                        con1.Open();
                                        using (System.Data.SqlClient.SqlDataReader sdr = cmd.ExecuteReader())
                                        {
                                            while (sdr.Read()) {
                                               
                                                Response.Write(@"<li><a href=""#\"">" +  sdr["category"].ToString() + "<span>("+sdr["num"].ToString()+")</span></a></li>");
                                                
                                            }
                                          
                                        }
                                        con1.Close();
                                    }
                                }


                          %>
                            <!--<li class="active"><a href="#">Business <span>(25)</span></a></li>
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
                        <div class="item">
                            <div class="image-box">
                                <figure>
                                    <a href="blog-details.html"><img src="https://via.placeholder.com/100x75" alt=""></a>
                                </figure>
                            </div>
                            <div class="image-text">
                                <a href="blog-details.html"><h6>Condimentum incididunt amet a, pellente</h6></a>
                                <span><i class="fa fa-calendar" aria-hidden="true"></i>Nov 20, 2017</span>
                            </div>
                        </div>
                        <div class="item">
                            <div class="image-box">
                                <figure>
                                    <a href="blog-details.html"><img src="https://via.placeholder.com/100x75" alt=""></a>
                                </figure>
                            </div>
                            <div class="image-text">
                                <a href="blog-details.html"><h6>volutpat magna amet nullam lectus, parturient </h6></a>
                                <span><i class="fa fa-calendar" aria-hidden="true"></i>02 Feb, 2017</span>
                            </div>
                        </div>
                        <div class="item">
                            <div class="image-box">
                                <figure>
                                    <a href="blog-details.html"><img src="https://via.placeholder.com/100x75" alt=""></a>
                                </figure>
                            </div>
                            <div class="image-text">
                                <a href="blog-details.html"><h6>Magna wisi, et donec impdiet adipiscing volutpat </h6></a>
                                <span><i class="fa fa-calendar" aria-hidden="true"></i>02 Feb, 2017</span>
                            </div>
                        </div>
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
