<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()+path+ "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <base href = "<%=basePath%>Front/">
    <title>Archtech - Construction & Architecture Theme</title>

    <!-- Revolution Slider -->
    <link rel="stylesheet" href="assets/revolution/css/settings.css">
		<link rel="stylesheet" href="assets/revolution/css/layers.css">
		<link rel="stylesheet" href="assets/revolution/css/navigation.css">

    
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
		<meta name="msapplication-TileImage" content="assets/images/favicon_icon.png">

	</head>
	<body class="side-menu-left">

		<div class="site-wrapper animsition">
            <jsp:include page="../Head/head.jsp" flush="true" />
			
			
			<div class="main-side-menu left hidden-sm hidden-xs">
				<div class="sidebar-menu-inner">

					<div class="vertical-logo">
						<a href="index.html">
							<img src="assets/images/logo.png" alt="">
						</a>
					</div> <!-- /.vertical-logo -->

				<div class="panel-group" id="accordion" style="margin-top:80px">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseThree"> 楼层 </a>
							</h4>
						</div>
						<div id="collapseThree" class="panel-collapse collapse">
							<div class="panel-body" style="padding-left:15px">

								<nav class="vertical-menu" style="margin-top:0px">
								<ul>
									<li class="current-menu-item"><a href="ModelDIY/ModelDIY.jsp">二层</a>
									<li><a href="projects.html">三层</a></li>
									<li><a href="team.html">四层</a></li>
									<li><a href="about-us.html">五层</a></li>
									<li><a href="services.html">六层</a></li>
								</ul>
								</nav>

							</div>
						</div>
					</div>
				</div>
				
				<div class="panel-group" id="accordion1" style="margin-top:40px">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion1"
									href="#collapseThree1">建筑面积</a>
							</h4>
						</div>
						<div id="collapseThree1" class="panel-collapse collapse">
							<div class="panel-body" style="padding-left:15px">

								<nav class="vertical-menu" style="margin-top:0px">
								<ul>
									<li class="current-menu-item"><a href="ModelDIY/ModelDIY.jsp">50-100平方</a>
									<li><a href="projects.html">100-150平方</a></li>
									<li><a href="team.html">150-200平方</a></li>
									<li><a href="about-us.html">200~平方</a></li>
								</ul>
								</nav>

							</div>
						</div>
					</div>
				</div>

				
					<!-- /.verical-menu -->

					

				</div>
				<!-- /.sidebar-menu-inner -->
			</div> <!-- /.main-header-left -->

			<div class="main-wrapper">
                   
                   
                   <div class="row projects-grid" style="position: relative; height: 1338.75px;">
							<div class="col-sm-6 project-item building" style="position: absolute; left: 0px; top: 0px;">
								<article class="project-entry-1 wow fadeInCdb" data-wow-duration="0.7s" data-wow-delay="0.4s" style="visibility: visible; animation-duration: 0.7s; animation-delay: 0.4s; animation-name: fadeInCdb;">
									<div class="image-holder">
										<a href="project-single.html">
											<img width="800" height="500" src="assets/images/project-1.jpg" alt="">
											<h2 class="project-title">Opera House</h2>
											<span class="project-overlay"></span>
											<span class="overlay-triangle"></span>
										</a>
									</div>
								</article>
							</div>
							<div class="col-sm-6 project-item furniture" style="position: absolute; left: 585px; top: 0px;">
								<article class="project-entry-1 wow fadeInCdb" data-wow-duration="0.7s" data-wow-delay="0.5s" style="visibility: visible; animation-duration: 0.7s; animation-delay: 0.5s; animation-name: fadeInCdb;">
									<div class="image-holder">
										<a href="project-single.html">
											<img width="800" height="500" src="assets/images/project-2.jpg" alt="">
											<h2 class="project-title">Modern Architecture</h2>
											<span class="project-overlay"></span>
											<span class="overlay-triangle"></span>
										</a>
									</div>
								</article>
							</div>
							<div class="col-sm-6 project-item building nature" style="position: absolute; left: 0px; top: 446px;">
								<article class="project-entry-1 wow fadeInCdb" data-wow-duration="0.7s" data-wow-delay="0.6s" style="visibility: visible; animation-duration: 0.7s; animation-delay: 0.6s; animation-name: fadeInCdb;">
									<div class="image-holder">
										<a href="project-single.html">
											<img width="800" height="500" src="assets/images/project-4.jpg" alt="">
											<h2 class="project-title">Skyscraper</h2>
											<span class="project-overlay"></span>
											<span class="overlay-triangle"></span>
										</a>
									</div>
								</article>
							</div>
							<div class="col-sm-6 project-item nature" style="position: absolute; left: 585px; top: 446px;">
								<article class="project-entry-1 wow fadeInCdb" data-wow-duration="0.7s" data-wow-delay="0.7s" style="visibility: visible; animation-duration: 0.7s; animation-delay: 0.7s; animation-name: fadeInCdb;">
									<div class="image-holder">
										<a href="project-single.html">
											<img width="800" height="500" src="assets/images/project-3.jpg" alt="">
											<h2 class="project-title">Best Constructed</h2>
											<span class="project-overlay"></span>
											<span class="overlay-triangle"></span>
										</a>
									</div>
								</article>
							</div>
							<div class="col-sm-6 project-item building" style="position: absolute; left: 0px; top: 892px;">
								<article class="project-entry-1 wow fadeInCdb" data-wow-duration="0.7s" data-wow-delay="0.8s" style="visibility: visible; animation-duration: 0.7s; animation-delay: 0.8s; animation-name: fadeInCdb;">
									<div class="image-holder">
										<a href="project-single.html">
											<img width="800" height="500" src="assets/images/project-5.jpg" alt="">
											<h2 class="project-title">Skyscraper</h2>
											<span class="project-overlay"></span>
											<span class="overlay-triangle"></span>
										</a>
									</div>
								</article>
							</div>
							<div class="col-sm-6 project-item furniture" style="position: absolute; left: 585px; top: 892px;">
								<article class="project-entry-1 wow fadeInCdb" data-wow-duration="0.7s" data-wow-delay="0.3s" style="visibility: visible; animation-duration: 0.7s; animation-delay: 0.3s; animation-name: fadeInCdb;">
									<div class="image-holder">
										<a href="project-single.html">
											<img width="800" height="500" src="assets/images/project-6.jpg" alt="">
											<h2 class="project-title">Interior Design</h2>
											<span class="project-overlay"></span>
											<span class="overlay-triangle"></span>
										</a>
									</div>
								</article>
							</div>
						</div>
				
		    </div> <!-- /.site-wrapper -->

		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
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
					gridheight:880,
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