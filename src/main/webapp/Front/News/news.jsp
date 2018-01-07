<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()+path+ "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <base href = "<%=basePath%>Front/">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
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

    <title>新闻摘要</title>
		<meta name="msapplication-TileImage" content="assets/images/favicon_icon.png">
</head>
	<body class="fixed-header">
		<a href="#" class="back-to-top" title="Back to top">
			<i class="icon-arrow-up"></i>
		</a>
		<div class="site-wrapper animsition">
			<jsp:include page="../Head/head.jsp" flush="true" />
			<div class="white-section section-block">
					<div class="container">
						<div class="row">
							<div class="col-md-offset-2 col-md-8 text-center section-title-wrapper">
								<h2 class="section-title style-1">新闻摘要</h2>
								<p>建筑工业化，指通过现代化的制造、运输、安装和科学管理的生产方式，来代替传统建筑业中分散的、低水平的、低效率的手工业生产方式。它的主要标志是建筑设计标准化、构配件生产工厂化，施工机械化和组织管理科学化。
							</div>
						</div> <!-- /.row -->
						<div class="row">
							<div class="blog-masonry wow fadeIn" data-wow-duration="0.8s" data-wow-delay="0.6s" style="visibility: visible; animation-duration: 0.8s; animation-delay: 0.6s; animation-name: fadeIn; position: relative; height: 605px;">
								<div class="col-md-4 col-xs-12 post-masonry" style="position: absolute; left: 0px; top: 0px;">
									<article class="grid post-entry">
										<div class="post-image">
											<a href="http://news.dichan.sina.com.cn/2016/02/19/1169833.html">
												<img width="600" height="430" src="assets/images/news01.jpg" alt="">
												<span class="filter-grayscale"></span>
											</a>
										</div>
										<div class="post-content">
											<h4 class="post-title"><a href="http://news.dichan.sina.com.cn/2016/02/19/1169833.html">企业转型大趋势：建筑工业化必将代替传统施工模式</a></h4>
											<div class="post-meta">
												<span><i class="icon-user"></i> By 中国监测网</span>
												<span><i class="icon-speech"></i> 3 条评论</span>
											</div>
											<p class="description">
												目前，我国传统建筑生产方式普遍存在着建筑资源能耗高、生产效率低下、工程质量和安全堪忧、劳动力成本逐步升高、资源短缺严重等问题。这要求建筑业企业必须改变传统建筑生产方式，满足未来建筑业可持续发展的要求...
											</p>
											<a href="http://news.dichan.sina.com.cn/2016/02/19/1169833.html">阅读全文</a>
										</div>
									</article>
								</div> <!-- /.col-md-4 -->
								<div class="col-md-4 col-xs-12 post-masonry" style="position: absolute; left: 390px; top: 0px;">
									<article class="grid post-entry">
										<div class="post-image">
											<a href="http://www.sohu.com/a/76063594_243901">
												<img width="600" height="430" src="assets/images/news02.JPEG" alt="">
												<span class="filter-grayscale"></span>
											</a>
										</div>
										<div class="post-content">
											<h4 class="post-title"><a href="http://www.sohu.com/a/76063594_243901">1分钟看懂：建筑工业化百年历史！</a></h4>
											<div class="post-meta">
												<span><i class="icon-user"></i> By 搜狐网</span>
												<span<i class="icon-speech"></i> 6条评论</a></span>
											</div>
											<p class="description">
												修建与制造的区别何在？修建是一个设计与建造分离的过程；而制造如同在工厂生产标准化模数化配件，现场组装，精准而严格。最早的装配式建筑应该追溯到17世纪向美洲移民时期所用的木构架拼装房屋，最早的装配式公寓的想法和实现过程则由英国利物浦的工程师John Alexander Brodie在20世纪初提出，这位大叔甚至发明了足球场的球门网，然而Brodie的想法并没有在英国被广泛接受，反而在东欧流行起来...
											</p>
											<a href="http://www.sohu.com/a/76063594_243901">全文阅读</a>
										</div>
									</article>
								</div> <!-- /.col-md-4 -->
								<div class="col-md-4 col-xs-12 post-masonry" style="position: absolute; left: 780px; top: 0px;">
									<article class="grid post-entry">
										<div class="post-image">
											<a href="http://www.qianjia.com/html/2018-01/03_281865.html">
												<img width="600" height="430" src="assets/images/new03.jpg" alt="">
												<span class="filter-grayscale"></span>
											</a>
										</div>
										<div class="post-content">
											<h4 class="post-title"><a href="http://www.qianjia.com/html/2018-01/03_281865.html">国务院这份通知，让各省对建筑业做出了巨大的调整！</a></h4>
											<div class="post-meta">
												<span><i class="icon-user"></i> By 千家网</span>
												<span><i class="icon-speech"></i> 3 条评论</span>
											</div>
											<p class="description">
												今年以来，各省市紧紧抓住政策机遇，认真贯彻落实《国务院办公厅关于促进建筑业持续健康发展的意见》精神，加紧制定出台本地区促进建筑业改革发展的政策措施。...
											</p>
											<a href="http://www.qianjia.com/html/2018-01/03_281865.html">全文阅读</a>
										</div>
									</article>
								</div> <!-- /.col-md-4 -->
								<div class="col-md-4 col-xs-12 post-masonry" style="position: absolute; left: 390px; top: 0px;">
									<article class="grid post-entry">
										<div class="post-image">
											<a href="http://www.rmlt.com.cn/2017/1215/506113.shtml?from=singlemessage">
												<img width="600" height="430" src="assets/images/news05.png" alt="">
												<span class="filter-grayscale"></span>
											</a>
										</div>
										<div class="post-content">
											<h4 class="post-title"><a href="http://www.rmlt.com.cn/2017/1215/506113.shtml?from=singlemessage">中建科技拥抱装配式建筑新时代 开启建筑工业化新征程</a></h4>
											<div class="post-meta">
												<span><i class="icon-user"></i> By 人民论坛网</span>
												<span><i class="icon-speech"></i> 9条评论</span>
											</div>
											<p class="description">
											北京12月15日讯  沩水河边，长张高速旁的国家级经济技术开发区——宁乡经开区在不到一年的时间里，矗立起一个占地200多亩的装配式建筑现代化产业基地。

