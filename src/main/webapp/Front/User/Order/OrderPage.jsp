<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()+path+ "/";
%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href = "<%=basePath%>Front/">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

<link rel="stylesheet" type="text/css" href="User/Order/css/base.css">
<link rel="stylesheet" type="text/css" href="User/Order/css/home.css">

<title>下订单</title>
</head>
<body class="fixed-header">

<div class="box" id="box_info">
    <div class="hint">
        <div class="hint-in1">
            <div class="hint2">添加收货地址</div>
            <div class="hint3"></div>
        </div>


        <div class="pc-label"><label><i class="reds ">*</i>收货人:</label><input type="text" placeholder="请您填写收货人姓名"></div>
        <div id="sjld" style="margin-top:10px; padding-left:40px; position:relative;" class="clearfix">

            <div class="clearfix" style="padding-bottom:5px;"><i class="reds fl">*</i><p class="fl">所在地区:</p></div>

            <div class="m_zlxg" id="shenfen">

                <p title="">选择省份</p>
                <div class="m_zlxg2">
                    <ul></ul>
                </div>
            </div>
            <div class="m_zlxg" id="chengshi">
                <p title="">选择城市</p>
                <div class="m_zlxg2">
                    <ul></ul>
                </div>
            </div>
            <div class="m_zlxg" id="quyu">
                <p title="">选择区域</p>
                <div class="m_zlxg2">
                    <ul></ul>
                </div>
            </div>
            <input id="sfdq_num" type="hidden" value="" />
            <input id="csdq_num" type="hidden" value="" />
            <input id="sfdq_tj" type="hidden" value="" />
            <input id="csdq_tj" type="hidden" value="" />
            <input id="qydq_tj" type="hidden" value="" />
        </div>

        <div class="pc-label"><label><i class="reds ">*</i>详细地址:</label><input type="text" style="width:400px; " placeholder="请您填写收货人详细地址"></div>
        <div class="pc-label"><label><i class="reds ">*</i>手机号码:</label><input type="text" style="width:400px;"placeholder="请您填写收货人手机号码"></div>
        <div class="pc-label"><label>邮箱:</label><input type="text" style="width:400px;" placeholder="请您填写邮箱地址"></div>
        <a href="javascript:;" class="hint-in3">保存收货地址</a>
    </div>

</div>

		
		<a href="#" class="back-to-top" title="Back to top">
			<i class="icon-arrow-up"></i>
		</a>

		<div class="site-wrapper animsition">
			<jsp:include page="../../Head/head.jsp" flush="true" />
		</div> <!-- /.site-wrapper -->
		
		<!-- 订单提交成功 begin-->
