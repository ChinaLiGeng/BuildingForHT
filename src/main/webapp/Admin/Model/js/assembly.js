$(document).ready(function(){
	getAssem();
})

//get model assembly
function getAssem(){
	
	$.get("F/Model/model_assembly.final",{
		"modiId":modiId
    },function(data){
    	
	    $("#modelList_id").empty();
    	
	    	var json =data.data;
	
	    	for(var i=0;i<json.length;i++){
	    		
	    		$("#modelList_id").append(
	    				
	    			'<tr class="gradeX" >'+
                    '<td>'+json[i].name+'</td>'+
                    '<td>'+json[i].numberId+'</td>'+
                    '<td>长：'+json[i].length+'米；宽：'+json[i].width+'米；厚度：'+json[i].heigth+'米；配筋：'+json[i].reinforcingBars+'；</td>'+
                    '<th>'+json[i].number+'</th>'+
	             '</tr>'
	    		)
	    	}
	    	
    })
}