作为中国建筑进军装配式建筑新领域的重要阵地，中建科技湖南有限公司产业园快速建设、快速投产、快速升级，在不到半年时间里实现省级装配式建筑产业基地向国家级装配式建筑产业基地的跨越，绘就建筑业“工业革命”的湖南样板...
											</p>
											<a href="http://www.rmlt.com.cn/2017/1215/506113.shtml?from=singlemessage">全文阅读</a>
										</div>
									</article>
								</div> <!-- /.col-md-4 -->
								<div class="col-md-4 col-xs-12 post-masonry" style="position: absolute; left: 390px; top: 0px;">
									<article class="grid post-entry">
										<div class="post-image">
											<a href="http://www.most.gov.cn/kjbgz/201711/t20171121_136336.htm">
												<img width="600" height="430" src="assets/images/news04.jpg" alt="">
												<span class="filter-grayscale"></span>
											</a>
										</div>
										<div class="post-content">
											<h4 class="post-title">国家重点研发计划“绿色建筑及建筑工业化”重点专项2016年度立项项目推进会在北京召开</h4>
											<div class="post-meta">
												<span><i class="icon-user"></i> By 科技部</span>
												<span><i class="icon-speech"></i> 34条评论</span>
											</div>
											<p class="description">
												 2017年 11月 7-8日，中国 21世纪议程管理中心在北京组织召开了国家重点研发计划“绿色建筑及建筑工业化”重点专项 2016年度立项项目推进会，旨在了解各项目进展情况，加强项目间交流研讨。会议邀请了专项总体专家组和同行专家，科技部社发司、住建部科技司、教育部科技司等部门代表，项目承担单位、项目负责人及相关骨干人员等120余人参加会议。会议共分集中会、分组会、专题会等环节...
											</p>
											<a href="http://www.most.gov.cn/kjbgz/201711/t20171121_136336.htm">全文阅读</a>
										</div>
									</article>
								</div> <!-- /.col-md-4 -->
								<div class="col-md-4 col-xs-12 post-masonry" style="position: absolute; left: 390px; top: 0px;">
									<article class="grid post-entry">
										<div class="post-image">
											<a href="http://zzhz.zjol.com.cn/xww/lskb/hz13179/201710/t20171019_5395543.shtml">
												<img width="600" height="430" src="assets/images/news06.jpg" alt="">
												<span class="filter-grayscale"></span>
											</a>
										</div>
										<div class="post-content">
											<h4 class="post-title"><a href="http://zzhz.zjol.com.cn/xww/lskb/hz13179/201710/t20171019_5395543.shtml">浙江省内首个建筑工业化项目广受好评</a></h4>
											<div class="post-meta">
												<span><i class="icon-user"></i> By 杭州网</span>
												<span><i class="icon-speech"></i> 39条评论</span>
											</div>
											<p class="description">
												作为浙江省内首个新型建筑工业化保障房项目——德泽家园，9月20日迎来一期8幢住宅正式交付，这个传说中的“乐高式”建筑用11天时间，圆满完成了1008套经济适用房的交付任务，终于给业主交上了一份满意的答卷...
											</p>
											<a href="http://zzhz.zjol.com.cn/xww/lskb/hz13179/201710/t20171019_5395543.shtml">全文阅读</a>
										</div>
									</article>
								</div> <!-- /.col-md-4 -->
							</div>
						</div> <!-- /.row -->
						<div class="small-space"></div>
					</div> <!-- /.container -->
				</div>

				<jsp:include page="../Bottom/Bottom.jsp" flush="true" />
				
			</div> <!-- /.main-wrapper -->
			
		  </div> <!-- /.site-wrapper -->
		</div>

		<script src="assets/js/jquery.min.js"></script>
		<script src="js/home.js"></script>
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