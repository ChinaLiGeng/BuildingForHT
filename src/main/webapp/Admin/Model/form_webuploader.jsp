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


    <title>H+ 后台主题UI框架 - 百度Web Uploader</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="favicon.ico"> <link href="Admin/Template/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="Admin/Template/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="Admin/Template/css/animate.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="Admin/Template/css/plugins/webuploader/webuploader.css">
    <link rel="stylesheet" type="text/css" href="Admin/Template/css/demo/webuploader-demo.min.css">
    <link href="Admin/Template/css/style.min862f.css?v=4.1.0" rel="stylesheet"> 
	 <link href="Admin/Model/modelCreate.css" rel="stylesheet"> 
</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeIn">
        <div class="row">
			<div class="col-sm-12">
				<div class="ibox float-e-margins">
                    <div class="ibox-title">
						<div class="col-sm-12">
							<h5>模型数据录入</h5>
							<div class="ibox-tools">
								<a class="collapse-link">
									<i class="fa fa-chevron-up"></i>
								</a>                           
								<a class="close-link">
									<i class="fa fa-times"></i>
								</a>
							</div>
						</div>
						<div class="col-sm-12">
							 <div class="pointsRule">  
								<ul>  
									<li><a onclick="boxDisplay(0);"><span>模型创建</span><i></i></a></li>  
									<li><a onclick="boxDisplay(1);"><span>模型立面图</span><i></i></a></li> 
									<li><a onclick="boxDisplay(2);"><span>模型轴测图</span><i></i></a></li> 
									<li><a onclick="boxDisplay(3);"><span>模型户型图</span><i></i></a></li>  
									<li><a onclick="boxDisplay(4);"><span>模型构建表</span><i></i></a></li>  
								 </ul>  
							</div> 
						</div>
                    </div>
                  </div>
                </div>
              </div>
                    
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>模型创建</h5>
                    </div>
                    
                 <div class="ibox-body">
                   
                   <div class="ibox-content">
						<div class="row">
							<div class="col-sm-4"></div>
							
							<div class="col-sm-4">
								<div class="row form-body form-horizontal m-t">
																		
									<!--创建模型表单开始-->
										<form>
											<div class="form-group">
												<label class="col-sm-3 control-label">模型编号：</label>
												<div class="col-sm-9">
													<input type="text" name="" class="form-control" placeholder="请输入文本" id="modelNumber">

												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-3 control-label">用户类型：</label>
												<div class="col-sm-9">
													<select class="form-control" id="userType" onchange="change();" value="">
														<option value="1" selected>用&nbsp;&nbsp;&nbsp;户</option>
														<option value="2">设计师</option>
														<option value="3">管理员</option>
													</select>
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-3 control-label">层数：</label>
												<div class="col-sm-9">
													<input type="text" name="" class="form-control" placeholder="请输入文本" id="floor">

												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-3 control-label">建筑面积：</label>
												<div class="col-sm-9">
													<input type="text" name="" class="form-control" placeholder="请输入文本" id="buildingArea">

												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-3 control-label">用地面积：</label>
												<div class="col-sm-9">
													<input type="text" name="" class="form-control" placeholder="请输入文本" id="landArea"> 

												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-3 control-label">设计费：</label>
												<div class="col-sm-9">
													<input type="text" name="" class="form-control" placeholder="请输入文本" id="designFee"> 

												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-3 control-label">封面图片：</label>
												<div class="col-sm-9">
													<input type="file" name="" class="form-control" id="mainPic">
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-3 control-label">rvt文件：</label>
												<div class="col-sm-9">
													<input type="file" name="" class="form-control">
												</div>
											</div>
											<input type="button" onclick="createModel();" class="btn btn-w-m btn-primary" value="创建模型" style="margin-left:45%;"/>
										</form>
									<!--创建模型表单结束-->
										
									<!--模型轴测图上传开始-->
										
									<!--模型图上传结束-->
									
									
									<!--模型户型图上传开始--》
									
									<!--模型户型图上传结束-->
									
									<!--模型构件表-->
									<!--模型构件表结束-->
							
								
								<div class="col-sm-4"></div>
								</div>
								</div>
							</div>
						</div>
                   
                    <div class="ibox-content">
                        <div class="page-container">
                            <p>请在此处添加图片</p>
                            <form enctype="multipart/form-data" method="post" name="fileInfo" id="Isoma">
								<input type="file" name="file" multiple>
								<br/>
                            	<input type="button" onclick="uploadIsoma()" class="btn btn-w-m btn-primary" value="立面图上传" style="margin-left:45%;"/>
                            </form>
                        </div>
                    </div>
                </div>
               
               		
                </div>
        </div>
    </div>
   </div>
    <script src="Admin/Model/modelEdit.js"></script>
    <script src="Admin/Template/js/jquery.min.js?v=2.1.4"></script>
    <script src="Admin/Template/js/bootstrap.min.js?v=3.3.6"></script>
    <script src="Admin/Template/js/content.min.js?v=1.0.0"></script>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>
<script type="text/javascript">
    var index;
	function boxDisplay(index){
		$(".ibox-content").eq(index).show().siblings().hide();
	}
	$(document).ready(function(){
		boxDisplay(0);
	})
</script>

<!-- Mirrored from www.zi-han.net/theme/hplus/form_webuploader.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:19:33 GMT -->
</html>
