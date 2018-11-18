<%@ Page Title="" Language="C#" MasterPageFile="~/PSPFAI.Master" AutoEventWireup="true" CodeBehind="Blog-Single.aspx.cs" Inherits="pspfai.Blog_Single" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--Page Title-->
    <section class="page-title" style="background: url(https://via.placeholder.com/1920x275);">
        <div class="container text-center">
            <h2>Blog Post</h2>
            <ul class="title-manu">
                <li><a href="Home.aspx">home</a></li>
                <li>//</li>
                <li>Blog</li>
            </ul>
        </div>
    </section>
    <!--End Page Title-->

    <!--Blog Section-->
    <section class="blog-details">
        <div class="container">
            <div class="row">
                <div class="col-md-8 col-sm-12 col-xs-12">
                    <div class="left-side">
                        <div class="item-holder">
                            <div class="image-box">
                                <figure>
                                    <a href="blog-single.aspx">
                                        <img src="https://via.placeholder.com/770x455" alt=""></a>
                                </figure>
                                <div class="date-box">
                                    <span class="date-day">20</span>
                                    <span class="date-year">Dec</span>
                                </div>
                            </div>
                            <div class="text-area">
                                <div class="content-text text-left">
                                    <div class="title">
                                        <a href="blog-single.aspx">
                                            <h5>France Prepares to Stake Its Place in World Hockey</h5>
                                        </a>
                                    </div>
                                    <div class="author-com">
                                        <ul>
                                            <li>Post by</li>
                                            <li><a href="#">Naziur Rahman</a></li>
                                            <li><a href="#">25 Comment</a></li>
                                        </ul>
                                    </div>
                                    <div class="image-text">
                                        <p>Donec natoque beatae porttitor eget vehicula leo. Id gravida volutpat magna amet nullam lectus, parturient ullamcorper sagittis, at lectus sapien orci sit arcu. Ac cras cras felis, eu faucibus porta imperdiet aeaoreet aenean, eget duis egestas sint, sollicitudin in nisl dolor. In a sodales eleifend mauris. Id nunc auctor sociis. Nulla ultrices sed id, ad amet et non, libero eget ligula volutpat metus viverra commodo, neque magna vel eget. Sit feugiat sed pellentesque proin condimentum vehicula, et vivamus fusce cras sed molestie. Eros a arcu duis erat, integer mollis. Mattis ante, nec adipiscing praesent per, a ante, volutpat nam aut ac. Libero in wisi et, vestibulum arcu sodales leo ac, dapibus magna et, mi wisi turpis.orem ipsum dolor sit amet, non et massa felis. Magna wisi, et donec imperdiet adipiscing volutpat dolor wisi, metus risus, tellus urna mauris iaculis velit, convallis fusce nec eget quisque. Ante lorem duis leo nam cras pellentesque, natoque metus aliquam vel, eget elit vel tellus.</p>

                                        <div class="blog-item">
                                            <ul class="left-side">
                                                <li><i class="fa fa-arrow-circle-right"></i>We have 25000 Happy Client</li>
                                                <li><i class="fa fa-arrow-circle-right"></i>24/7 Customer Support </li>
                                                <li><i class="fa fa-arrow-circle-right"></i>75 Over Services Provided</li>
                                            </ul>
                                            <ul class="right-side">
                                                <li><i class="fa fa-arrow-circle-right"></i>Free Advice Provied</li>
                                                <li><i class="fa fa-arrow-circle-right"></i>Research Company </li>
                                                <li><i class="fa fa-arrow-circle-right"></i>Achived Gobal Trust</li>
                                            </ul>
                                        </div>
                                        <div class="text">
                                            <i class="flaticon-left-quotes-sign"></i>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo.</p>
                                            <p class="name-quote">Naziur Rahman</p>
                                        </div>
                                        <p>Sollicitudin ut eu elit, pellentesque eu leo eu tempor volutpat, ipsum elementum porttitor auctor etiam risus at, etiam sed, aliquam cursus posuere. Odio viverra, ante venenatis adipiscing, id leo justo interdum nunc nec risus, fames felis mattis tincidunt, quam maecenas sem lectus vestibulum aperiam sit. Scelerisque nibh mi dui aenean faucibus, egestas neque porttitor nulla id, sit dictumst vestibulum quis, faucibus sem. Eget wisi hymenaeos penatibus molestie condimentue.</p>

                                        <div class="next-prv-btn">
                                            <a href="#" class="left-side">Previous</a>
                                            <a href="#" class="right-side">Next</a>
                                        </div>
                                    </div>
                                    <div class="comment-area">
                                        <div class="title">
                                            <h5>2 Comments</h5>
                                        </div>
                                        <div class="item">
                                            <div class="image-box">
                                                <figure>
                                                    <img src="https://via.placeholder.com/85x85" alt="">
                                                </figure>
                                            </div>
                                            <h6>Robert Wilson</h6>
                                            <span><i class="fa fa-calendar" aria-hidden="true"></i>Nov 20, 2017</span>
                                            <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudant tota rem ape riamipsa eaque  quae nisi ut aliquip commodo consequat.</p>
                                        </div>
                                        <div class="item">
                                            <div class="image-box">
                                                <figure>
                                                    <img src="https://via.placeholder.com/85x85" alt="">
                                                </figure>
                                            </div>
                                            <h6>Robert Wilson</h6>
                                            <span><i class="fa fa-calendar" aria-hidden="true"></i>Nov 20, 2017</span>
                                            <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudant tota rem ape riamipsa eaque  quae nisi ut aliquip commodo consequat.</p>
                                        </div>
                                    </div>
                                    <div class="form-area">
                                        <h3>Leave A Comments</h3>
                                        <form id="contact_form" name="contact_form" class="default-form" method="post">
                                            <div class="row clearfix">
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <div class="form-group">
                                                        <input type="text" name="form_name" class="form-control" value="" placeholder="Name" required="">
                                                    </div>
                                                </div>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <div class="form-group">
                                                        <input type="email" name="form_email" class="form-control required email" value="" placeholder="Email" required="">
                                                    </div>
                                                </div>
                                                <div class="col-md-12 col-sm-12 col-xs-12">
                                                    <div class="form-group">
                                                        <textarea name="form_message" class="form-control textarea required" placeholder="Comment"></textarea>
                                                    </div>
                                                    <div class="form-group">
                                                        <input id="form_botcheck" name="form_botcheck" class="form-control" type="hidden" value="">
                                                        <button class="thm-btn bg-clr4" type="submit" data-loading-text="Please wait...">Post Comment</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-12 col-xs-12">
                    <div class="right-side-bar">
                        <div class="search-area">
                            <form action="#" class="search-box">
                                <input type="search" placeholder="Type keyword...">
                                <button type="submit"><i class="flaticon-search" aria-hidden="true"></i></button>
                            </form>
                        </div>
                        <div class="services-area">
                            <div class="title">
                                <h4>Categories</h4>
                            </div>
                            <ul class="service-menu">
                                <li class="active"><a href="#">Business <span>(25)</span></a></li>
                                <li><a href="#">Finaces<span>(31)</span></a></li>
                                <li><a href="#">Workshop<span>(54)</span></a></li>
                                <li><a href="#">Investment<span>(12)</span></a></li>
                                <li><a href="#">Marketing<span>(45)</span></a></li>
                            </ul>
                        </div>
                        <div class="blog-sidebar">
                            <div class="title">
                                <h4>Popular News</h4>
                            </div>
                            <div class="item">
                                <div class="image-box">
                                    <figure>
                                        <a href="blog-details.aspx">
                                            <img src="https://via.placeholder.com/100x75" alt=""></a>
                                    </figure>
                                </div>
                                <div class="image-text">
                                    <a href="blog-details.aspx">
                                        <h6>Condimentum incididunt amet a, pellente</h6>
                                    </a>
                                    <span><i class="fa fa-calendar" aria-hidden="true"></i>Nov 20, 2017</span>
                                </div>
                            </div>
                            <div class="item">
                                <div class="image-box">
                                    <figure>
                                        <a href="blog-details.aspx">
                                            <img src="https://via.placeholder.com/100x75" alt=""></a>
                                    </figure>
                                </div>
                                <div class="image-text">
                                    <a href="blog-details.aspx">
                                        <h6>volutpat magna amet nullam lectus, parturient </h6>
                                    </a>
                                    <span><i class="fa fa-calendar" aria-hidden="true"></i>02 Feb, 2017</span>
                                </div>
                            </div>
                            <div class="item">
                                <div class="image-box">
                                    <figure>
                                        <a href="blog-details.aspx">
                                            <img src="https://via.placeholder.com/100x75" alt=""></a>
                                    </figure>
                                </div>
                                <div class="image-text">
                                    <a href="blog-details.aspx">
                                        <h6>Magna wisi, et donec impdiet adipiscing volutpat </h6>
                                    </a>
                                    <span><i class="fa fa-calendar" aria-hidden="true"></i>02 Feb, 2017</span>
                                </div>
                            </div>
                        </div>
                        <div class="archives-area">
                            <div class="title">
                                <h4>Keyword</h4>
                            </div>
                            <div class="archives">
                                <a href="#">Support</a>
                                <a href="#">Business Event</a>
                                <a href="#">Speakers</a>
                                <a href="#">Marketing</a>
                                <a href="#">Service</a>
                                <a href="#">Human</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--End Blog Section-->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="RevolutionSliderContent" runat="server">
</asp:Content>
