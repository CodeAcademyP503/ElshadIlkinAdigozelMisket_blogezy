<%@ Page Title="Home Page" Async="true" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="NoNameTask._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Content/Default.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css">
<div id="wraper">
    <div class="nav">
        <div class="left">
            <img src="Images/HomeLogo.png"/>
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
                          <%
                              foreach (var article in MainArticle)
                              {
                                  %>
                          
                           <article class="post">
							  <div class="post-header">
								  <h2 class="post-title">
									  <a href="#"><%Response.Write(article.Name);%></a>
								  </h2>
								  <ul class="post-meta">
									  <li>
										  <i class="fas fa-calendar-alt"></i>
										   <a> <%Response.Write(article.Date.ToString("dd-MM-yyyy")); %></a>
									  </li>
									  <li>
										  <i class="fas fa-pencil-alt"></i>
                                          <%foreach (var outli in article.Outlines)
                                              {
										  
                                                  %><a href="#"><%Response.Write(outli.Name); %></a> <%
                                              } %>
									  </li>
									  <li>
										  <i class="fas fa-comments"></i>
										  <a href="#"><%Response.Write(article.Comments.Count.ToString()+" Comments"); %></a>
									  </li>
								  </ul>
							  </div>
							  <div class="post-preview">
								  <a href="#">
                                      <img src="<%Response.Write(article.FotoPath); %>" style="width:100%;"/>
								  </a>
							  </div>
							  <div class="post-content">
								  <p>
                                      <%Response.Write(article.FotoPath); %>
								  </p>
							  </div>
							  <div class="btnMore">
								  <a href="#" class="btn btn-outline-custom">
									  Read More
                                      <i class="fas fa-arrow-right"></i>
								  </a>
							  </div>
						  </article>
                          <%
                              }
                              %>
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
                               <%
                                      for (int i = 0; i < AboutMes.Count; i++)
                                      {
                                          %>
                                  <aside class="widget about-widget">
                                        <div class="widget-title">About Me</div>
                                      <div class="text-center">
                                          <img src="<%Response.Write(AboutMes[i].FotoPath); %>" alt="About Me" class="rounded-circle">
                                          <p><%Response.Write(AboutMes[i].Text); %></p>
                                      </div>
                                      </aside>
                                  <%
                                      }
                                      %>
                              <aside class="widget about-widget">
                                        <div class="widget-title">Subscribe &amp; Follow</div>


                                        <ul class="socials">
                                            <%
                                      foreach (var sub in Subscribes)
                                      {
                                            %><li><a href="http://facebook.com"><i class="<%Response.Write(sub.IconPath);%>"></i></a></li>
                                            <%
                                      }
                                      %>
                                        </ul>

                                    </aside>
                              <aside class="widget about-widget">
                                        <div class="widget-title">Categories</div>
                                        <ul class="categoryItem">
                                            <%
                                      foreach (var cat in Categories)
                                      {
                                           %><li><a href="#"><%Response.Write(cat.Name); %></a> (<%Response.Write(cat.Amount); %>)</li>
                                            <%
                                      }
                                      %>
                                        </ul>
                                    </aside>
                              <aside class="widget about-widget">
                                        <div class="widget-title">Popular Posts</div>

                                        <ul class="popular-post">
                                            <%
                                                foreach (var popular in PopularPosts)
                                                {
                                                    %><li class="clearfix">
                                                        <div class="wi">
                                                            <a href="#"><img src="<%Response.Write(popular.FotoPath); %>" alt="" class="img-fluid"></a>
                                                            </div>
                                                        <div class="wb"><a href="#"><%Response.Write(popular.Name); %></a> <span class="post-date"><%Response.Write(popular.Date.ToString("dd/MM/yyyy")); %></span></div>
                                                        </li>
                                                    <%
                                                }
                                                %>
                                        </ul>
                                    </aside>
                              <%
                                      for (int i = 0; i < TextWidgets.Count; i++)
                                      {
                                          %>
                                  <aside class="widget about-widget">
                                        <div class="widget-title">Text Widget</div>
                                       <p> <%Response.Write(TextWidgets[0].Text); %></p>
                                      </aside>
                                  <%
                                      }
                                      %>
                              <aside class="widget about-widget">
                                        <div class="widget-title">Archives</div>

                                 
                                        <ul class="archiveItem">
                                             <%
                                      foreach (var arc in Archives)
                                      {
                                                     %><li><a href="#"> <%Response.Write(arc.Date.ToString("MMM yyyy"));%></a> ( <%Response.Write(arc.Amount); %>)</li><%

                                      }
                                      %>
                                            
                                        </ul>

                                    </aside>
                              <aside class="widget about-widget">
                                        <div class="widget-title">Tags</div>
                                        <div class="tagcloud">
                                            <%
                                                foreach (var tag in Tags)
                                                {
                                                    %><a href="#"><%Response.Write(tag.Name);%></a><%
                                                }
                                                %>
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