<section>
    <div class="containers" style="margin-top:20px">
       <div class="pc-space">
           <div class="pc-order-title clearfix"><h3 class="fl">收货人信息</h3> <a onclick="showBox()" class="fr pc-order-add btn1">新增收货地址</a> </div>
           <div class="pc-border">
               <div class="pc-order-text clearfix">
                   <ul class=" clearfix">
                       <li class="clearfix fl">
                           <div class="fl pc-frame pc-frams"> <a href="#">默认地址</a></div>
                           <div class="fl pc-address"><span>嘻哈杂货铺</span> <span>186****4832 </span> <span>北京北京市海淀区首享科技大厦9层</span></div>
                       </li>
                       <li class="fr">
                           <div class="pc-click"><a href="#">设为默认地址</a> <a href="#">编辑</a> <a href="#">删除</a> </div>
                       </li>
                   </ul>
               </div>
           </div>
       </div>
       <div class="pc-space">
            <div class="pc-order-title clearfix"><h3 class="fl">支付方式</h3></div>
            <div class="pc-border">
                <div class="pc-order-text clearfix">
                    <ul class=" clearfix">
                        <li class="clearfix fl">
                            <div class="fl pc-frame pc-frams"> <a href="#"> 在线支付</a></div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
       <div class="pc-space clearfix">
           <div class="fl ">
               <div class="pc-order-title clearfix"><h3 class="fl">收货人信息</h3></div>
               <div class="fr pc-border">
                   <div class="pc-order-text pc-order-l clearfix">
                       <ul id="H-table" class="clearfix H-table"  >
                           <li class="cur">
                               <a href="javascript:void(0);">百事汇通</a>
                           </li>
                           <li>
                               <a href="javascript:void(0);">顺风快递</a>
                           </li>
                           <li>
                              <a href="javascript:void(0);">中通快递</a>
                           </li>
                       </ul>
                       <div class="" style="height:211px"></div>
                       <div class="pc-line"></div>
                       <div class="pc-freight"><p>运费：  8.00元</p></div>
                   </div>
               </div>
           </div>
           <div class="fr ">
               <div class="pc-order-title clearfix"><h3 class="fl">商品信息</h3></div>
               <div class="pc-border">
                   <div class="pc-order-text clearfix">
                       <div class="pc-wares-t"><h4>商家：  阿卡官方旗舰店</h4></div>
                       <div class="clearfix pc-wares-p">
                           <div class="fl pc-wares"><a href="#"><img src="theme/img/pd/pc1.png"></a></div>
                           <div class="fl pc-wares-w"> <a href="#">小米（MI）小米USB插线板 3个USB充电口 支持2A快充 3重安全保护</a> <p class="clearfix"><span class="fl">颜色：白色</span><span class="fr">版本：联通高</span></p></div>
                           <div class="fl pc-wares-s"><span class="reds">￥49.00</span><span>x1</span><span>有货</span></div>
                       </div>
                       <div class="clearfix pc-wares-p">
                           <div class="fl pc-wares"><a href="#"><img src="theme/img/pd/pc1.png"></a></div>
                           <div class="fl pc-wares-w"> <a href="#">小米（MI）小米USB插线板 3个USB充电口 支持2A快充 3重安全保护</a> <p class="clearfix"><span class="fl">颜色：白色</span><span class="fr">版本：联通高</span></p></div>
                           <div class="fl pc-wares-s"><span class="reds">￥49.00</span><span>x1</span><span>有货</span></div>
                       </div>
                       <div class="pc-written"><p>订单留言</p></div>
                   </div>
               </div>
           </div>
       </div>
       <div class="pc-space">
            <div class="pc-order-title clearfix"><h3 class="fl">发票信息</h3></div>
            <div class="pc-border">
                <div class="pc-order-text clearfix">
                    <ul class=" clearfix">
                        <li class="clearfix fl">
                            <div class="fl pc-address pc-wares-l"><span>普通发票（纸质）</span> <span> 个人</span> <span>明细</span><span><a href="#">修改</a> </span></div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
       <div class="clearfix">
           <div class="fr pc-list-t">
               <ul>
                   <li><span><b>2</b> 件商品，总商品金额：</span> <em>￥558.00</em></li>
                   <li><span>减额：</span> <em>￥558.00</em></li>
                   <li><span>运费：</span> <em>￥558.00</em></li>
                   <li><span>应付总额：</span> <em>￥558.00</em></li>
                   <li><span>减额：</span> <em>￥558.00</em></li>
               </ul>
           </div>
       </div>
       <div class="pc-space-n"></div>
       <div class="clearfix" style="margin-bottom:20px">
           <div class="fr pc-space-j">
               <spna>应付总额：<strong>￥558.00</strong></spna>
               <button class="pc-submit">提交订单</button>
           </div>
       </div>
    </div>
</section>
<!-- 订单提交成功 End-->
		
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
		<script type="text/javascript" src="User/Order/js/OrderPage.js"></script>
		
		<script type="text/javascript">
		    $(function(){
		
		        $("#sjld").sjld("#shenfen","#chengshi","#quyu");
		
		    });
		</script>
		
		
		<script type="text/javascript">
         (function(a){
             a.fn.hoverClass=function(b){
                 var a=this;
                 a.each(function(c){
                     a.eq(c).hover(function(){
                         $(this).addClass(b)
                     },function(){
                         $(this).removeClass(b)
                     })
                 });
                 return a
             };
         })(jQuery);

         $(function(){
             $("#pc-nav").hoverClass("current");
         });




         $(document).ready(function($){

             $(".btn1").click(function(event){
                 $(".hint").css({"display":"block"});
                 $(".box").css({"display":"block"});
             });

             $(".hint-in3").click(function(event) {
                 $(".hint").css({"display":"none"});
                 $(".box").css({"display":"none"});
             });

             $(".hint3").click(function(event) {
                 $(this).parent().parent().css({"display":"none"});
                 $(".box").css({"display":"none"});
             });

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

         });
     </script>
		

</body>
</html>