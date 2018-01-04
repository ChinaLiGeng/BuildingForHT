<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Revolution Slider -->
    <link rel="stylesheet" href="assets/revolution/css/settings.css">
	<link rel="stylesheet" href="assets/revolution/css/layers.css">
	<link rel="stylesheet" href="assets/revolution/css/navigation.css">

   <!--  <link href="https://fonts.googleapis.com/css?family=Karla:400,400i,700,700i" rel="stylesheet"> -->
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <link rel="stylesheet" href="assets/css/font-awesome.css">
    <link rel="stylesheet" href="assets/css/simple-line-icons.css">
    <link rel="stylesheet" href="assets/css/elegant-icons.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.css">
    <link rel="stylesheet" href="assets/css/nivo-lightbox.css">
    <link rel="stylesheet" href="assets/css/animsition.min.css">
    <link rel="stylesheet" href="assets/css/animate.min.css">
    <link rel="stylesheet" href="assets/css/main.css">

    <link rel="icon" href="assets/images/favicon_160x160.png" sizes="32x32" />
		<link rel="icon" href="assets/images/favicon_icon.png" sizes="192x192">
		<link rel="apple-touch-icon-precomposed" href="assets/images/favicon_icon.png">
<title>Insert title here</title>
</head>
<body class="fixed-header">
   <div class="site-wrapper animsition">
   <header class="header-type-1 hidden-sm hidden-xs">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="header-navigation">
								
								<div class="logo">
									<a href="index.html">
										<img src="assets/images/logo.png" alt="">
									</a>
								</div>

								<div class="main-menu">
									<nav class="main-nav">
										<ul class="sf-menu">
											<li class="current-menu-item"><a href="home.html">Home</a>
												<ul class="sub-menu">
													<li><a href="home.html">Home Default</a></li>
													<li><a href="home-left.html">Home — Left Menu</a></li>
													<li><a href="home-dark.html">Home — Dark Skin</a></li>
													<li><a href="home-architecture.html">Home — Architecture</a></li>
													<li><a href="home-right.html">Home — Right Menu</a></li>
												</ul>
											</li>
											<li><a href="#">Services</a>
												<ul class="sub-menu">
													<li><a href="services.html">All Services</a></li>
													<li><a href="service-single.html">Construction</a></li>
													<li><a href="service-single.html">General Contracting</a></li>
													<li><a href="service-single.html">Isolation</a></li>
													<li><a href="service-single.html">Electric Welding</a></li>
												</ul>
											</li>
											<li><a href="#">Pages</a>
												<ul class="sub-menu">
													<li><a href="about-us.html">About Us</a></li>
													<li><a href="about-me.html">About Me</a></li>
													<li><a href="team.html">Our Team</a></li>
													<li><a href="404.html">404 Page</a></li>
													<li><a href="faqs.html">FAQs</a></li>
													<li><a href="contact.html">Contact</a></li>
													<li><a href="contact-2.html">Contact v2</a></li>
												</ul>
											</li>
											<li><a href="#">Projects</a>
												<ul class="sub-menu">
													<li><a href="projects-2.html">Projects — 2 Columns</a></li>
													<li><a href="projects.html">Projects — 3 Columns</a></li>
													<li><a href="projects-4.html">Projects — 4 Columns</a></li>
													<li><a href="projects-masonry.html">Projects Masonry</a></li>
													<li><a href="project-single.html">Project Details</a></li>
												</ul>
											</li>
											<li><a href="#">Blog</a>
												<ul class="sub-menu">
													<li><a href="blog.html">Blog Standard</a></li>
													<li><a href="blog-grid.html">Blog Grid</a></li>
													<li><a href="blog-masonry.html">Blog Masonry</a></li>
													<li><a href="blog-single.html">Single Post</a></li>
												</ul>
											</li>
										</ul>
									</nav>
								</div>

								<div class="header-right">
									<div class="social">
										<a href="#"><i class="fa fa-facebook"></i></a>
										<a href="#"><i class="fa fa-instagram"></i></a>
										<a href="#"><i class="fa fa-twitter"></i></a>
										<a href="#"><i class="fa fa-youtube"></i></a>
									</div>
								</div>

							</div>
						</div> <!-- /.col-md-12 -->
					</div> <!-- /.row -->
				</div> <!-- /.container -->
			</header> <!-- /.header-type-1 -->
   </div>

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

		<!-- Revolution Slider -->
		<script src="assets/revolution/js/jquery.themepunch.tools.min.js"></script>
		<script src="assets/revolution/js/jquery.themepunch.revolution.min.js"></script>
		<script type="text/javascript">
			var revapi5;
			$(document).ready(function() {
				revapi5 = $('#slider-1').show().revolution({
					sliderType: 'standard',
					sliderLayout: 'auto',
					jsFileLocation: '',
					dottedOverlay: 'none',
					delay: 5000,
					lazyType:"none",
					navigation: {
						keyboardNavigation:"off",
						keyboard_direction: "horizontal",
						mouseScrollNavigation:"off",
							mouseScrollReverse:"default",
						onHoverStop:"off",
						touch:{
							touchenabled:"on",
							swipe_threshold: 0.7,
							swipe_min_touches: 1,
							swipe_direction: "horizontal",
							drag_block_vertical: false
						}
						,
						arrows: {
							style:"uranus",
							enable:true,
							hide_onmobile:false,
							hide_onleave:true,
							hide_delay:200,
							hide_delay_mobile:1200,
							tmp:'',
							left: {
								h_align:"left",
								v_align:"center",
								h_offset:20,
								v_offset:0
							},
							right: {
								h_align:"right",
								v_align:"center",
								h_offset:20,
								v_offset:0
							}
						}
						,
						bullets: {
							enable:true,
							hide_onmobile:false,
							style:"hermes",
							hide_onleave:false,
							direction:"horizontal",
							h_align:"center",
							v_align:"bottom",
							h_offset:0,
							v_offset:20,
							space:5,
							tmp:''
						}
					},
					parallax: {
						type:"mouse",
						origo:"enterpoint",
						speed:6000,
						levels:[5,10,15,20,25,30,35,40,45,46,47,48,49,50,51,55],
						type:"mouse",
					},
					visibilityLevels:[1240,1024,778,480],
					gridwidth:1170,
					gridheight:840,
					shadow:0,
					spinner:"spinner0",
					stopLoop:"off",
					stopAfterLoops:-1,
					stopAtSlide:-1,
					shuffle:"off",
					autoHeight:"off",
					fullScreenAutoWidth:"off",
					fullScreenAlignForce:"off",
					fullScreenOffsetContainer: "",
					fullScreenOffset: "",
					disableProgressBar:"on",
					hideThumbsOnMobile:"off",
					hideSliderAtLimit:0,
					hideCaptionAtLimit:0,
					hideAllCaptionAtLilmit:0,
					debugMode:false,
					fallbacks: {
						simplifyAll:"off",
						nextSlideOnWindowFocus:"off",
						disableFocusListener:false,
					}
				});
			});
		</script>
</body>
</html>