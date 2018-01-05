$(document).ready(function(){
	getModel()
})

function getModel(){
	$.post("../F/Model/modelList",function(data){
		var json = data.data;
		$("#modelList").empty();
		for(var i=0;i<json.length;i++){
			$("#modelList").append(
					'<div class="col-sm-6 col-md-3 project-item building">'+
					'<article class="project-entry-1 wow fadeInCdb" data-wow-duration="0.7s" data-wow-delay="0.3s" style="visibility: visible; animation-duration: 0.7s; animation-delay: 0.3s; animation-name: fadeInCdb;">'+
						'<div class="image-holder">'+
							'<a href="ModelDetail/ModelDetaul.jsp?id='+json[i].modelId+'">'+
								'<img width="800" height="500" src="assets/images/'+json[i].mainPic+'" alt="">'+
								'<h2 class="project-title">'+json[i].name+'</h2>'+
								'<span class="project-overlay"></span>'+
								'<span class="overlay-triangle"></span>'+
							'</a>'+
						'</div>'+
					'</article>'+
				'</div>'
					)	
		}
	})
}
