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
    <title>创建模板</title>

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
				<li class="col-sm-4"><a href="#tab2" data-toggle="tab">效果图上传</a></li>
				<li class="col-sm-4"><a href="#tab3" data-toggle="tab">obj,mtl文件上传</a></li>
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
											<label class="col-sm-2 control-label">设计师:</label>
											<div class="col-sm-10">
												<select class="form-control required" id="userId">
													<option value="1">选项 1</option>
													<option value="2"> 选项 2</option>
													<option value="3">选项 3</option>
													<option value="4">选项 4</option>
												</select>
											</div>
										</div>
                                        
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
										<div class="form-group" style="margin-bottom:50px">
											<label class="col-sm-2 control-label">设计费：</label>
											<div class="col-sm-10">
												<input  id="designFee" minlength="2" type="text"
													class="form-control" required="" aria-required="true">
											</div>
										</div>
										<div class="form-group" style="margin-bottom:50px">
											<label class="col-sm-2 control-label">名称：</label>
											<div class="col-sm-10">
												<input  id="name" minlength="2" type="text"
													class="form-control" required="" aria-required="true">
											</div>
										</div>
									<div class="form-group" style="margin-top: 50px">
										<label class="col-sm-2 control-label">说明：</label>
										<div class="col-sm-10">
											<textarea  id="introduction" class="form-control"
												required="" aria-required="true"></textarea>
										</div>
									</div>
									
									<div class="form-group">
										<div class="col-sm-4 col-sm-offset-2">
											<input type="button" class="btn btn-primary" onclick="createM()">提交</input>
										</div>
									</div>
								
								</form>
								<iframe id="id_iframe" name="nm_iframe" style="display:none;"></iframe>  
							</div>
						</div>
						
					</div>

				</div>
				
				<div class="tab-pane fade" id="tab2">
					<div class="col-sm-12">
						<div class="ibox float-e-margins">
							<div class="ibox-title">
								<h5>上传效果图</h5>
								<div class="ibox-tools">
									<a class="collapse-link"> <i class="fa fa-chevron-up"></i>
									</a> <a class="dropdown-toggle" data-toggle="dropdown"
										href="form_file_upload.html#"> <i class="fa fa-wrench"></i>
									</a>
									<ul class="dropdown-menu dropdown-user">
										<li><a href="form_file_upload.html#">选项1</a></li>
										<li><a href="form_file_upload.html#">选项2</a></li>
									</ul>
									<a class="close-link"> <i class="fa fa-times"></i>
									</a>
								</div>
							</div>
							<div class="ibox-content">
							    
							
								<div class="page-container">
									<p>您可以尝试文件拖拽，使用QQ截屏工具，然后激活窗口后粘贴，或者点击添加图片按钮，来体验此demo.</p>
									<div id="uploader" class="wu-example">
										<div class="queueList">
											<div id="dndArea" class="placeholder">
												<div id="filePicker" class="webuploader-container">
													<div class="webuploader-pick">点击选择图片</div>
													<div id="rt_rt_1c3de4u3beph1k3p1erpj3g1q991"
														style="position: absolute; top: 0px; left: 810px; width: 168px; height: 44px; overflow: hidden; bottom: auto; right: auto;">
														<input type="file" name="file"
															class="webuploader-element-invisible" multiple="multiple"
															accept="image/*"><label
															style="opacity: 0; width: 100%; height: 100%; display: block; cursor: pointer; background: rgb(255, 255, 255);"></label>
													</div>
												</div>
												<p>或将照片拖到这里，单次最多可选300张</p>
											</div>
											<ul class="filelist"></ul>
										</div>
										<div class="statusBar" style="display: none;">
											<div class="progress" style="display: none;">
												<span class="text">0%</span> <span class="percentage"
													style="width: 0%;"></span>
											</div>
											<div class="info">共0张（0B），已上传0张</div>
											<div class="btns">
												<div id="filePicker2" class="webuploader-container">
													<div class="webuploader-pick">继续添加</div>
													<div id="rt_rt_1c3de4u3evg710kk2pa1imppdf6"
														style="position: absolute; top: 0px; left: 0px; width: 1px; height: 1px; overflow: hidden;">
														<input type="file" name="file"
															class="webuploader-element-invisible" multiple="multiple"
															accept="image/*"><label
															style="opacity: 0; width: 100%; height: 100%; display: block; cursor: pointer; background: rgb(255, 255, 255);"></label>
													</div>
												</div>
												<div class="uploadBtn state-pedding">开始上传</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
				<div class="tab-pane fade" id="tab3">
					

                     <div class="ibox-title">
                        <h5>文件上传 <small>https://github.com/episage/bootstrap-3-pretty-file-upload</small></h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="form_advanced.html#">
                                <i class="fa fa-wrench"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user">
                                <li><a href="form_advanced.html#">选项1</a>
                                </li>
                                <li><a href="form_advanced.html#">选项2</a>
                                </li>
                            </ul>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <form action="./F/Model/photoUpload" method="post" target="id_iframe" enctype="multipart/form-data" name="melform">
                    <%-- <div class="ibox-content">
                        <div id="file-pretty">
								<div class="form-group">
                                <label class="font-noraml">obj文件选择</label>
                                <input type="file" multiple="multiple" class="form-control" name="file" value="obj文件">
                               
                         </div>
                           
                                 <input type="submit" class="btn btn-primary" value="提交"></input>
                          
                        </div>
                    </div>
                    </form>
                    <form action="./F/Model/photoUpload" method="post" target="id_iframe1" enctype="multipart/form-data" name="objform">
                    <div class="ibox-content">
                       
                           <div id="file-pretty">
								<div class="form-group">
                                <label class="font-noraml">mtl文件选择</label>
                                <input type="file" multiple="multiple" class="form-control" name="file1" value="mtl文件">
                            </div>
                                 <input type="submit" class="btn btn-primary" value="提交"></input>
                          
                        </div>
                    </div> --%>
                    <input type="file" name="file"></input>
                   
                    <input type="submit" value="提交"/>
                    </form>
                    <form action="./F/Model/photoUpload" method="post" target="id_iframe1" enctype="multipart/form-data" name="objform">
                          <input type="file" name="file"></input>
                         <input type="submit" value="提交"/>
                    </form>
                    <iframe id="id_iframe" name="id_iframe" style="display:none;"></iframe>  
                      <iframe id="id_iframe" name="id_iframe1" style="display:none;"></iframe>  
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
		   var mid;
		   function createM(){
			   var json={
					   "userId":$("#userId").val(),
					   "floorNumber":$("#floorNumber").val(),
					   "landArea":$("#landArea").val(),
					   "buildingArea":$("#buildingArea").val(),
					   "designFee":$("#designFee").val(),
					   "name":$("#name").val(),
					   "introduction":$("#introduction").val(),
			   };
			   alert(JSON.stringify(json))
			    $.ajax({ 
			        url:"./F/Model/createModel", 
					type:"post",
					contentType: 'application/json',
					data:JSON.stringify(json),
			        dataType:"json", 
			        success:function(data){ 
			        	mid=data.number;
			        	$("#Mid").val(mid)
			        	alert(mid);
			        	alert($("#Mid").val());
			        	
			        }})
			    
		   }
		   function ddd(){
			   alert(22222)
		   }
</script>
 <script src="Admin/Template/js/demo/webuploader-demo.min.js"></script>


</body>
<!-- Mirrored from www.zi-han.net/theme/hplus/empty_page.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:19:52 GMT -->
</html>
