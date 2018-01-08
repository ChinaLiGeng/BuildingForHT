/**
 * 
 */

/*$(document).ready(function(){
	var beType=1;
	$(".dataTables-example").dataTable({
// 		"bProcessing":true,
		"bServerSide":true,
		"bStateSave": true,
		"bLengthChange":true,
		"sPaginationType":"full_numbers",
// 		"sAjaxSource":"./ModelAdmin/modelList",
		"iDisplayLength" : 5,
	    "iDisplayStart" : 1,
// 	    "columnDefs": [{"orderable":false,"aTargets":[0,6]},   //制定列不参与排序
// 	                      {
// 	                          "render": function ( data, type, row ) {
// 	                              return "<input type='checkbox' name='onDutyToId'  value='1'>";
// 	                          },
// 	                          "targets": 0 //指定渲染列：第一列(渲染第一列为单选框，data自动匹配为  {"data":"id"}中数据）
// 	                      }
// 	                  ],
	    "ajax": {  //ajax方式向后台发送请求
	    	 url:"./ModelAdmin/modelList", 
 			 type:"post", 
     	   	 data:{beType:beType}, 
     	   	 async:false,
             dataType:"json", 
             success:function(data){
            	 alert(JSON.stringify(data));
            	 getModelList_User(data);
             }
        },
        "columns" : [//对接收到的json格式数据进行处理，data为json中对应的key
                     { "modelId":"modelId",
        	           "bSortable": false,
                       "render": function ( data, type, full, meta ) {  
                            return '<input type="checkbox" value="'+modelId+'" name="">';  
                   	     }
                     },
         			{"modelNumber":"modelNumber"},
         			{"rvtPath":"rvtPath"},
         			{"userId":"userId"},
         			{"designState":"designState"},
         			{"state":"state"},
         			{"data":null, "render": function (data, type,row) {
                        var html="<h2>123</h2>"
         				return html;
         	          }
         	        }
                 ]
	});
});
*/
 var beType=1;   
 var i; //循环变量
 var data,page;

	/*用户角色切换调用函数*/
