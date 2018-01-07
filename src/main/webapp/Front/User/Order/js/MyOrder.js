$(document).ready(function(){
	
	alert(1)
})

//get my all designs
function getMyAllDesign(page,state){

	$.get("../F/Model/myDesign.final",{
		"state":state,
		"page":page
    },function(data){
    	
	    	$("#my_design_ul").empty();
	    	var json =data.data;
	   
	    	for(var i=0;i<json.length;i++){
	    		$("#my_design_ul").append(
	    			'<li>'+
                       '<div class="member-minute clearfix">'+
                            '<span>'+json[i].createTime+'</span>'+
                            '<!-- <span>订单号：<em>98653056821</em></span> -->'+
                            '<span class="member-custom">客服电话：<em>010-6544-0986</em></span>'+
                        '</div>'+
                        '<div class="member-circle clearfix">'+
                            '<div class="ci1">'+
                                '<div class="ci7 clearfix" style="height:147px">'+
                                    '<span class="gr1" style="margin-top: 20px"><a href="#"><img src="Pic/Main/'+json[i].createTime+'" width="60" height="60" title="" about=""></a></span>'+
                                    '<span class="gr2" style="margin-top: 20px"><a href="#">'+json[i].name+'</a></span>'+
                                '</div>'+
                            '</div>'+
                            '<div class="ci2" >'+json[i].userName+'</div>'+
                            '<div class="ci3"><b>￥'+json[i].designFee+'</b><!-- <p>货到付款</p><p class="iphone">手机订单</p> --></div>'+
                            '<div class="ci4"><p>2015-09-22</p></div>'+
                            '<div class="ci5"><p>等待付款</p> <p><a href="#">历史版本</a></p><p><a href="#">构件列表</a></p> <p><a href="#">价格清单</a></p></div>'+
                            '<div class="ci5 ci8"><p>剩余15时20分</p> <p><a href="#" class="member-touch">立即支付</a> </p> <p><a href="#">取消订单</a> </p></div>'+
                        '</div>'+
                    '</li>'
	    		)
	    	}
    })
}