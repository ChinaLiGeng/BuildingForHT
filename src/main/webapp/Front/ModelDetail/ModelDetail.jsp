<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()+path+ "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en-US">
	<head>
		<base href = "<%=basePath%>Front/">
		<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">

    <title>Archtech - Construction & Architecture Theme</title>

    <!-- Revolution Slider -->
    <link rel="stylesheet" href="assets/revolution/css/settings.css">
		<link rel="stylesheet" href="assets/revolution/css/layers.css">
		<link rel="stylesheet" href="assets/revolution/css/navigation.css">

    <link href="https://fonts.googleapis.com/css?family=Karla:400,400i,700,700i" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <link rel="stylesheet" href="assets/css/font-awesome.css">
    <link rel="stylesheet" href="assets/css/simple-line-icons.css">
    <link rel="stylesheet" href="assets/css/elegant-icons.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.css">
    <link rel="stylesheet" href="assets/css/nivo-lightbox.css">
    <link rel="stylesheet" href="assets/css/animsition.min.css">
    <link rel="stylesheet" href="assets/css/main.css">

    <link rel="icon" href="assets/images/favicon_160x160.png" sizes="32x32" />
		<link rel="icon" href="assets/images/favicon_icon.png" sizes="192x192">
		<link rel="apple-touch-icon-precomposed" href="assets/images/favicon_icon.png">
		<meta name="msapplication-TileImage" content="assets/images/favicon_icon.png">

	</head>
	<body class="fixed-header">
		
		<a href="#" class="back-to-top" title="Back to top">
			<i class="icon-arrow-up"></i>
		</a>

		<div class="site-wrapper animsition">
			<jsp:include page="../Head/head.jsp" flush="true" />

			<div class="main-wrapper">

				<div class="page-title-2">
					<div class="container">
						<div class="row">
							<div class="col-sm-12">
								<h2>Blog Single</h2>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
							</div>
						</div>
					</div>
				</div>

				<div class="page-content blog-standard blog-single">
					<div class="container">
						<div class="row">
							<!-- Blog Content -->
							<div class="col-md-8 col-sm-12">
								<article class="post-entry">
									<div class="post-image">
										<img width="1100" height="630" src="assets/images/blog-l5.jpg" alt="">
									</div>
									<div class="post-content">
										<h4 class="post-title">Life After the Handover – Interview with Hans Kristian</h4>
										<div class="post-meta">
											<span><i class="icon-user"></i> By <a href="blog-single.html">Esmet</a></span>
											<span><a href="blog-single.html"><i class="icon-speech"></i> 3 Comments</a></span>
										</div>
										<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera</p>
										<blockquote>
											Rudiandae nihil ipsum modi explicabo, officiis quas ex natus nostrum dolorum, minus blanditiis at! Adipisci, reprehenderit, sit.
										</blockquote>
										<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera</p>
										<div class="tags">
											Tags:
											<a href="#" class="tag">interior</a>
											<a href="#" class="tag">wood</a>
											<a href="#" class="tag">construction</a>
											<a href="#" class="tag">house</a>
										</div>
									</div>
								</article>
								<!-- post-entry -->
								<div class="author-description">
									<div class="author-avatar">
										<img src="assets/images/profile-1.jpg" alt="" height="150" width="250">
									</div>
									<div class="author-description-text">
										<h4>James Ford</h4>
										<span>Architect</span>
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod obcaecati fugit ea quos, id vel ratione similique dolorum neque nam soluta quisquam vero, ab, aut doloremque.</p>
										<div class="social">
											<a href="#" class="fa fa-facebook"></a>
											<a href="#" class="fa fa-twitter"></a>
											<a href="#" class="fa fa-linkedin"></a>
										</div>
									</div>
								</div>
								<!-- author description -->
								<div class="blog-single-navigation clearfix">
									<div class="prev-post">
										<a href="#">
											<span class="icon-arrow-left"></span>
											<h5>Previous Post</h5>
										</a>
									</div>
									<div class="next-post">
										<a href="#">
											<h5>Next Post</h5>
											<span class="icon-arrow-right"></span>
										</a>
									</div>
								</div>
								<!-- blog-single-navigation -->
								<div class="comments-wrapper">
									<h4 class="comment-title">4 Comments</h4>
									<ul class="comment-list">
										<li>
											<div class="comment clearfix">
												<div class="comment-avatar">
													<img src="assets/images/profile-2.jpg" alt="">
												</div>
												<div class="comment-content">
													<h5>Gregory Brand</h5>
													<span class="comment-time">July 19, 2016 at 1:54 pm</span>
													<p>Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit.</p>
													<a href="#" class="reply"><span class="fa fa-reply"></span> Reply</a>
												</div>
											</div>

											<ul class="children">
												<li>
													<div class="comment clearfix">
														<div class="comment-avatar">
															<img src="assets/images/profile-2.jpg" alt="">
														</div>
														<div class="comment-content">
															<h5>Gregory Brand</h5>
															<span class="comment-time">July 19, 2016 at 1:54 pm</span>
															<p>Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit.</p>
															<a href="#" class="reply"><span class="fa fa-reply"></span> Reply</a>
														</div>
													</div>
												</li>

												<ul class="children">
													<li>
														<div class="comment clearfix">
															<div class="comment-avatar">
																<img src="assets/images/profile-2.jpg" alt="">
															</div>
															<div class="comment-content">
																<h5>Gregory Brand</h5>
																<span class="comment-time">July 19, 2016 at 1:54 pm</span>
																<p>Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit.</p>
																<a href="#" class="reply"><span class="fa fa-reply"></span> Reply</a>
															</div>
														</div>
													</li>
												</ul>
											</ul>

											<li>
												<div class="comment clearfix">
												<div class="comment-avatar">
													<img src="assets/images/profile-2.jpg" alt="">
												</div>
												<div class="comment-content">
													<h5>Gregory Brand</h5>
													<span class="comment-time">July 19, 2016 at 1:54 pm</span>
													<p>Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit.</p>
													<a href="#" class="reply"><span class="fa fa-reply"></span> Reply</a>
												</div>
											</div>
											</li>

										</li>
									</ul>
								</div>
								<!-- comments-wrapper -->
								<div class="comment-form">
									<h4 class="comment-title">Leave a comment</h4>
									<form action="#" class="comment-form">
										<div class="row">
											<div class="col-sm-12">
												<textarea name="message" class="form-control" placeholder="Message" rows="5"></textarea>
											</div>
											<div class="col-sm-4">
												<input name="name" type="text" class="form-control" placeholder="Name">
											</div>
											<div class="col-sm-4">
												<input name="email" type="email" class="form-control" placeholder="Email">
											</div>
											<div class="col-sm-4">
												<input name="url" type="text" class="form-control" placeholder="Website">
											</div>
										</div>
										<button type="submit" name="send" class="button default">
											<span class="pre-submit">Comment</span>
										</button>
									</form>
								</div>
							</div>

							<!-- Sidebar -->
							<div class="col-md-4 col-sm-12">
								<div class="blog-sidebar">
									<div class="widget search-form">
										<h4 class="widget-title">Search</h4>
										<form method="get" id="searchform" action="">
											<input type="text" class="form-control" placeholder="Search" name="s" id="s">
											<input type="submit" id="searchsubmit" value="U">
										</form>
									</div>
									<!-- widget -->
									<div class="widget latest-posts">
										<h4 class="widget-title">Latest Posts</h4>
										<ul>
											<li><a href="#">Top 14 Most Common Mistakes</a><span>14 December, 2015</span></li>
											<li><a href="#">Life After the Handover</a><span>14 December, 2015</span></li>
											<li><a href="#">This is a Blog Post Quote</a><span>14 December, 2015</span></li>
											<li><a href="#">Interview with Hans Kristian</a><span>14 December, 2015</span></li>
										</ul>
									</div>
									<!-- widget -->
									<div class="widget">
										<h4 class="widget-title">Projects</h4>
										<div class="small-projects clearfix">
											<a href="project-single.html" class="thumb">
												<img src="assets/images/small-1.jpg" alt="">
											</a>
											<a href="project-single.html" class="thumb">
												<img src="assets/images/small-2.jpg" alt="">
											</a>
											<a href="project-single.html" class="thumb">
												<img src="assets/images/small-3.jpg" alt="">
											</a>
											<a href="project-single.html" class="thumb">
												<img src="assets/images/small-4.jpg" alt="">
											</a>
											<a href="project-single.html" class="thumb">
												<img src="assets/images/small-5.jpg" alt="">
											</a>
											<a href="project-single.html" class="thumb">
												<img src="assets/images/small-6.jpg" alt="">
											</a>
										</div>
									</div>
									<!-- widget -->
									<div class="widget">
										<h4 class="widget-title">Categories</h4>
										<ul>
											<li><a href="#">Decoration</a></li>
											<li><a href="#">Interior</a></li>
											<li><a href="#">Construction</a></li>
											<li><a href="#">Architecture</a></li>
											<li><a href="#">Engineer</a></li>
											<li><a href="#">Wood Working</a></li>
										</ul>
									</div>
									<!-- widget -->
									<div class="widget">
										<h4 class="widget-title">Archives</h4>
										<ul>
											<li><a href="#">September 2016</a></li>
											<li><a href="#">August 2016</a></li>
											<li><a href="#">July 2016</a></li>
											<li><a href="#">June 2016</a></li>
											<li><a href="#">May 2016</a></li>
											<li><a href="#">April 2016</a></li>
											<li><a href="#">March 2016</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div> <!-- /.page-content -->

				<jsp:include page="../Bottom/Bottom.jsp" flush="true" />
				
			</div> <!-- /.main-wrapper -->
			
		</div> <!-- /.site-wrapper -->

		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/joinable/animsition.min.js"></script>
		<script src="assets/js/joinable/autogrow.min.js"></script>
		<script src="assets/js/joinable/hoverIntent.js"></script>
		<script src="assets/js/joinable/imagesloaded.pkgd.min.js"></script>
		<script src="assets/js/joinable/isotope.pkgd.min.js"></script>
		<script src="assets/js/joinable/jquery.fitvids.js"></script>
		<script src="assets/js/joinable/jquery.nicescroll.min.js"></script>
		<script src="assets/js/joinable/nivo-lightbox.min.js"></script>
		<script src="assets/js/joinable/owl.carousel.min.js"></script>
		<script src="assets/js/joinable/superfish.js"></script>
		<script src="assets/js/joinable/wow.min.js"></script>
		<script src="assets/js/main.js"></script>
		 
	</body>
</html>