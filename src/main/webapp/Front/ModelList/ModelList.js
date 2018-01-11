$(document).ready(function(){
	getList();
})
var page = 1;
var area = 0;
var number = 0;
var pageALL;
function getArea(a){
	area = a;
	page = 1;
	getList()
}
function getNumber(n){
	number = n;
	page=1;
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

function getList(){
	var json = {
			 "page":page,
			 "floor":number,
		     "area":area
	}
	$.post("../F/Model/modelAllList",{
		 "page":page,
		 "floor":number,
	     "area":area
    },function(data){
    	var json =data.data;
    	pageALL = Math.ceil(Number(data.number)/12);
    	$("#list").empty();
    	for(var i=0;i<json.length;i++){
    		$("#list").append(
    				'<div class="col-sm-6 col-md-3 project-item building">'+
					'<article class="project-entry-1 wow fadeInCdb" data-wow-duration="0.7s" data-wow-delay="0.3s">'+
						'<div class="image-holder">'+
							'<a href="project-single.html">'+
								'<img style="width:800px; height:175px;" src="assets/images/'+json[i].mainPic+'" alt="">'+
								'<h2 class="project-title">'+json[i].name+'</h2>'+
								'<span class="project-overlay"></span>'+
								'<span class="overlay-triangle"></span>'+
							'</a>'+
						'</div>'+
					'</article>'+
				'</div>'
    				)
    	};
    	$("#page").empty();
    	$("#page").append(
    			'<li><a cursor="pointer" onclick="getPage(-1)" class="fa fa-angle-left" </a></li>'+
    			'<li class="active"><a cursor="pointer" onclick="getPage(1)">1</a></li>'
    			)
    	for(var x=2;x <= pageALL;x++){
    		
    		$("#page").append(
    				'<li><a htef="#" cursor="pointer" onclick="getPage('+x+')">'+x+'</a></li>'
    				)
    	}
    	$("#page").append(
    			'<li><a cursor="pointer" onclick="getPage(0)" class="fa fa-angle-right" </a></li>')
    })
	
}