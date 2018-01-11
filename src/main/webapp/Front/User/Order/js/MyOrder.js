$(document).ready(function(){
	
	getMyAllDesign(1)        //get all
})

var pageNow = 1;
var pageAll = 0;
var tag = 0;
var state = 0;

//get my designs
function getMyDesign(page){

	$.get("../F/Model/myDesign.final",{
		"state":state,
		"page":page
    },function(data){
    	
	    	$("#my_design_ul").empty();
	    	if(data.meta.message == "未登录！"){
	    		window.location.href = "Login/login.html";
	    		return;
	    	}
	    	
	    if(data.meta.success == true){
		    	var json =data.data;
		    	pageAll = Math.ceil(Number(data.number)/4);
		    	
		    	for(var i=0;i<json.length;i++){
		    		
		    		var temp = designState(json[i].designState,json[i].modelId);
		    		
		    		$("#my_design_ul").append(
		    			'<li>'+
	                       '<div class="member-minute clearfix">'+
	                            '<span>'+json[i].createTime+'</span>'+
	                            '<!-- <span>订单号：<em>98653056821</em></span> -->'+
	                            '<span class="member-custom">客服电话：<em>010-6544-0986</em></span>'+
	                        '</div>'+
	                        '<div class="member-circle clearfix">'+
	                            '<div class="ci1">'+
	                                '<div class="ci7 clearfix" style="height:149px;position:relative">'+
	                                    '<div class="gr1" style="margin-top: 10px"><a href="../F/Model/det.final?modelId='+json[i].quoteModel+'"><img src="../Pic/Main/'+json[i].mainPic+'" style="width:180px;height:100px ;" title="" about=""></a></div>'+
	                                    '<div class="gr2" style="margin-top: 20px;margin-left:50px;"><a style="cursor:pointer">'+json[i].name+'</a></div>'+
	                                '</div>'+
	                            '</div>'+
	                            '<div class="ci2" >'+json[i].userName+'</div>'+
	                            '<div class="ci3"><b>￥'+json[i].designFee+'</b><!-- <p>货到付款</p><p class="iphone">手机订单</p> --></div>'+
	                            '<div class="ci4"><p>'+json[i].buildingArea+' 平方米</p></div>'+
	                            ''+temp+''+
	                        '</div>'+
	   			    '</li>'+
                    '<div class="member-setup clearfix" style="display:none" id="'+json[i].modelId+'">'+
	                   '<ul>'+
	                       '<li class="clearfix" style="border-bottom:none;">'+
	                           '<div class="member-score fl"><i class="reds">*</i>修改意见：</div>'+
	                           '<div class="member-star fl">'+
	                               '<textarea maxlength="200" id="text_area'+json[i].modelId+'"></textarea>'+
	                           '</div>'+
	                       '</li>'+
	                       '<li class="clearfix" style="border-bottom:none;">'+
	                           '<div class="ci5 ci8"> <p><a style="cursor:pointer" class="member-touch" onclick="continueOrder('+json[i].modelId+')">提交</a> </p> </div>'+
	                       '</li>'+
	                   '</ul>'+
	                '</div>'
		    		)
		    	}
		    	
	     	if( tag == 0 ){
		    		getPages();
		    		tag = 1;
		    	}
	    }
    })
}

