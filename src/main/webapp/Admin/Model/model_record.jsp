<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%> 
<!DOCTYPE html>
<html>


<!-- Mirrored from www.zi-han.net/theme/hplus/empty_page.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:19:52 GMT -->
<head>
	<base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>提交修改</title>

    <link rel="shortcut icon" href="favicon.ico"> <link href="Admin/Template/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="Admin/Template/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="Admin/Template/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="Admin/Template/css/plugins/steps/jquery.steps.css" rel="stylesheet">
    <link href="Admin/Template/css/animate.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="Admin/Template/css/plugins/webuploader/webuploader.css">
    <link rel="stylesheet" type="text/css" href="Admin/Template/css/demo/webuploader-demo.min.css">
    <link href="Admin/Template/css/style.min862f.css?v=4.1.0" rel="stylesheet">  
    <link href="Admin/Template/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    
</head>
<style>  
    #filePicker div:nth-child(2){width:100%!important;height:100%!important;}  
</style>  
<body class="gray-bg">

	<div class="ibox-content">

		<div class="col-sm-12">
			<ul id="myTab" class="nav nav-tabs">
				<li class="active col-sm-4"><a href="#tab1" data-toggle="tab">基础信息</a></li>
				<li class="col-sm-4"><a href="#tab2" data-toggle="tab">obj,mtl文件上传</a></li>
				<li class="col-sm-4"><a href="#tab3" data-toggle="tab">模型构件录入</a></li>
			</ul>
			<div id="myTabContent" class="tab-content">
				<div class="tab-pane fade in active" id="tab1">

					<div class="col-sm-12">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>基本信息填写</h5>
								<div class="ibox-tools">
									<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
									</a> <a class="dropdown-toggle" data-toggle="dropdown"
										href="form_basic.html#"> <i class="fa fa-wrench"></i>
									</a>
									<ul class="dropdown-menu dropdown-user">
										<li><a href="form_basic.html#">选项1</a></li>
										<li><a href="form_basic.html#">选项2</a></li>
									</ul>
									<a class="close-link"> <i class="fa fa-times"></i>
									</a>
								</div>
							</div>
							<div class="ibox-content">
								<form target="nm_iframe" class="form-horizontal m-t" id="commentForm" novalidate="novalidate" >
								
                                        <div class="form-group" style="margin-top: 10px">
											<label class="col-sm-2 control-label">楼层:</label>
											<div class="col-sm-10">
												<select class="form-control required" id="floorNumber">
													<option value="1">2层</option>
													<option value="2">3层</option>
													<option value="3">4层</option>
													<option value="4">5层</option>
												</select>
											</div>
										</div>
										
										<div class="form-group" style="margin-bottom:50px">
											<label class="col-sm-2 control-label">占地面积：</label>
											<div class="col-sm-10">
												<input  id="landArea" minlength="2" type="text"
													class="form-control" required="" aria-required="true">
											</div>
										</div>
										<div class="form-group" style="margin-bottom:50px">
											<label class="col-sm-2 control-label">建筑面积：</label>
											<div class="col-sm-10">
												<input  id="buildingArea" minlength="2" type="text"
													class="form-control" required="" aria-required="true">
											</div>
										</div>
										
									<div class="form-group" style="margin-top: 50px">
										<label class="col-sm-2 control-label">修改反馈：</label>
										<div class="col-sm-10">
											<textarea  id="modifyInfo" class="form-control"
												required="" aria-required="true"></textarea>
										</div>
									</div>
									
									<div class="form-group">
										<div class="col-sm-4 col-sm-offset-2">
											<input type="button" class="btn btn-primary" onclick="createM()" value="提交"></input>
										</div>
									</div>
								
								</form>
								<iframe id="id_iframe" name="nm_iframe" style="display:none;"></iframe>  
							</div>
						</div>
						
					</div>

				</div>
				
				<div class="tab-pane fade" id="tab2">
					 
					 <form action="./F/Model/MRUpload" method="post" target="id_iframe" enctype="multipart/form-data" name="melform">
                   <input type="text" name="id" id="moID" style="display:none"></input>
                    <input type="file" name="file"></input>
                   
                    <input type="submit" value="提交"/>
                    </form>
                    <form action="./F/Model/MRUpload" method="post" target="id_iframe1" enctype="multipart/form-data" name="objform">
                        <input type="text" name="id" id="moID" style="display:none"></input>
                          <input type="file" name="file"></input>
                         <input type="submit" value="提交"/>
                    </form>
                    <iframe id="id_iframe" name="id_iframe" style="display:none;"></iframe>  
                      <iframe id="id_iframe" name="id_iframe1" style="display:none;"></iframe>  
					 
				</div>
				<div class="tab-pane fade" id="tab3">

					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">梁柱</h3>
						</div>
						<div class="panel-body">

							<div class="col-sm-12">
								<form role="form" id="type1">
									

								</form>
							</div>


						</div>
					</div>
					
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">墙</h3>
						</div>
						<div class="panel-body">

							<div class="col-sm-12">
								<form role="form" id="type2">

								</form>
							</div>


						</div>
					</div>
					
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">门</h3>
						</div>
						<div class="panel-body">

							<div class="col-sm-12">
								<form role="form" id="type3">

								</form>
							</div>


						</div>
					</div>
					
					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">窗</h3>
						</div>
						<div class="panel-body">

							<div class="col-sm-12" >
								<form role="form" id="type4">

								</form>
							</div>


						</div>
					</div>

                    <div class="form-group">
										<div class="col-sm-4 col-sm-offset-2">
											<input type="button" class="btn btn-primary" onclick="add()" value="提交"></input>
										</div>
			    	</div>


				</div>
			</div>

	</div>



	                              
    
	
	<script src="Admin/Template/js/jquery.min.js?v=2.1.4"></script>
    <script src="Admin/Template/js/bootstrap.min.js?v=3.3.6"></script>
    <script src="Admin/Template/js/content.min.js?v=1.0.0"></script>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
    <script src="Admin/Template/js/plugins/validate/jquery.validate.min.js"></script>
    <script src="Admin/Template/js/plugins/validate/messages_zh.min.js"></script>
    <!-- <script src="Admin/Template/js/demo/form-validate-demo.min.js"></script> -->    
    <script src="Admin/Template/js/plugins/prettyfile/bootstrap-prettyfile.js"></script>
    <script type="text/javascript">
        var BASE_URL = 'Admin/Template/js/plugins/webuploader/index.html';
    </script>
    <script src="Admin/Template/js/plugins/webuploader/0.1.5/webuploader.min.js"></script>
   
    
		
		
      <script type="text/javascript">
        var modiId;
        var url=location.search;
        var Request = new Object();
        if(url.indexOf("?")!=-1)
         {
       		var str = url.substr(1);//去掉?号
         strs = str.split("&");
         for(var i=0;i<strs.length;i++)
         {
         Request[strs[i ].split("=")[0]]=unescape(strs[ i].split("=")[1]);
        }
        }

           var id= Request["id"];
           var version = Request["version"];
		   function createM(){
			   var json={
					   "modelId":id,
					   "modifyInfo":$("#modifyInfo").val(),
					   "landArea":$("#landArea").val(),
					   "buildingArea":$("#buildingArea").val(),
					   "version":version,
					   "floorNumber":$("#floorNumber").val(),
			   };
			    $.ajax({ 
			        url:"./F/Model/addMR", 
					type:"post",
					contentType: 'application/json',
					data:JSON.stringify(json),
			        dataType:"json", 
			        success:function(data){ 
			        	var mrId = data.number;
			        	modiId = mrId;
			        	
			        	alert("上传成功")
			        }})
		   };
		   var array = [];
		   $(document).ready(function(data){
			  $.get("./F/Model/ModelAssemblyAll",function(data){
				  if(data.meta.success == true){
					  for(var y=1;y<5;y++){
						  $("#type"+y+"").empty(); 
					  }
				      var json = data.data;
					  for(var i=0;i<json.length;i++){
						  array.push(json[i].assemblyId);
						  var type = "type"+json[i].typeId;
						  $("#"+type+"").append(
								  '<div class="form-group col-sm-3">'+
										'<label for="name">'+json[i].width+'x'+json[i].heigth+'x'+json[i].weight+''+json[i].reinforcingBars+'</label> <input type="text" id="'+json[i].assemblyId+'" class="form-control" placeholder="所需数量">'+
									'</div>'
								  )
					  }
				  }else{
					  alert("数据异常！")
				  }
			   }) 
		   })
		 
		function add(){
			  var arrayJson = {'ModelAssembly':[]};
			  for(var i=0;i<array.length;i++){
				 // alert($("#"+array[i]+"").val())
				  var json = {
					  "assemblyId":array[i],
					  "number":$("#"+array[i]+"").val(),
					  "modiId":modiId
				  }
				  arrayJson.ModelAssembly.push(json);
			  }
			  alert(JSON.stringify(arrayJson.ModelAssembly))
			  
			  $.ajax({ 
			        url:"./F/Model/addMA", 
					type:"post",
					contentType: 'application/json',
					data:JSON.stringify(arrayJson.ModelAssembly),
			        dataType:"json", 
			        success:function(data){ 
			        	var mrId = data.number;
			        	
			        	alert("上传成功")
			        }})
			  
		   }   
</script>
 <script src="Admin/Template/js/demo/webuploader-demo.min.js"></script>


</body>
<!-- Mirrored from www.zi-han.net/theme/hplus/empty_page.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:19:52 GMT -->
</html>
