<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
								<h2>${model.name}</h2>
								<p>${model.introduction}</p>
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
										<img width="1100" height="630" src="../Pic/Main/${model.mainPic}" alt="">
									</div>
									<div class="post-content" style="background: #f7f7f7;height:60px;margin-bottom:25px;">
										<ul class="clearfix" style="font-size: 18px;">
					                        <li class="title-item plan fl active" style="float:left;line-height: 60px;background: rgba(62,130,247,.1);padding-right: 20px;padding-left: 20px">
					                            <a href="#board-plan" style="color:#3e82f7">设计师</a>
					                        </li>
				                            <li class="title-item same-cell fl" style="float:left;margin-left:20px;line-height: 60px;padding-right: 20px;padding-left: 20px">
				                                <a href="#board-same-cell" style="color:#666">轴测图</a>
				                            </li>
				                            <li class="title-item evaluation fl" style="float:left;margin-left:20px;line-height: 60px;padding-right: 20px;padding-left: 20px">
					                            <a href="#board-evaluation" style="color:#666">户型图</a>
					                        </li>
					                        <li class="title-item evaluation fl" style="float:left;margin-left:20px;line-height: 60px;padding-right: 20px;padding-left: 20px">
					                            <a href="HT/3d_model.html" style="color:#666;cursor:pointer;" target="_blank">3d模型</a>
					                        </li>
					                        <li class="title-item evaluation fl" style="float:left;margin-left:20px;line-height: 60px;padding-right: 20px;padding-left: 20px">
					                            <a href="#board-evaluation" style="color:#666">用户评价</a>
					                        </li>
					                    </ul>
									</div>
									<div class="author-description">
										<div class="author-avatar">
											<img src="../Pic/User/${model.user.userPic}" alt="" height="150" width="250">
										</div>
										<div class="author-description-text">
											<h4>${model.user.userName}</h4>
											<span>Architect</span>
											<p>${model.user.info}</p>
											<div class="social">
												<a href="#" class="fa fa-facebook"></a>
												<a href="#" class="fa fa-twitter"></a>
												<a href="#" class="fa fa-linkedin"></a>
											</div>
										</div>
									</div>
									<div class="post-content">
										<h4 class="post-title" style="margin-bottom:30px">相关轴测图</h4>
										
										<c:forEach items="${model.effectPic}" var="ele">
											<%-- <div class="post-image" style="width:49.7%;float: left;padding-left:15px;padding-right:15px">
												<img width="1100px" height="430" src="../Pic/Side/${ele.pic}" alt="">
											</div> --%>
											<div class="col-md-6">
												<div class="image-holder" style="width:100%;float: left;padding-left:15px;padding-right:15px;margin-bottom:20px">
													<a href="../Pic/Side/${ele.pic}" class="lightbox"  data-lightbox-gallery="gallery1">
														<img src="../Pic/Side/${ele.pic}" alt="">
														<div class="project-overlay">
															<span class="link-holder">
																<i class="icon-eye"></i>
															</span>
														</div>
													</a>
												</div>
											</div>
										</c:forEach>
									</div>
									<div class="post-content">
										<h4 class="post-title" style="margin-bottom:30px">相关户型图</h4>
										<c:forEach items="${model.houseLayout}" var="ele">
											<%-- <div class="post-image" style="width:49.7%;float: left;padding-left:15px;padding-right:15px">
												<img width="1100px" height="430" src="../Pic/Layout/${ele.pic}" alt="">
											</div> --%>
											<div class="col-md-6">
												<div class="image-holder" style="width:100%;float: left;padding-left:15px;padding-right:15px;margin-bottom:20px">
													<a href="../Pic/Layout/${ele.pic}" class="lightbox"  data-lightbox-gallery="gallery1">
														<img src="../Pic/Layout/${ele.pic}" alt="">
														<div class="project-overlay">
															<span class="link-holder">
																<i class="icon-eye"></i>
															</span>
														</div>
													</a>
												</div>
											</div>
										</c:forEach>
									</div>
								</article>
								<!-- post-entry -->
								
								<!-- author description -->
								
								<!-- blog-single-navigation -->
								<div class="comments-wrapper" style="clear: both;">
									<h4 class="comment-title" id="comm_number">4 条评论</h4>
									<ul class="comment-list">
										
										<!-- <li>
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
										</li> -->
									</ul>
								</div>
								<div class="row">
									<div class="col-sm-12">
										<div class="blog-pagination" >
											<ul id="pages_ul">
											
											</ul>
										</div>
									</div>
								</div>
								<!-- comments-wrapper -->
								<div class="comment-form" style="margin-top:30px">
									<h4 class="comment-title">快来评论吧</h4>
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
											<span class="pre-submit">评论</span>
										</button>
									</form>
								</div>
							</div>

							<!-- Sidebar -->
							<div class="col-md-4 col-sm-12">
								<div class="blog-sidebar">
									<!-- <div class="widget search-form">
										<h4 class="widget-title">Search</h4>
										<form method="get" id="searchform" action="">
											<input type="text" class="form-control" placeholder="Search" name="s" id="s">
											<input type="submit" id="searchsubmit" value="U">
										</form>
									</div> -->
									<!-- widget -->
									<div class="widget latest-posts" style="height:auto">
										<h4 class="widget-title">${model.name}</h4>
										
										<table style="margin-left:-20px">
										<tbody>
										  <tr>
										    <td>建筑面积</td>
										    <td>${model.buildingArea}平方米</td>
										  </tr>
										  <tr>
										  	<td>用地面积</td>
										  	<td>${model.landArea}平方米</td>
										  </tr>
										  <tr>
										  	<td>楼层</td>
										  	<td>${model.floorNumber}层</td>
										  </tr>
										  <tr>
										  	<td>设计费</td>
										  	<td>${model.designFee}¥</td>
										  </tr>
										  <tr>
										  	<td>创建时间</td>
										  	<td>${model.createTime}</td>
										  </tr>
									  </tbody>
									</table>
									
										<div class="widget-title" style="display:none" id="sugg">
													<textarea id="suggestion" name="message" class="form-control" placeholder="Message" rows="5" style="overflow: hidden; resize: none; height: 126px;"></textarea>
										           <a cursor:pointer" onclick="design()" class="button default big" style="width:100%;text-align: center;background-color: red;font-weight: bolder" >提交</a>
										</div>
										
										<a onclick="showDiv()" id="hideA" class="button default big" style="width:100%;text-align: center;background-color: red;font-weight: bolder;cursor:pointer" >去设计</a>
									</div>
									<!-- widget -->
									<div class="widget">
										<h4 class="widget-title">相似案例</h4>
										<div class="small-projects clearfix" id="simi_model">
											
											<!-- <a href="project-single.html" class="thumb">
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
											</a> -->
										</div>
									</div>
									<!-- widget -->
									<!-- <div class="widget">
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
									widget
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
									</div> -->
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
		<script src="ModelDetail/model_detail.js"></script>
		<script type="text/javascript">
			var modelId = ${model.modelId};
			var floorNumber = ${model.floorNumber};
			var area = ${model.buildingArea};
		</script>
	</body>
</html>