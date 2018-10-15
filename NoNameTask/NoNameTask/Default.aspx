<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="NoNameTask._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Content/Default.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">
<div id="wraper">
    <div class="nav">
        <div class="left">
            <img src="Images/HomeLogo.png" />
        </div>
        <div class="right">
            <i class="fas fa-bars bar"></i>
        </div>
    </div>
    <div class="scroll">
        <div id="sidebar">
        <div class="logo">
            <img src="<%Response.Write(MenyHeaders[0].LogoPath);%>" alt="">
            <p><%Response.Write(MenyHeaders[0].Text);%></p>
        </div>
        <div class="BlogezyMeny">
            <ul>
                <% foreach (var menyItem in MenyItems)
                    {
                        if (menyItem.MenyItemIns.Count != 0)
                        {
                            %>
                                 <li class="itemHead">
                                     <% Response.Write(menyItem.Name);%>
                                </li>
                                <ul class="itemMain">
                            <%
                            foreach (var menyItemIn in menyItem.MenyItemIns)
                            {
                                %>
                                    <li class="<%Response.Write(menyItemIn.Name);%>"><%Response.Write(menyItemIn.Name);%></li>
                                    <%
                            }
                            %>
                                    </ul>
                                    <%
                            continue;
                        }
                        %>
                        <li class="<%Response.Write(menyItem.Name);%>">
                            <%Response.Write(menyItem.Name); %>
                        </li>
                <%
                    }

                   %>
            </ul>
     </div>
