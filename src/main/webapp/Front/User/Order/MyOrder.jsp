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

    <title>个人中心</title>

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
	
	<!-- order begin-->
	<meta name="Generator" content="EditPlus®">
	<meta name="Author" content="">
	<meta name="Keywords" content="">
	<meta name="Description" content="">
	<meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE"> 
	<meta name="renderer" content="webkit">
    <link rel="shortcut icon" type="image/x-icon" href="theme/icon/favicon.ico">
	<link rel="stylesheet" type="text/css" href="User/Order/css/base.css">
	<link rel="stylesheet" type="text/css" href="User/Order/css/member.css">
    <script type="text/javascript" src="User/Order/js/jquery.js"></script>
    
     
	<!-- order end -->

	</head>
	<body class="fixed-header">
		
		<a href="#" class="back-to-top" title="Back to top">
			<i class="icon-arrow-up"></i>
		</a>

		<div class="site-wrapper animsition">
			<jsp:include page="../../Head/head.jsp" flush="true" />
		</div> <!-- /.site-wrapper -->
		

<!-- 个人中心 begin -->
<section id="member">
    <div class="member-center clearfix" style="margin-top:20px">
        <div class="member-left fl">
            <div class="member-apart clearfix">
                <div class="fl"><a ><img src="../Pic/User/profile-1.jpg"></a></div>
                <div class="fl">
                    <p>用户名：</p>
                    <p><a href="#">亚里士多德</a></p>
                </div>
            </div>
            <div class="member-lists">
                <dl>
                    <dt>我的信息</dt>
                    <dd ><a style="cursor: pointer;" onclick="show_my_design()">我的设计</a></dd>
                    <dd><a style="cursor: pointer;" onclick="show_my_order()">我的订单</a></dd>
                    <dd><a style="cursor: pointer;">我的收藏</a></dd>
                </dl>
                <dl>
                    <dt>客户服务</dt>
                    <dd><a style="cursor: pointer;">维修申请</a></dd>
                </dl>
                <dl>
                    <dt>我的消息</dt>
                    <dd><a style="cursor: pointer;">商城快讯</a></dd>
                    <dd><a style="cursor: pointer;">帮助中心</a></dd>
                </dl>
            </div>
        </div>
        <div class="member-right fr" id="my_design_id">
            <div class="member-head">
                <div class="member-heels fl" style="font-size: 18px">我的设计</div>
            </div>
            <div class="member-whole clearfix">
                <ul id="H-table" class="H-table">
                    <li class="cur"><a style="cursor: pointer;" onclick="getMyAllDesign()">全部设计</a></li>
                    <li><a style="cursor: pointer;" onclick="getMyAckDesign()">待确认</a></li>
                    <li><a style="cursor: pointer;" onclick="getFinished()">设计完成</a></li>
                    <li><a style="cursor: pointer;" onclick="getRefused()">设计否决</a></li>
                </ul>
            </div>
            <div class="member-border">
               <div class="member-return H-over">
                   <div class="member-cancel clearfix">
                       <span class="be1" style="color:black;font-size: 15px">源模型信息</span>
                       <span class="be2" style="color:black;font-size: 15px">审核团队</span>
                       <span class="be2" style="color:black;font-size: 15px">设计金额</span>
                       <span class="be2" style="color:black;font-size: 15px">建筑面积</span>
                       <span class="be2" style="color:black;font-size: 15px">设计状态</span>
                       <span class="be2" style="color:black;font-size: 15px">操作</span>
                   </div>
                   <div class="member-sheet clearfix">
                       <ul id="my_design_ul">
                           
                       </ul>
                   </div>
               </div>

                <div class="clearfix" style="padding:30px 20px;">
                    <div class="fr pc-search-g pc-search-gs" id="design_pages">
                       <!--  <a href="javascript:;">3</a>
                        <a href="javascript:;">4</a>
                        <a href="javascript:;">5</a>
                        <a href="javascript:;">6</a>
                        <a href="javascript:;">7</a>
                        <span class="pc-search-di">…</span>
                        <a href="javascript:;">1088</a> -->
                    </div>
                </div>

            </div>
        </div>
        
        <!-- history begin -->
        <div class="member-right fr" style="display: none;" id="history">
            <div class="member-head">
                <div class="member-heels fl" style="font-size: 18px">历史版本</div>
                <!-- <div class="member-heels fl" style="font-size: 18px;float: right;margin-right:10px;cursor: pointer;" onclick="returnMyDesign()">返回</div> -->
            		<div class="member-backs fr"><a style="cursor: pointer;" onclick="returnMyDesign()">返回</a></div>
            </div>
            <div class="member-border">
                
                <div class="member-entry">
                    <div class="member-issue clearfix">
                        <span style="font-size:16px;color:black;">版本</span>
                        <span style="font-size:16px;color:black;">发布时间</span>
                    </div>
                    <ul id="history_id">
                       
                       
                    </ul>
                </div>
            </div>
        </div>
        <!-- history end -->
        
        <!-- history detail begin -->
        <div class="member-right fr" style="display: none;" id="history_detail">
            <div class="member-head">
                <div class="member-heels fl" style="font-size: 18px">版本详细信息</div>
                <div class="member-backs fr"><a style="cursor: pointer;" onclick="returnHistory()">返回</a></div>
            </div>
            <div class="member-border">
               <div class="member-order">
                   <dl id="return_info">
                      
                   </dl>
                   <dl class="member-custom clearfix " id="3d_model">
                   </dl>
                   <dl>
                       <dt>构件列表</dt>
                      <!--  <dd class="member-seller">本订单是由 “以纯甲醇旗舰店” 发货并且提高售后服务，商品在下单后会尽快给您发货。 </dd> -->
                   </dl>
                   <div class="member-serial">
	                   <ul id="asse_id">
	                       
	                   </ul>
               	    </div>
               	    <dl>
                       <dt>费用清单</dt>
                      <!--  <dd class="member-seller">本订单是由 “以纯甲醇旗舰店” 发货并且提高售后服务，商品在下单后会尽快给您发货。 </dd> -->
	                </dl>
	                <div class="member-serial">
	                   <ul id="price_id">
	                      
	                   </ul>
               	    </div>
               </div>
            </div>
            <div class="member-settle clearfix">
                <div class="fr" id="all_price">
                  
                </div>
            </div>
        </div>
        <!-- history detail end -->
        
        <!-- my order begin-->
        <div class="member-right fr" id="my_order_id" style="display: none">
            <div class="member-head">
                <div class="member-heels fl" style="font-size: 18px">我的订单</div>
            </div>
            <div class="member-border">
               <div class="member-return H-over">
                   <div class="member-cancel clearfix">
                       <span class="be1" style="color:black;font-size: 15px">模型信息</span>
                       <span class="be2" style="color:black;font-size: 15px">联系人电话</span>
                       <span class="be2" style="color:black;font-size: 15px">订单价格</span>
                       <span class="be2" style="color:black;font-size: 15px">下单时间</span>
                       <span class="be2" style="color:black;font-size: 15px">施工状态</span>
                       <span class="be2" style="color:black;font-size: 15px">操作</span>
                   </div>
                   <div class="member-sheet clearfix">
                       <ul id="my_order_ul">
                           
                       </ul>
                   </div>
               </div>

                <div class="clearfix" style="padding:30px 20px;">
                    <div class="fr pc-search-g pc-search-gs" id="design_pages">
                       <!--  <a href="javascript:;">3</a>
                        <a href="javascript:;">4</a>
                        <a href="javascript:;">5</a>
                        <a href="javascript:;">6</a>
                        <a href="javascript:;">7</a>
                        <span class="pc-search-di">…</span>
                        <a href="javascript:;">1088</a> -->
                    </div>
                </div>

            </div>
        </div>
        <!-- my order end -->
    </div>
</section>
<!-- 商城快讯 End -->

<!--- footer begin-->
<jsp:include page="../../Bottom/Bottom.jsp" flush="true" />
<!-- footer End -->
		

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
		<script type="text/javascript" src="User/Order/js/MyOrder.js"></script>
		<!-- <script>
         $(function(){

             $("#H-table li").each(function(i){
                 $(this).click((function(k){
                     var _index = k;
                     return function(){
                         $(this).addClass("cur").siblings().removeClass("cur");
                         $(".H-over").hide();
                         $(".H-over:eq(" + _index + ")").show();
                     }
                 })(i));
             });
             $("#H-table1 li").each(function(i){
                 $(this).click((function(k){
                     var _index = k;
                     return function(){
                         $(this).addClass("cur").siblings().removeClass("cur");
                         $(".H-over1").hide();
                         $(".H-over1:eq(" + _index + ")").show();
                     }
                 })(i));
             });
         });
     </script> -->
	</body>
</html>