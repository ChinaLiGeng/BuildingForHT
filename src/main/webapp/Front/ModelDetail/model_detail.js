$(document).ready(function(){
	
	getComments(1);
	getSimilarModels();
})

var pageNow = 1;
var pageAll = 0;
var tag = 0;

//get comments
function getComments(page){

	$.get("../F/Model/comm.final",{
		"modelId":modelId,
		"page":page
    },function(data){
    	
	    	$("#comm_number").html(
	    			'<h4 class="comment-title">'+data.number+' 条评论</h4>'
	    	)
	    	$(".comment-list").empty();
	
	    	var json =data.data;
	    	pageAll = Math.ceil(Number(data.number)/4);
	   
	    	for(var i=0;i<json.length;i++){
	    		$(".comment-list").append(
	    				'<li>'+
						'<div class="comment clearfix">'+
							'<div class="comment-avatar">'+
								'<img src="../Pic/User/'+json[i].userPic+'" alt="">'+
							'</div>'+
							'<div class="comment-content">'+
								'<h5>'+json[i].userName+'</h5>'+
								'<span class="comment-time">'+json[i].createTime+'</span>'+
								'<p>'+json[i].context+'</p>'+
								'<a href="#" class="reply"><span class="fa fa-reply"></span> Reply</a>'+
							'</div>'+
						'</div>'+
					'</li>'
	    		)
	    	}
	    	
	    	if( tag == 0 ){
	    		getPages();
	    		tag = 1;
	    	}
    })
}

//get comments pages
function getPages(){
	
	$("#pages_ul").empty();
	if( pageAll == 0 ){
		return;
	}
	
	$("#pages_ul").append(
		'<li><a style="cursor:pointer; text-align:center;" onclick="toLeft()" class="fa fa-angle-left" </a></li>'+
		'<li class="active"><a style="cursor:pointer;text-align:center;" onclick="toPages(1)">1</a></li>'
	)
	for(var i=1; i<pageAll; i++){
		
		$("#pages_ul").append(
			'<li><a style="cursor:pointer;text-align:center;" onclick="toPages('+(i+1)+')">'+(i+1)+'</a></li>'
		)
	}
	$("#pages_ul").append(
		'<li><a style="cursor:pointer;text-align:center;" onclick="toRight()" class="fa fa-angle-right" </a></li>'
	)
}

//jump pages
function toPages(page){
	getComments(page)
	pageNow = page;
}

//jump left
function toLeft(){
	if( pageNow <= 1 ){
		return;
	}
	getComments( --pageNow )
}

//jump right
function toRight(){
	if( pageNow >= pageAll ){
		return;
	}
	getComments( ++pageNow )
}

//get similar models
function getSimilarModels(){

	$.get("../F/Model/simi.final",{
		"floor":floorNumber,
		"area":area
    },function(data){
    	
	    	$("#simi_model").empty();
	    	var json =data.data;
	   
	    	for(var i=0;i<json.length;i++){
	    		$("#simi_model").append(
	    			'<a href="../F/Model/det.final?modelId='+json[i].modelId+'" class="thumb">'+
					'<img src="../Pic/Main/'+json[i].mainPic+'" alt="">'+
				'</a>'
	    		)
	    	}
    })
}

function design(){
	var suggestion = $("#suggestion").val();
	if(suggestion == null){
		return 
	}
	$.post("../F/Model/updateModel",{
		"id":modelId,
		"sugg":suggestion
	},function(data){
		if(data.meta.success == false){
			alert(data.meta.message)
		}else{
			alert("提交成功！")
		}
	})
}
function showDiv(){
	
	$("#hideA").fadeOut();
	setTimeout("show()",600) 
	
}

function show(){
	$("#sugg").fadeIn();
}

//show 3d model
function show3D(){
	
}