</div>
    </div>
	  <div class="page-wrapper">
		  <section>
			  <div class="container">
				  <div class="row">
					  <div class="col-lg-12">
						  <div class="page-title">
							  <div class="row">
								  <div class="col-md-9 col-xs-12">
									  <h2>
										  <span>News and Stories</span>
									  </h2>
									  <p class="subtitle text-muted">
										  Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Proin gravida nibh vel velit auctor Aenean sollicitudin, adipisicing elit sed lorem quis bibendum auctor.
									  </p>
								  </div>
							  </div>
						  </div>
					  </div>
				  </div>
			  </div>
		  </section>
		  <section class="mt-5 pb-5 main">
			  <div class="container">
				  <div class="row">
					  <!--Content-->
					  <div class="col-lg-8">
						  <!--Post first-->
						  <article class="post">
							  <div class="post-header">
								  <h2 class="post-title">
									  <a href="#">Beautiful Day With Friends In Paris</a>
								  </h2>
								  <ul class="post-meta">
									  <li>
										  <i class="fas fa-calendar-alt"></i>
										   <a>July 03, 2017</a>
									  </li>
									  <li>
										  <i class="fas fa-pencil-alt"></i>
										  <a href="#">Branding</a>
										  <a href="#">Design</a>
									  </li>
									  <li>
										  <i class="fas fa-comments"></i>
										  <a href="#">3 Comments</a>
									  </li>
								  </ul>
							  </div>
							  <div class="post-preview">
								  <a href="#">
                                      <img src="Images/HomeImg01.jpg" style="width:100%;"/>
								  </a>
							  </div>
							  <div class="post-content">
								  <p>
									  Whether an identity or campaign, we make your brand visible, relevant and effective by placing the digital at the center of its ecosystem, without underestimating the power of traditional media. Whether an identity or campaign, we make your brand visible.
								  </p>
							  </div>
							  <div class="btnMore">
								  <a href="#" class="btn btn-outline-custom">
									  Read More
                                      <i class="fas fa-arrow-right"></i>
								  </a>
							  </div>
						  </article>
						  <!--Post first End-->

						  <!--Post second-->
						  <article class="post">
							  <div class="post-header">
								  <h2 class="post-title">
									  <a href="#">Nature valley with cooling environment</a>
								  </h2>
								  <ul class="post-meta">
									  <li>
										  <i class="fas fa-calendar-alt"></i>
										   <a> July 07, 2017</a>
									  </li>
									  <li>
										  <i class="fas fa-pencil-alt"></i>
										  <a href="#">Branding</a>
										  <a href="#">Design</a>
									  </li>
									  <li>
										  <i class="fas fa-comments"></i>
										  <a href="#">3 Comments</a>
									  </li>
								  </ul>
							  </div>
							  <div class="post-preview">
								  <a href="#">
                                      <img src="Images/HomeImg02.jpg" style="width:100%;"/>
								  </a>
							  </div>
							  <div class="post-content">
								  <p>
									  Whether an identity or campaign, we make your brand visible, relevant and effective by placing the digital at the center of its ecosystem, without underestimating the power of traditional media. Whether an identity or campaign, we make your brand visible.
								  </p>
							  </div>
							  <div class="btnMore">
								  <a href="#" class="btn btn-outline-custom">
									  Read More
                                      <i class="fas fa-arrow-right"></i>
								  </a>
							  </div>
						  </article>
						  <!--Post second End-->

						  <!--Post third-->
						  <article class="post">
							  <div class="post-header">
								  <h2 class="post-title">
									  <a href="#">Elegant, Simple & Minimalist Blog Made With Love</a>
								  </h2>
								  <ul class="post-meta">
									  <li>
										  <i class="fas fa-calendar-alt"></i>
										   <a> July 05, 2017</a>
									  </li>
									  <li>
										  <i class="fas fa-pencil-alt"></i>
										  <a href="#">Branding</a>
										  <a href="#">Design</a>
									  </li>
									  <li>
										  <i class="fas fa-comments"></i>
										  <a href="#">3 Comments</a>
									  </li>
								  </ul>
							  </div>
							  <div class="post-preview">
								  <a href="#">
                                      <img src="Images/HomeImg03.jpg" style="width:100%;"/>
								  </a>
							  </div>
							  <div class="post-content">
								  <p>
									  Whether an identity or campaign, we make your brand visible, relevant and effective by placing the digital at the center of its ecosystem, without underestimating the power of traditional media. Whether an identity or campaign, we make your brand visible.
								  </p>
							  </div>
							  <div class="btnMore">
								  <a href="#" class="btn btn-outline-custom">
									  Read More
                                      <i class="fas fa-arrow-right"></i>
								  </a>
							  </div>
						  </article>
						  <!--Post third End-->

						  <!--Post fourth-->
						  <article class="post">
							  <div class="post-header">
								  <h2 class="post-title">
									  <a href="#">15 Best Healthy and Easy Salad Recipes</a>
								  </h2>
								  <ul class="post-meta">
									  <li>
										  <i class="fas fa-calendar-alt"></i>
										   <a> July 01, 2017</a>
									  </li>
									  <li>
										  <i class="fas fa-pencil-alt"></i>
										  <a href="#">Branding</a>
										  <a href="#">Design</a>
									  </li>
									  <li>
										  <i class="fas fa-comments"></i>
										  <a href="#">3 Comments</a>
									  </li>
								  </ul>
							  </div>
							  <div class="post-preview">
								  <a href="#">
                                      <img src="Images/HomeImg04.jpg" style="width:100%;"/>
								  </a>
							  </div>
							  <div class="post-content">
								  <p>
									  Whether an identity or campaign, we make your brand visible, relevant and effective by placing the digital at the center of its ecosystem, without underestimating the power of traditional media. Whether an identity or campaign, we make your brand visible.
								  </p>
							  </div>
							  <div class="btnMore">
								  <a href="#" class="btn btn-outline-custom">
									  Read More
                                      <i class="fas fa-arrow-right"></i>
								  </a>
							  </div>
						  </article>
						  <!--Post fourth End-->

						  <!--Post fifth-->
						  <article class="post">
							  <div class="post-header">
								  <h2 class="post-title">
									  <a href="#">Easy Homemade Candy Recipes and Ideas</a>
								  </h2>
								  <ul class="post-meta">
									  <li>
										  <i class="fas fa-calendar-alt"></i>
										   <a> June 18, 2017</a>
									  </li>
									  <li>
										  <i class="fas fa-pencil-alt"></i>
										  <a href="#">Branding</a>
										  <a href="#">Design</a>
									  </li>
									  <li>
										  <i class="fas fa-comments"></i>
										  <a href="#">3 Comments</a>
									  </li>
								  </ul>
							  </div>
							  <div class="post-preview">
								  <a href="#">
                                      <img src="Images/HomeImg05.jpg" style="width:100%;"/>
								  </a>
							  </div>
							  <div class="post-content">
								  <p>
									  Whether an identity or campaign, we make your brand visible, relevant and effective by placing the digital at the center of its ecosystem, without underestimating the power of traditional media. Whether an identity or campaign, we make your brand visible.
								  </p>
							  </div>
							  <div class="btnMore">
								  <a href="#" class="btn btn-outline-custom">
									  Read More
                                      <i class="fas fa-arrow-right"></i>
								  </a>
							  </div>
						  </article>
						  <!--Post fifth End-->
						  <!--Pagination-->
						  <div class="row">
							  <div class="col-lg-12">
									  <ul class="pagination pagination-lg">
										<li class="page-item">
										  <a class="page-link" href="#" aria-label="Previous">
											<span aria-hidden="true">&laquo;</span>
											<span class="sr-only">Previous</span>
										  </a>
										</li>
										<li class="page-item active"><a class="page-link" href="#">1</a></li>
										<li class="page-item"><a class="page-link" href="#">2</a></li>
										<li class="page-item"><a class="page-link" href="#">3</a></li>
										<li class="page-item"><a class="page-link" href="#">4</a></li>
										<li class="page-item"><a class="page-link" href="#">5</a></li>
										<li class="page-item">
										  <a class="page-link" href="#" aria-label="Next">
											<span aria-hidden="true">&raquo;</span>
											<span class="sr-only">Next</span>
										  </a>
										</li>
									  </ul>
							  </div>
						  </div>
						  <!--Pagination End-->
					  </div>
					  <!--Content End-->
                      <div class="col-lg-4 main-right">
						  <!--Post-->
                          <div class="main-right">
                              <aside class="widget widget_search">
                                        <div>
                                            <input class="form-control pr-5" type="search" placeholder="Search...">
                                            <button class="search-button" type="submit"><i class="fas fa-search"></i></button>
                                        </div>
                                    </aside>
                              <aside class="widget about-widget">
                                        <div class="widget-title">About Me</div>

                                        <div class="text-center">
                                            <img src="images/AboutMe01.jpg" alt="About Me" class="rounded-circle">

                                            <p>Quis vero phasellus hac nullam, in quam vitae duis adipiscing mauris leo, laoreet eget at quis, ante vestibulum vivamus vel. Sapien lobortis, eget orci purus amet pede, consectetur neque risus.</p>
                                        </div>

                                    </aside>
                              <aside class="widget about-widget">
                                        <div class="widget-title">Subscribe &amp; Follow</div>

                                        <ul class="socials">
                                            <li><a href="http://facebook.com"><i class="fab fa-facebook-f"></i></a></li>
                                            <li><a href="http://twitter.com"><i class="fab fa-twitter"></i></a></li>
                                            <li><a href="http://instagram.com"><i class="fab fa-instagram"></i></a></li>
                                            <li><a href="http://pinterest.com"><i class="fab fa-pinterest-p"></i></a></li>
                                        </ul>

                                    </aside>
                              <aside class="widget about-widget">
                                        <div class="widget-title">Categories</div>
                                        <ul class="categoryItem">
                                            <li><a href="#">Journey</a> (40)</li>
                                            <li><a href="#">Photography</a> (08)</li>
                                            <li><a href="#">Lifestyle</a> (11)</li>
                                            <li><a href="#">Food &amp; Drinks</a> (21)</li>
                                        </ul>
                                    </aside>
                              <aside class="widget about-widget">
                                        <div class="widget-title">Popular Posts</div>
                                        <ul class="popular-post">
                                            <li class="clearfix">
                                                <div class="wi">
                                                    <a href="#"><img src="images/PopularPost01.jpg" alt="" class="img-fluid"></a>
                                                </div>
                                                <div class="wb"><a href="#">Beautiful Day With Friends..</a> <span class="post-date">Jun 15, 2017</span></div>
                                            </li>
                                            <li class="clearfix">
                                                <div class="wi">
                                                    <a href="#"><img src="images/PopularPost02.jpg" alt="" class="img-fluid"></a>
                                                </div>
                                                <div class="wb"><a href="#">Nature valley with cooling..</a> <span class="post-date">Jun 10, 2017</span></div>
                                            </li>
                                            <li class="clearfix">
                                                <div class="wi">
                                                    <a href="#"><img src="images/PopularPost03.jpg" alt="" class="img-fluid"></a>
                                                </div>
                                                <div class="wb"><a href="#">15 Best Healthy and Easy Salad..</a> <span class="post-date">Jun 8, 2017</span></div>
                                            </li>
                                        </ul>
                                    </aside>
                              <aside class="widget about-widget">
                                        <div class="widget-title">Text Widget</div>

                                        <p class="text-muted text-widget-des">Exercitation photo booth stumptown tote bag Banksy, elit small batch freegan sed. Craft beer elit seitan exercitation, photo booth et 8-bit kale chips proident chillwave deep v laborum. Aliquip veniam delectus, Marfa eiusmod Pinterest in do umami readymade swag. </p>

                                    </aside>
                              <aside class="widget about-widget">
                                        <div class="widget-title">Archives</div>

                                        <ul class="archiveItem">
                                            <li><a href="#">March 2017</a> (40)</li>
                                            <li><a href="#">April 2017</a> (08)</li>
                                            <li><a href="#">May 2017</a> (11)</li>
                                            <li><a href="#">Jun 2017</a> (21)</li>
                                        </ul>

                                    </aside>
                              <aside class="widget about-widget">
                                        <div class="widget-title">Tags</div>
                                        <div class="tagcloud">
                                            <a href="#">logo</a>
                                            <a href="#">business</a>
                                            <a href="#">corporate</a>
                                            <a href="#">e-commerce</a>
                                            <a href="#">agency</a>
                                            <a href="#">responsive</a>
                                        </div>
                                    </aside>
                          </div>
						  <!--Post End-->
					  </div>
				  </div>
			  </div>
		  </section>
	  </div>


</div>
    <script src="Scripts/ScriptDefault.js"></script>
    <script src="Scripts/Head.js"></script>

</asp:Content>