//get my order
function getMyOrder(){
	
	$.get("../Ad/Order/my_order.final",{
    },function(data){
    	
	    	$("#my_order_ul").empty();
	    	if(data.meta.message == "未登录！"){
	    		window.location.href = "Login/login.html";
	    		return;
	    	}
	    	
	    if(data.meta.success == true){
		    	var json =data.data;
		    	
		    	for(var i=0;i<json.length;i++){
		    		
		    		var trackState;
		    		if( json[i].trackState == 1){
		    			trackState = "订单正在分配"
		    		}else if( json[i].trackState == 2){
		    			trackState = "订单已分配，构件生产阶段"
		    		}else if( json[i].trackState == 3){
		    			trackState = "预约安装"
		    		}else if( json[i].trackState == 4){
		    			trackState = "安装中"
		    		}else if( json[i].trackState == 5){
		    			trackState = "订单完成"
		    		}else if( json[i].trackState == 6){
		    			trackState = "订单已取消"
		    		}
		    		
		    		$("#my_order_ul").append(
		    				'<li>'+
                           	'<div class="member-minute clearfix">'+
                           		'<span></span><!-- <span>订单号：<em>98653056821</em></span> -->'+
                           		'<span class="member-custom">客服电话：<em>010-6544-0986</em></span>'+
                           	'</div>'+
                           	'<div class="member-circle clearfix">'+
                           		'<div class="ci1">'+
                           			'<div class="ci7 clearfix" style="height:149px;position:relative">'+
                           				'<div class="gr1" style="margin-top: 10px">'+
                           					'<a href="../F/Model/det.final?modelId=1">'+
                           						'<img src="../Pic/Main/'+json[i].mainPic+'" style="width:180px;height:100px ;" title="" about="">'+
                           					'</a>'+
                           				'</div>'+
                           				'<div class="gr2" style="margin-top: 20px;margin-left:50px;">'+
                           					'<a style="cursor:pointer">'+json[i].name+'</a>'+
                           				'</div>'+
                           			'</div>'+
                           		'</div>'+
                           		'<div class="ci2">'+json[i].userPhone+'</div>'+
                           		'<div class="ci3"><b>￥'+json[i].orderFee+'</b><!-- <p>货到付款</p><p class="iphone">手机订单</p> --></div>'+
                           		'<div class="ci4"><p>'+json[i].createTime+'</p></div>'+
                           		'<div class="ci5"><p><a>'+trackState+'</a></p></div>'+
                           		'<div class="ci5 ci8"> <p><a style="cursor:pointer;" class="member-touch">申请维修</a> </p><p><a style="cursor:pointer;" class="member-touch">取消订单</a> </p> </div>'+
                           	'</div>'+
                           '</li>'
		    		)
		    	}
		}
    })
}

//continue modify
function continueOrder(modelId){
	var suggestion = $("#text_area"+modelId+"").val();
	
	if( suggestion == null || suggestion == "" ){
		alert("建议不为空")
		return;
	}
	
	$.post("../F/Model/continue_order.final",{
		"modelId":modelId,
		"suddestion":suggestion
	},function(data){
		
		if(data.meta.success == false){
			alert(data.meta.message)
		}else{
			alert("提交成功！")
			window.location.reload();
		}
	})
}

//deny modify
function denyOrder(modelId){
	
	$.post("../F/Model/deny_order.final",{
		"modelId":modelId
	},function(data){
		
		if(data.meta.success == false){
			alert(data.meta.message)
		}else{
			alert("提交成功！")
			window.location.reload();
		}
	})
}

//get design pages
function getPages(){
	
	$("#design_pages").empty();
	if( pageAll == 0 ){
		return;
	}
	
	$("#design_pages").append(
			 '<a class="fl " onclick="toLeft()" style="cursor:pointer">上一页</a>'+
             '<a onclick="toPages(1)" style="cursor:pointer" class="current">1</a>'
	)
	for(var i=1; i<pageAll; i++){
		
		$("#design_pages").append(
			' <a style="cursor:pointer" onclick="toPages('+(i+1)+')">'+(i+1)+'</a>'
		)
	}
	$("#design_pages").append(
		' <a title="使用方向键右键也可翻到下一页哦！" class="" onclick="toRight()" style="cursor:pointer">下一页</a>'
	)
}

//jump pages
function toPages(page){
	getMyDesign(page)
	pageNow = page;
}

//jump left
function toLeft(){
	if( pageNow <= 1 ){
		return;
	}
	getMyDesign( --pageNow )
}

//jump right
function toRight(){
	if( pageNow >= pageAll ){
		return;
	}
	getMyDesign( ++pageNow )
}

