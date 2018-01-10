$(document).ready(function(){
	getNeverModified(1);
})
	
var pageAll = 0;
var tag = 0;       //show page tag
var isTag = 0;     //0:never;1:continue

//get never modified models
function getNeverModified(page){
	
	$.get("F/Model/neverModifiModels.final",{
		"page":page
    },function(data){
    	
//	    	$("#comm_number").html(
//	    			'<h4 class="comment-title">'+data.number+' 条评论</h4>'
//	    	)
    		base(data)
	    
    })
}

function base(data){
	
	$("#modelList_id").empty();
	
	var json =data.data;
	pageAll = Math.ceil(Number(data.number)/10);

	for(var i=0;i<json.length;i++){
		$("#modelList_id").append(
				
			'<tr class="gradeX" >'+
				'<th><input type="checkbox"></th>'+
                '<td>'+json[i].floorNumber+'层</td>'+
                '<td>'+json[i].buildingArea+'平方米</td>'+
                '<td>'+json[i].landArea+'平方米</td>'+
                '<th>'+json[i].createTime+'</th>'+
                '<td>'+json[i].suggestion+'</td>'+
                '<th style="cursor:pointer">点击下载</th>'+
             '<td class="center">上传</td>'+
         '</tr>'
		)
	}
	
	if( tag == 0 ){
		showPage();
		tag = 1;
	}
}

//show continue models
function getContinueModified(page){
	
	$.get("F/Model/continueModifiModels.final",{
		"page":page
    },function(data){
    	
//	    	$("#comm_number").html(
//	    			'<h4 class="comment-title">'+data.number+' 条评论</h4>'
//	    	)
    		base(data)
	    
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
					if( isTag == 0){
						getNeverModified(curr);
					}else{
						getContinueModified(curr);
					}
				}
			}
		});
	});
}

//改变select框
function changeModels(){
	
	pageAll = 0;
	tag = 0;
	var value = $("#model_select").val();
	if( value == 1){            //never modified
		isTag = 0;
		getNeverModified(1);
	}else{                      //continue
		isTag = 1;
		getContinueModified(1)
	}
}