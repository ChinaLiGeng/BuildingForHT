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
		    		
		    		var temp = designState(json[i].designState,i);
		    		
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
	                                    '<div class="gr2" style="margin-top: 20px;margin-left:50px;"><a href="#">'+json[i].name+'</a></div>'+
	                                '</div>'+
	                            '</div>'+
	                            '<div class="ci2" >'+json[i].userName+'</div>'+
	                            '<div class="ci3"><b>￥'+json[i].designFee+'</b><!-- <p>货到付款</p><p class="iphone">手机订单</p> --></div>'+
	                            '<div class="ci4"><p>'+json[i].buildingArea+' 平方米</p></div>'+
	                            ''+temp+''+
	                        '</div>'+
	   			    '</li>'+
                    '<div class="member-setup clearfix" style="display:none" id="'+i+'">'+
	                   '<ul>'+
	                       '<li class="clearfix" style="border-bottom:none;">'+
	                           '<div class="member-score fl"><i class="reds">*</i>修改意见：</div>'+
	                           '<div class="member-star fl">'+
	                               '<textarea maxlength="200"></textarea>'+
	                           '</div>'+
	                       '</li>'+
	                       '<li class="clearfix" style="border-bottom:none;">'+
	                           '<div class="ci5 ci8"> <p><a href="#" class="member-touch">提交</a> </p> </div>'+
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
function designState(design_state,i){
	
	var operation;
	
	if(design_state == 1){                 //待审核
		operation = '<div class="ci5"><p><a>待审核</a></p></div>'
		
	}else if(design_state == 2){           //专业团队修改完毕
		
		operation = '<div class="ci5"><p><a >专业团队修改完毕，等待审计人员计算</a></p> <p style="cursor:pointer" onclick="showHistory()">历史版本</p></div>'
		
	}else if(design_state == 3){           //审计计算完毕
		
		operation = '<div class="ci5"><p><a >待确认</a></p> <p style="cursor:pointer" onclick="showHistory()">历史版本</p></div>'+
				    '<div class="ci5 ci8"> <p><a href="#" class="member-touch">下单</a> </p> <p><a style="cursor:pointer;" onclick="showSuggestion('+i+')">继续修改</a> </p><p><a href="#" class="member-touch">否决</a> </p></div>';
	}else if(design_state == 4){           //同意下单
		operation = '<div class="ci5"><p><a >设计完成</a></p> <p style="cursor:pointer" onclick="showHistory()">历史版本</p></div>' ;
		
	}else if(design_state == 5){           //否决
		
		operation = '<div class="ci5"><p><a >设计否决</a></p> <p style="cursor:pointer" onclick="showHistory()">历史版本</p></div>' ;
	}else if(design_state == 6){           //继续修改
		
		operation = '<div class="ci5"><p><a>继续修改，等待审核</a></p> <p style="cursor:pointer" onclick="showHistory()">历史版本</p></div>';
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
function showHistory(){
	$("#my_design_id").hide()
	$("#history").show();
}

//return my design
function returnMyDesign(){
	$("#history").hide();
	$("#my_design_id").show()
}

//show history detail
function showHistoryDetail(){
	$("#history").hide();
	$("#history_detail").show();
}

//return history
function returnHistory(){
	$("#history_detail").hide();
	$("#history").show();
}

//show suggestion
function showSuggestion(i){
	$("#"+i+"").show();
}