//design state
function designState(design_state,modelId){
	
	var operation;
	
	if(design_state == 1){                 //待审核
		operation = '<div class="ci5"><p><a>待审核</a></p></div>'
		
	}else if(design_state == 2){           //专业团队修改完毕
		
		operation = '<div class="ci5"><p><a >专业团队修改完毕，等待审计人员计算</a></p> <p style="cursor:pointer" onclick="showHistory('+modelId+')">历史版本</p></div>'
		
	}else if(design_state == 3){           //审计计算完毕
		
		operation = '<div class="ci5"><p><a >待确认</a></p> <p style="cursor:pointer" onclick="showHistory('+modelId+')">历史版本</p></div>'+
				    '<div class="ci5 ci8"> <p><a style="cursor:pointer;" class="member-touch">下单</a> </p> <p><a style="cursor:pointer;" onclick="showSuggestion('+modelId+')">继续修改</a> </p><p><a style="cursor:pointer;" onclick="denyOrder('+modelId+')" class="member-touch">否决</a> </p></div>';
	}else if(design_state == 4){           //同意下单
		operation = '<div class="ci5"><p><a >设计完成</a></p> <p style="cursor:pointer" onclick="showHistory('+modelId+')">历史版本</p></div>' ;
		
	}else if(design_state == 5){           //否决
		
		operation = '<div class="ci5"><p><a >设计否决</a></p> <p style="cursor:pointer" onclick="showHistory('+modelId+')">历史版本</p></div>' ;
	}else if(design_state == 6){           //继续修改
		
		operation = '<div class="ci5"><p><a>继续修改，等待审核</a></p> <p style="cursor:pointer" onclick="showHistory('+modelId+')">历史版本</p></div>';
	}
	
	return operation;
}

//get my is been acked designs
function getMyAckDesign(){
	pageNow = 1
	state = 3;
	tag = 0
	getMyDesign(1)
}

//get my finished designs
function getFinished(){
	pageNow = 1
	state = 4;
	tag = 0
	getMyDesign(1)
}

//get my refused designs
function getRefused(){
	pageNow = 1
	state = 5;
	tag = 0
	getMyDesign(1)
}

//get all
function getMyAllDesign(){
	pageNow = 1
	state = 0;
	tag = 0
	getMyDesign(1)
}    

//show history
function showHistory(modelId){
	getHittoryList(modelId)
	$("#my_design_id").hide()
	$("#history").show();
}

//return my design
function returnMyDesign(){
	$("#history").hide();
	$("#my_design_id").show()
}

//show history detail
function showHistoryDetail(modiId){
	getHistoryDetail(modiId)
	getHistoryAsse(modiId)
	getHistoryPriceList(modiId)
	$("#history").hide();
	$("#history_detail").show();
}

//return history
function returnHistory(){
	$("#history_detail").hide();
	$("#history").show();
}

//show my order
function show_my_order(){
	getMyOrder();
	$("#history_detail").hide();
	$("#history").hide();
	$("#my_design_id").hide()
	$("#my_order_id").show()
}

//show my design
function show_my_design(){
	$("#history_detail").hide();
	$("#history").hide();
	$("#my_order_id").hide()
	$("#my_design_id").show()
}

//show suggestion
function showSuggestion(modelId){
	$("#"+modelId+"").show();
}

//get history
function getHittoryList(modelId){

	$.get("../F/Model/model_history.final",{
		"modelId":modelId,
    },function(data){
    	
	    	$("#history_id").empty();
	
	    	var json =data.data;
	   
	    	for(var i=0;i<json.length;i++){
	    		
	    		if( i== 0 ){
		    		$("#history_id").append(
		    			'<li class="clearfix"><div><a onclick="showHistoryDetail('+json[i].modiId+')" style="cursor: pointer;">'+json[i].modifyInfo+'<a style="font-weight: bolder;color:red;font-size:15px">（最新版）</a></a></div><div>'+json[i].createTime+'</div></li>'
		    		)
	    		}else{
	    			$("#history_id").append(
	    					' <li class="clearfix"><div><a onclick="showHistoryDetail('+json[i].modiId+')" style="cursor: pointer;">'+json[i].modifyInfo+'</a></div><div>'+json[i].createTime+'</div></li>'
	    			)
	    		}
	    	}
    })
}

