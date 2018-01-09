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
                <div class="fl"><a href="#"><img src="theme/img/bg/mem.png"></a></div>
                <div class="fl">
                    <p>用户名：</p>
                    <p><a href="#">亚里士多德</a></p>
                    <p>搜悦号：</p>
                    <p>389323080</p>
                </div>
            </div>
            <div class="member-lists">
                <dl>
                    <dt>我的信息</dt>
                    <dd ><a href="#">我的设计</a></dd>
                    <dd><a href="#">我的订单</a></dd>
                    <dd><a href="#">我的收藏</a></dd>
                </dl>
                <dl>
                    <dt>客户服务</dt>
                    <dd><a href="#">退货申请</a></dd>
                    <dd><a href="#">退货/退款记录</a></dd>
                </dl>
                <dl>
                    <dt>我的消息</dt>
                    <dd><a href="#">商城快讯</a></dd>
                    <dd><a href="#">帮助中心</a></dd>
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
                           <!-- <li>
                               <div class="member-minute clearfix">
                                   <span>2015-09-22 18:22:33</span>
                                   <span>订单号：<em>98653056821</em></span>
                                   <span class="member-custom">客服电话：<em>010-6544-0986</em></span>
                               </div>
                               <div class="member-circle clearfix">
                                   <div class="ci1">
                                       <div class="ci7 clearfix" style="height:147px">
                                           <span class="gr1" style="margin-top: 20px"><a href="#"><img src="User/Order/icon/m1.png" width="60" height="60" title="" about=""></a></span>
                                           <span class="gr2" style="margin-top: 20px"><a href="#">红米Note2 标准版 白色 移动4G手机 双卡双待是</a></span>
                                       </div>
                                   </div>
                                   <div class="ci2" >张子琪</div>
                                   <div class="ci3"><b>￥120.00</b><p>货到付款</p><p class="iphone">手机订单</p></div>
                                   <div class="ci4"><p>2015-09-22</p></div>
                                   <div class="ci5"><p>等待付款</p> <p><a href="#">历史版本</a></p><p><a href="#">构件列表</a></p> <p><a href="#">价格清单</a></p></div>
                                   <div class="ci5 ci8"><p>剩余15时20分</p> <p><a href="#" class="member-touch">立即支付</a> </p> <p><a href="#">取消订单</a> </p></div>
                               </div>
                           </li> -->
                           
                       </ul>
                   </div>
               </div>
              <!--  <div class="member-return H-over" style="display:none;">
                   <div class="member-cancel clearfix">
                       <span class="be1">订单信息</span>
                       <span class="be2">收货人</span>
                       <span class="be2">订单金额</span>
                       <span class="be2">订单时间</span>
                       <span class="be2">订单状态</span>
                       <span class="be2">订单操作</span>
                   </div>
                   <div class="member-sheet clearfix">
                       <ul>
                           <li>
                               <div class="member-minute clearfix">
                                   <span>2015-09-22 18:22:33</span>
                                   <span>订单号：<em>98653056821</em></span>
                                   <span><a href="#">以纯甲醇旗舰店</a></span>
                                   <span class="member-custom">客服电话：<em>010-6544-0986</em></span>
                               </div>
                               <div class="member-circle clearfix">
                                   <div class="ci1">
                                       <div class="ci7 clearfix">
                                           <span class="gr1"><a href="#"><img src="theme/img/pd/m1.png" width="60" height="60" title="" about=""></a></span>
                                           <span class="gr2"><a href="#">红米Note2 标准版 白色 移动4G手机 双卡双待</a></span>
                                           <span class="gr3">X1</span>
                                       </div>
                                       <div class="ci7 clearfix">
                                           <span class="gr1"><a href="#"><img src="theme/img/pd/m2.png" width="60" height="60" title="" about=""></a></span>
                                           <span class="gr2"><a href="#">AXON天机mini NBA限量版</a></span>
                                           <span class="gr3">X9</span>
                                       </div>
                                   </div>
                                   <div class="ci2" >张子琪</div>
                                   <div class="ci3"><b>￥120.00</b><p>货到付款</p><p class="iphone">手机订单</p></div>
                                   <div class="ci4"><p>2015-09-22</p></div>
                                   <div class="ci5"><p>已申请退货</p> <p><a href="#">退货日志</a></p></div>
                                   <div class="ci6"><p><a href="#">取消退货</a> </p></div>
                               </div>
                           </li>
                           <li>
                               <div class="member-minute clearfix">
                                   <span>2015-09-22 18:22:33</span>
                                   <span>订单号：<em>98653056821</em></span>
                                   <span><a href="#">以纯甲醇旗舰店</a></span>
                                   <span class="member-custom">客服电话：<em>010-6544-0986</em></span>
                               </div>
                               <div class="member-circle clearfix">
                                   <div class="ci1">
                                       <div class="ci7 clearfix">
                                           <span class="gr1"><a href="#"><img src="theme/img/pd/m1.png" width="60" height="60" title="" about=""></a></span>
                                           <span class="gr2"><a href="#">红米Note2 标准版 白色 移动4G手机 双卡双待</a></span>
                                           <span class="gr3">X1</span>
                                       </div>
                                       <div class="ci7 clearfix">
                                           <span class="gr1"><a href="#"><img src="theme/img/pd/m2.png" width="60" height="60" title="" about=""></a></span>
                                           <span class="gr2"><a href="#">AXON天机mini NBA限量版</a></span>
                                           <span class="gr3">X9</span>
                                       </div>
                                   </div>
                                   <div class="ci2" >张子琪</div>
                                   <div class="ci3"><b>￥120.00</b><p>货到付款</p><p class="iphone">手机订单</p></div>
                                   <div class="ci4"><p>2015-09-22</p></div>
                                   <div class="ci5"><p>已完成</p> <p><a href="#">订单详情</a></p></div>
                                   <div class="ci6"><p><a href="#">取消退货</a> </p></div>
                               </div>
                           </li>
                           <li>
                               <div class="member-minute clearfix">
                                   <span>2015-09-22 18:22:33</span>
                                   <span>订单号：<em>98653056821</em></span>
                                   <span><a href="#">以纯甲醇旗舰店</a></span>
                                   <span class="member-custom">客服电话：<em>010-6544-0986</em></span>
                               </div>
                               <div class="member-circle clearfix">
                                   <div class="ci1">
                                       <div class="ci7 clearfix">
                                           <span class="gr1"><a href="#"><img src="theme/img/pd/m1.png" width="60" height="60" title="" about=""></a></span>
                                           <span class="gr2"><a href="#">红米Note2 标准版 白色 移动4G手机 双卡双待</a></span>
                                           <span class="gr3">X1</span>
                                       </div>
                                       <div class="ci7 clearfix">
                                           <span class="gr1"><a href="#"><img src="theme/img/pd/m2.png" width="60" height="60" title="" about=""></a></span>
                                           <span class="gr2"><a href="#">AXON天机mini NBA限量版</a></span>
                                           <span class="gr3">X9</span>
                                       </div>
                                   </div>
                                   <div class="ci2" >张子琪</div>
                                   <div class="ci3"><b>￥120.00</b><p>货到付款</p><p class="iphone">手机订单</p></div>
                                   <div class="ci4"><p>2015-09-22</p></div>
                                   <div class="ci5"><p>已完成</p> <p><a href="#">订单详情</a></p></div>
                                   <div class="ci6"><p><a href="#">取消退货</a> </p></div>
                               </div>
                           </li>
                       </ul>
                   </div>
               </div> -->
              <!--  <div class="H-over member-over" style="display:none;"><h2>待发货</h2></div>
               <div class="H-over member-over" style="display:none;"><h2>待收货</h2></div>
               <div class="H-over member-over" style="display:none;"><h2>交易完成</h2></div>
               <div class="H-over member-over" style="display:none;"><h2>订单信息</h2></div> -->

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
                    <ul>
                        <li class="clearfix"><div><a onclick="showHistoryDetail()" style="cursor: pointer;">在一层加了门窗，在二层北面加了卫生间<a style="font-weight: bolder;color:red;font-size:15px">（最新版）</a></a></div><div>2015-03-31 17:23:20</div></li>
                        <li class="clearfix"><div><a href="#">买JBL耳机送上古世纪游戏炫酷时装礼包 </a></div><div>2015-03-31 17:23:20</div></li>
                        <li class="clearfix"><div><a href="#">日韩美妆爆品低至1折起,不做女汉字换季护肤保卫战</a></div><div>2015-03-31 17:23:20</div></li>
                        <li class="clearfix"><div><a href="#">愚人节整蛊玩具低至19</a></div><div>2015-03-31 17:23:20</div></li>
                        <li class="clearfix"><div><a href="#">文艺蓝牙音箱 火热众筹中 </a></div><div>2015-03-31 17:23:20</div></li>
                        <li class="clearfix"><div><a href="#">金秋献礼，热销投影送激光笔，指定机型送安装！ </a></div><div>2015-03-31 17:23:20</div></li>
                        <li class="clearfix"><div><a href="#">男装跨店满299减60,赶快行动吧～！～～～</a></div><div>2015-03-31 17:23:20</div></li>
                        <li class="clearfix"><div><a href="#">愚人节整蛊玩具低至19</a></div><div>2015-03-31 17:23:20</div></li>
                        <li class="clearfix"><div><a href="#">文艺蓝牙音箱 火热众筹中 </a></div><div>2015-03-31 17:23:20</div></li>
                        <li class="clearfix"><div><a href="#">金秋献礼，热销投影送激光笔，指定机型送安装！ </a></div><div>2015-03-31 17:23:20</div></li>
                        <li class="clearfix"><div><a href="#">男装跨店满299减60,赶快行动吧～！～～～</a></div><div>2015-03-31 17:23:20</div></li>
                        <li class="clearfix"><div><a href="#">无线立式吸尘器仅￥399 ！</a></div><div>2015-03-31 17:23:20</div></li>
                        <li class="clearfix"><div><a href="#">无线立式吸尘器仅￥399 ！</a></div><div>2015-03-31 17:23:20</div></li>
                        <li class="clearfix"><div><a href="#">赏春盛宴 大牌春装1折起 </a></div><div>2015-03-31 17:23:20</div></li>
                        <li class="clearfix"><div><a href="#">放价旅游 红包免费领，点到你手软！</a></div><div>2015-03-31 17:23:20</div></li>
                        <li class="clearfix"><div><a href="#">1元加价购台湾高粱美酒热销中 ！</a></div><div>2015-03-31 17:23:20</div></li>
                        <li class="clearfix"><div><a href="#">1元加价购台湾高粱美酒热销中</a></div><div>2015-03-31 17:23:20</div></li>
                        <li class="clearfix"><div><a href="#">愚人节整蛊玩具低至19</a></div><div>2015-03-31 17:23:20</div></li>
                        <li class="clearfix"><div><a href="#">文艺蓝牙音箱 火热众筹中 </a></div><div>2015-03-31 17:23:20</div></li>
                        <li class="clearfix"><div><a href="#">金秋献礼，热销投影送激光笔，指定机型送安装！ </a></div><div>2015-03-31 17:23:20</div></li>
                        <li class="clearfix"><div><a href="#">男装跨店满299减60,赶快行动吧～！～～～</a></div><div>2015-03-31 17:23:20</div></li>
                        <li class="clearfix"><div><a href="#">无线立式吸尘器仅￥399 ！</a></div><div>2015-03-31 17:23:20</div></li>
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
                   <dl>
                       <dt>修改反馈</dt>
                       <dd class="member-seller">改了这个那个，你加不加钱啊 </dd>
                   </dl>
                   <dl class="member-custom clearfix ">
                       <dt>3d模型</dt>
                       <dd><a style="cursor: pointer;">点击查看</a></dd>
                   </dl>
                   <dl>
                       <dt>构件列表</dt>
                      <!--  <dd class="member-seller">本订单是由 “以纯甲醇旗舰店” 发货并且提高售后服务，商品在下单后会尽快给您发货。 </dd> -->
                   </dl>
                   <div class="member-serial">
	                   <ul>
	                       <li class="clearfix">
	                           <div class="No1" style="width:10%">构件种类</div>
	                           <div class="No3" style="width:10%">构件编号</div>
	                           <div class="No2" style="width:70%">构件属性</div>
	                           <div class="No4" style="width:10%">数量</div>
	                       </li>
	                       <li class="clearfix">
	                      	   <div class="No1" style="width:10%">梁柱</div>
	                           <div class="No3" style="width:10%">x5001239</div>
	                           <div class="No2" style="width:70%">长12306；宽230；高44；配筋22</div>
	                           <div class="No4" style="width:10%">50</div>
	                       </li>
	                        <li class="clearfix">
	                      	   <div class="No1" style="width:10%">梁柱</div>
	                           <div class="No3" style="width:10%">x5001239</div>
	                           <div class="No2" style="width:70%">长12306；宽230；高44；配筋22</div>
	                           <div class="No4" style="width:10%">50</div>
	                       </li>
	                   </ul>
               	    </div>
               	    <dl>
                       <dt>费用清单</dt>
                      <!--  <dd class="member-seller">本订单是由 “以纯甲醇旗舰店” 发货并且提高售后服务，商品在下单后会尽快给您发货。 </dd> -->
	                </dl>
	                <div class="member-serial">
	                   <ul>
	                       <li class="clearfix">
	                           <div class="No2" style="width:70%">每一项费用详细说明</div>
	                           <div class="No1" style="width:30%">价格</div>
	                       </li>
	                       <li class="clearfix">
	                      	   <div class="No2" style="width:70%">构件费用</div>
	                           <div class="No1" style="width:30%">¥20000</div>
	                       </li>
	                        <li class="clearfix">
	                      	   <div class="No2" style="width:70%">构件费用</div>
	                           <div class="No1" style="width:30%">¥20000</div>
	                       </li>
	                   </ul>
               	    </div>
               </div>
            </div>
            <div class="member-settle clearfix">
                <div class="fr">
                    <div class="member-line"></div>
                    <div><span>共需支付：</span><em style="color: red;font-size: 17px">￥280.00</em></div>
                </div>
            </div>
        </div>
        <!-- history detail end -->
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