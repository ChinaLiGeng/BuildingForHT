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
    <title>模型列表</title>

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
								<h2>模型商城</h2>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
							</div>
						</div>
					</div>
				</div>

				<div class="page-content">
					<div class="container">
					<div class="row">
						<div class="col-sm-12" style="float: left">
							<ul class="projects-filter">
								<li>面积</li>
								 <li><a href="#" data-filter="*" class="active">全部</a></li>   
								<li><a href="#" data-filter=".building">100平方</a></li>
								<li><a href="#" data-filter=".furniture">100-150平方</a></li>
								<li><a href="#" data-filter=".nature">150-200平方</a></li>
							</ul>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-12" style="float: left">
							<ul class="projects-filter">
								<li>楼层</li>
								 <li><a href="#" data-filter="*" class="active">全部</a></li>   
								<li><a href="#" data-filter=".building">2层</a></li>
								<li><a href="#" data-filter=".furniture">3层</a></li>
								<li><a href="#" data-filter=".nature">4层</a></li>
								<li><a href="#" data-filter=".nature">4层以上</a></li>
							</ul>
						</div>
					</div>
					<div class="mid-space"></div>
						<div class="row projects-grid">
							<div class="col-sm-6 col-md-3 project-item building">
								<article class="project-entry-1 wow fadeInCdb" data-wow-duration="0.7s" data-wow-delay="0.3s">
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
							
						</div>
					<div class="small-space"></div>
					<div class="row">
						<div class="class=" col-md-8col-sm-12">
							<div class="eow">
								<div class="col-sm-12">
									<div class="blog-pagination">
										<ul>
											<li><a href="#"><span class="fa fa-angle-left"></span></a></li>
											<li class="active"><a href="#">1</a></li>
											<li><a href="#">2</a></li>
											<li><a href="#">3</a></li>
											<li><a href="#">4</a></li>
											<li><a href="#"><span class="fa fa-angle-right"></span></a></li>
										</ul>
									</div>
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
		<script src="ModelList/ModelList.js"></script>
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