$(document).ready(function(){
	getCalcModles(1);
})

var pageAll = 0;
var tag = 0;       //show page tag

//get calc models
function getCalcModles(page){
	
	$.get("F/Model/calcModels.final",{
		"page":page
    },function(data){
    	
	    $("#modelList_id").empty();
    	
	    	var json =data.data;
	    	pageAll = Math.ceil(Number(data.number)/10);
	
	    	for(var i=0;i<json.length;i++){
	    		var id = Number(json[i].modiId)
	    		$("#modelList_id").append(
	    				
	    			'<tr class="gradeX" >'+
	    				'<th><input type="checkbox"></th>'+
	                    '<td>'+json[i].floorNumber+'层</td>'+
	                    '<td>'+json[i].buildingArea+'平方米</td>'+
	                    '<td>'+json[i].landArea+'平方米</td>'+
	                    '<th>'+json[i].createTime+'</th>'+
	                    '<td>'+json[i].modifyInfo+'</td>'+
	                    '<th ><a style="cursor:pointer" href="Admin/Model/ModelAssemply.jsp?id='+id+'">点击查看</a></th>'+
	                 '<td  class="center" style="cursor:pointer" onclick="Create();">创建费用清单</td>'+
	             '</tr>'
	    		)
	    	}
	    	
	    	if( tag == 0 ){
	    		showPage();
	    		tag = 1;
	    	}
    })
}

//show page
function showPage(){
	
	layui.config({
		base: 'Admin/Template/js/plugins/layui/modules/'
	});

	layui.use(['icheck', 'laypage','layer'], function() {
		var $ = layui.jquery,
			laypage = layui.laypage,
			layer = parent.layer === undefined ? layui.layer : parent.layer;
		/*$('input').iCheck({
			checkboxClass: 'icheckbox_flat-green'
		});*/

		//page
		laypage({
			cont: 'page',
			pages: pageAll,     //总页数
			groups: 5,		//连续显示分页数
				
			jump: function(obj, first) {
				//得到了当前页，用于向服务端请求对应数据
				var curr = obj.curr;
				pageNow = curr;
				if(!first) {
					getCalcModles(curr);
				}
			}
		});
	});
}

function Create(){
	window.location.href="Admin/Model/form_test.jsp";
}