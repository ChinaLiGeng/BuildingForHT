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
								 <li><a href="#" data-filter="*" class="active" onclick="getArea(0)">全部</a></li>   
								<li><a href="#" data-filter=".building" onclick="getArea(75)">50-100平方</a></li>
								<li><a href="#" data-filter=".furniture" onclick="getArea(125)">100-150平方</a></li>
								<li><a href="#" data-filter=".nature" onclick="getArea(175)">150-200平方</a></li>
							</ul>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-12" style="float: left">
							<ul class="projects-filter">
								<li>楼层</li>
								 <li><a href="#" data-filter="*" class="active" onclick="getNumber(0)">全部</a></li>   
								<li><a href="#" data-filter=".building" onclick="getNumber(2)">2层</a></li>
								<li><a href="#" cursor="pointer" data-filter=".furniture" onclick="getNumber(3)">3层</a></li>
								<li><a href="#" data-filter=".nature" onclick="getNumber(4)">4层</a></li>
								<li><a href="#" data-filter=".nature" onclick="getNumber(5)">5层</a></li>
							</ul>
						</div>
					</div>
					<div class="mid-space"></div>
						<div class="row projects-grid" id="list">
							
							
						</div>
					<div class="small-space"></div>
					<div class="row">
						<div class="class=" col-md-8col-sm-12">
							<div class="eow">
								<div class="col-sm-12">
									<div class="blog-pagination">
										<ul id="page">
											<!-- <li><a href="#"> class="fa fa-angle-left"</a></li> 
											<li class="active"><a href="#">1</a></li>
											<li><a href="#">2</a></li>
											<li><a href="#">3</a></li>
											<li><a href="#">4</a></li>
											<li><a href="#"> class="fa fa-angle-right"</a></li>  -->
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