//get history detail
function getHistoryDetail(modiId){

	$.get("../F/Model/history_detail.final",{
		"modiId":modiId,
    },function(data){
    	
     	var json =data.data;
	    	$("#return_info").html(
	    		'<dt>修改反馈</dt>'+
            '<dd class="member-seller">'+json.modifyInfo+'</dd>'
	    	);
	    	
	    	$("#3d_model").html(
	    		'<dt>3d模型</dt>'+
            '<dd><a style="cursor: pointer;" href="HT/temp.html?obj='+json.objPath+'&mtl='+json.mtlPath+'" target="_blank">点击查看</a></dd>'
	    	);
	    	
     	$("#all_price").html(
     		 '<div class="member-line"></div>'+
             '<div><span>共需支付：</span><em style="color: red;font-size: 17px">'+json.price+'</em></div>'+
             '<div style="float:right;margin-top:10px"><button class="pc-submit" onclick="toOrder('+json.modelId+','+json.price+')" style="width:135px;height:36px;line-height:36px;overflow:hidden;border:none;background-color:#e4393c;font-size:14px;font-weight:700;border-radius:3px;color:#fff">去支付</button></div>'

	    	);
     	
    })
}

//to order page
function toOrder(modelId,price){
	window.open("User/Order/OrderPage.jsp?modelId="+modelId+"&price="+price+"", "_blank"); 
}

//get history assembly
function getHistoryAsse(modiId){

	$.get("../F/Model/model_assembly.final",{
		"modiId":modiId,
    },function(data){
    	
	    	$("#asse_id").empty();
	    	$("#asse_id").append(
	    		'<li class="clearfix">'+
                 '<div class="No1" style="width:10%">构件种类</div>'+
                 '<div class="No3" style="width:10%">构件编号</div>'+
                 '<div class="No2" style="width:70%">构件属性</div>'+
                 '<div class="No4" style="width:10%">数量</div>'+
             '</li>'
	    	)
	    	
	    	var json =data.data;
	   
	    	for(var i=0;i<json.length;i++){
	    		
	    	 	$("#asse_id").append(
	    	    		'<li class="clearfix">'+
	                     '<div class="No1" style="width:10%">'+json[i].name+'</div>'+
	                     '<div class="No3" style="width:10%">'+json[i].numberId+'</div>'+
	                     '<div class="No2" style="width:70%">长：'+json[i].length+'米；宽：'+json[i].width+'米；厚度：'+json[i].heigth+'米；配筋：'+json[i].reinforcingBars+'；</div>'+
	                     '<div class="No4" style="width:10%">'+json[i].number+'</div>'+
	                 '</li>'
	        )
	    	}
    })
}

//get history Price list
function getHistoryPriceList(modiId){

	$.get("../F/Model/price_list.final",{
		"modiId":modiId,
    },function(data){
    	
	    	$("#price_id").empty();
	    	$("#price_id").append(
    			 '<li class="clearfix">'+
                 '<div class="No2" style="width:70%">每一项费用详细说明</div>'+
                 '<div class="No1" style="width:30%">价格</div>'+
             '</li>'
	    	)
	    	
	    	var json =data.data;
	   
	    	for(var i=0;i<json.length;i++){
	    		
	    	 	$("#price_id").append(
    	 			 '<li class="clearfix">'+
                     '<div class="No2" style="width:70%">'+json[i].listEach+'</div>'+
                     '<div class="No1" style="width:30%">'+json[i].price+'</div>'+
                 '</li>'
	        )
	    	}
    })
}