/*	function userList(){
		 getModelList(1,1,10);
		 showPage(1);
		 document.getElementById("userType").innerHTML = "用户模型列表";
	}
	 
	function designerList(){
		getModelList(2,1,10);
		showPage(2);
		document.getElementById("userType").innerHTML = "设计师模型列表";
	} 
	
	function adminList(){
		getModelList(3,1,10);
		showPage(3);
		document.getElementById("userType").innerHTML = "管理员模型列表";
	}*/
	/*用户角色切换调用函数*/

	/**
	 * 管理员模型列表
	 */
    var stateInfo;
	function getAdmModList(page){
 		$.ajax({ 
             url:"./ModelAdmin/admModList", 
 			 type:"post", 
 			 async:false,
     	   	 data:{page:page}, 
             dataType:"json", 
             success:function(data){ 
            	 if( !data.meta.success ){
         			alert(data.meta.message);
         			return;
         		 }
         		$("#modelList").empty();
         		
         		for( i=0; i<data.data.length; i++){
         			
         				$("#modelList").append( '<tr class="gradeA">'
                     	+'<td><input type="checkbox" class="i-checks" name="input[]" id="'+data.data[i].modId+'"></td>'
                			 +'<td>'+data.data[i].modNumber+'</td>'
                 		 +'<td>'+data.data[i].createTime+'</a></td>'
                 		 +'<td>'+data.data[i].quoteCount+'</td>'
                 		 +'<td><i class="fa fa-check text-navy"></i>'
                 		 +'<i class="fa fa-upload"></i>'
                 		 +'<a href="Admin/Model/modelDetail.jsp?modelId='+data.data[i].modelId+'"><i class="fa fa-paste"></i></a>'
             			 +'</td></tr>');
         		}
            } 
		});
 	 } 
	
	/*
	 * 
	 * 用户模型列表
	 */
	var stateInfo;
	function getUserModList(page){
		$.ajax({ 
            url:"./ModelAdmin/usrModList", 
			 type:"post", 
			 async:false,
    	   	 data:{page:page}, 
            dataType:"json", 
            success:function(data){ 
           	 if( !data.meta.success ){
        			alert(data.meta.message);
        			return;
        	 }
        		$("#modelList").empty();
        		
        		for( i=0; i<data.data.length; i++){
        			
        				$("#modelList").append( '<tr class="gradeA">'
                    	+'<td><input type="checkbox" class="i-checks" name="input[]" id="'+data.data[i].modId+'"></td>'
               			 +'<td>'+data.data[i].modNumber+'</td>'
                		 +'<td>'+data.data[i].createTime+'</a></td>'
                		 +'<td>'+data.data[i].quoteCount+'</td>'
                		 +'<td><i class="fa fa-check text-navy"></i>'
                		 +'<i class="fa fa-upload"></i>'
                		 +'<a href="Admin/Model/modelDetail.jsp?modelId='+data.data[i].modelId+'"><i class="fa fa-paste"></i></a>'
            			 +'</td></tr>');
        		}
           } 
		});
	}
	/**
	 * 设计师模型列表
	 */
	
	function getDesModList(page,state){
		$.ajax({ 
             url:"./ModelAdmin/desModList", 
 			 type:"post", 
 			 async:false,
     	   	 data:{page:page,state:state}, 
             dataType:"json", 
             success:function(data){ 
            	 if( !data.meta.success ){
         			alert(data.meta.message);
         			return;
         		 }
         		$("#modelList").empty();
         		
         		for( i=0; i<data.data.length; i++){
         		
         			if(data.data[i].state==1) stateInfo="审核通过";
         			else if(data.data[i].state==2) stateInfo="审核不通过"
         			else if(data.data[i].state==3) stateInfo="待审核";
         			
         			$("#modelList").append( '<tr class="gradeA">'
                     	+'<td><input type="checkbox" class="i-checks" name="input[]" id="'+data.data[i].modId+'"></td>'
                	     +'<td>'+data.data[i].modNumber+'</td>'
                	     +'<td>'+data.data[i].ownerName+'</td>'
                 		 +'<td>'+data.data[i].createTime+'</a></td>'
                 		 +'<td>'+data.data[i].quoteCount+'</td>'
                 		 +'<td>'+stateInfo+'</td>'
                 		 +'<td><i class="fa fa-check text-navy"></i>'
                 		 +'<i class="fa fa-upload"></i>'
                 		 +'<a href="Admin/Model/modelDetail.jsp?modelId='+data.data[i].modId+'"><i class="fa fa-paste"></i></a>'
             			 +'</td></tr>');
         		}
            } 
		});
 	 } 

 	 function getModelList(beType,page,length){
 		$.ajax({ 
             url:"./ModelAdmin/modelList", 
 			 type:"post", 
     	   	 data:{beType:beType,start:page,length:length}, 
             dataType:"json", 
             success:function(data){ 
            	 if( !data.meta.success ){
         			alert(data.meta.message);
         			return;
         		 }
         		$("#modelList").empty();
         		
         		for( i=0; i<data.data.length; i++){
         			$("#modelList").append( '<tr class="gradeA">'
                     	+'<td><input type="checkbox" class="i-checks" name="input[]" id="'+data.data[i].modelId+'"></td>'
                			 +'<td>'+data.data[i].modelNumber+'</td>'
                 		 +'<td>'+data.data[i].createTime+'</a></td>'
                 		 +'<td>'+data.data[i].quoteCount+'</td>'
                 		 +'<td>'+data.data[i].state+'</td>'
                 		 +'<td><i class="fa fa-check text-navy"></i>'
                 		 +'<i class="fa fa-upload"></i>'
                 		 +'<a href="Admin/Model/modelDetail.jsp?modelId='+data.data[i].modelId+'"><i class="fa fa-paste"></i></a>'
             			 +'</td></tr>');
         		}
            } 
		});
 	 } 
 	 
 	 
 	function showPage(beType){
 		$.ajaxSetup({                //设置同步
 		    async : false  
 		}); 
 		var pageAll = 0;
 		
 		$.post("./ModelAdmin/modelNum", {
 			beType:beType,		
 		}, function(json) {
			//document.getElementById("all_data").innerHTML = json;      //总数据
 			pageAll = Math.ceil(json.data/length);         //页数
 		});
 		
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
 						getModelList(beType,curr,length);
 					}
 				}
 			});
 			
 		});
 	}
 	
