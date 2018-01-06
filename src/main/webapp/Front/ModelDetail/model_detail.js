$(document).ready(function(){
	
	  

	getComments(1);
	getPages();
})

var page = 1;
var area = 0;
var number = 0;
var pageALL;
function getArea(a){
	area = a;
	getList()
}
function getNumber(n){
	number = n;
	getList()
}
function getPage(p){
	if(p == -1 && page !=1 ){
		alert(1)
	   page--;
	   getList();
	}else if(p == 0 && page != pageALL){
		alert(2)
		page++;
		getList();
	}else if(p>0){
		page = p;
		getList();
	}
}


//get comments
function getComments(page){
	
	$.ajaxSetup({  
	    async : false  
	});  

	$.get("../F/Model/comm.final",{
		"modelId":modelId,
		"page":page
    },function(data){
    	
	    	$("#comm_number").html(
	    			'<h4 class="comment-title">'+data.number+' 条评论</h4>'
	    	)
	    	$(".comment-list").empty();
	
	    	var json =data.data;
	    	pageALL = Math.ceil(Number(data.number)/4);
	   
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
    })
}

//get comments pages
function getPages(){
	
	$(".pages_ul").empty();
	if( pageAll == 0 ){
		return;
	}
	
	$(".pages_ul").append(
		'<li><a href="#"><span class="fa fa-angle-left"></span></a></li>'+
		'<li class="active"><a href="#">1</a></li>'
	)
	for(var i=1; i<pageAll; i++){
		
		$(".pages_ul").append(
			'<li><a href="#">'+(i+1)+'</a></li>'
		)
	}
	$(".pages_ul").append(
		'<li><a href="#"><span class="fa fa-angle-right"></span></a></li>'
	)
}