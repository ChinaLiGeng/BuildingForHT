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


    <title>H+ 后台主题UI框架 - 空白页</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="favicon.ico"> <link href="Admin/Template/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="Admin/Template/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="Admin/Template/css/plugins/webuploader/webuploader.css">
    <link href="Admin/Template/css/animate.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="Admin/Template/css/demo/webuploader-demo.min.css">
    <link href="Admin/Template/css/style.min862f.css?v=4.1.0" rel="stylesheet">
	<style type="text/css">  
.pointsRule{  
    display: inline-block;  
    font-size: 12px;  
    margin-top: 20px;  
    float: left;  
    margin-left: 50px;  
}  
  
.pointsRule span{  
    float: left;  
    display: inline-block;  
}  
  
.pointsRule ul{  
    list-style: none;  
    margin: 0;  
    padding: 0;  
    display: inline-block;  
    float: left;  
    width: 100%;  
}  
  
.pointsRule ul li{  
    display: list-item;  
    text-align: center;  
    float: left;  
    margin: 10px 0 0;  
    background: #fff;  
    border-top: 1px solid #0F0F0F;  
    border-bottom: 1px solid #0F0F0F;  
    height: 45px;  
}  
  
.pointsRule ul li:first-child{  
    border-left: 1px solid #0F0F0F;  
}  
  
.pointsRule ul li:last-child{  
}  
  
.pointsRule ul li a{  
    display: block;  
    padding: 8px 0;  
    cursor: pointer;  
}  
.pointsRule ul li span{  
    vertical-align: middle;  
    width: 150px;  
    height: 18px;  
    line-height: 25px;  
    display: inline-block;  
    overflow: hidden;  
    text-align: center;  
    margin-left: 20px;  
}  
.pointsRule ul li  i {  
    float: right;  
    border: #130303 solid;  
    border-width: 1px 1px 0 0;  
    width: 32px;  
    height: 32px;  
    margin: -2px -17px 0px 10px;  
    top: 2px;  
    transform: rotate(45deg);  
    -webkit-transform: rotate(45deg);  
    background-image: url("");  
}  
   </style>  
</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content">
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
                  
				<div class="ibox-body">
					<div class="ibox-content">
						<div class="row">
							<div class="col-sm-4"></div>
							
							<div class="col-sm-4">
								<div class="row form-body form-horizontal m-t">
																		
									<!--创建模型表单开始-->
										<form enctype="multipart/form-data">
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
												<label class="col-sm-3 control-label">收费标准：</label>
												<div class="col-sm-9">
													<input type="text" name="" class="form-control" placeholder="请输入文本" id="chargeLevel"> 
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
													<input type="file" id="mainPic" class="form-control" >
												</div>
											</div>
											<div class="form-group">
												<label class="col-sm-3 control-label">rvt文件：</label>
												<div class="col-sm-9">
													<input type="file" id="rvtPath" class="form-control">                                                                                                                                                                                        
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
				
						<!-- 模型立面图上传 -->
					  <div class="ibox-content">
                        <div class="page-container">
                            <p>您可以尝试文件拖拽，使用QQ截屏工具，然后激活窗口后粘贴，或者点击添加图片按钮，来体验此demo.</p>
                            <div id="uploader" class="wu-example">
                                <div class="queueList">
                                    <div id="dndArea" class="placeholder">
                                        <div id="filePicker"></div>
                                        <p>或将照片拖到这里，单次最多可选300张</p>
                                    </div>
                                </div>
                                <div class="statusBar" style="display:none;">
                                    <div class="progress">
                                        <span class="text">0%</span>
                                        <span class="percentage"></span>
                                    </div>
                                    <div class="info"></div>
                                    <div class="btns">
                                        <div id="filePicker2"></div>
                                        <div class="uploadBtn">开始上传</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
				 	
				 	<!-- 模型轴测图上传 -->
				 	<div class="ibox-content">
                        <div class="page-container">
                            <p>请上传轴测图</p>
                           <form id="uploadIsomeForm" enctype="multipart/form-data">
							    <input id="file" type="file" name="file" multiple/>
							    <input type="button" onclick="uploadIsome();" value="上传图片">
							</form>
                        </div>
                    </div> 
					 
					 <!--  <div class="ibox-content">
                        <div class="page-container">
                            <p>户型图</p>
                            <div id="uploader" class="wu-example">
                                <div class="queueList">
                                    <div id="dndArea" class="placeholder">
                                        <div id="filePicker"></div>
                                        <p>或将照片拖到这里，单次最多可选300张</p>
                                    </div>
                                </div>
                                <div class="statusBar" style="display:none;">
                                    <div class="progress">
                                    
                                        <span class="text">0%</span>
                                        <span class="percentage"></span>
                                    </div>
                                    <div class="info"></div>
                                    <div class="btns">
                                        <div id="filePicker2"></div>
                                        <div class="uploadBtn">开始上传</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> -->
					
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<script src="Admin/Model/js/modCreate.js"></script>
    <script src="Admin/Template/js/jquery.min.js?v=2.1.4"></script>
    <script src="Admin/Template/js/bootstrap.min.js?v=3.3.6"></script>
    <script src="Admin/Template/js/content.min.js?v=1.0.0"></script>
    
    <script type="text/javascript">
        var BASE_URL = 'Admin/Template/js/plugins/webuploader/index.html';
    </script>
	<script src="Admin/Template/js/plugins/webuploader/webuploader.min.js"></script>
    <script src="Admin/Template/js/demo/webuploader-demo.min.js"></script>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>
<script type="text/javascript">
    var index;
	function boxDisplay(index){
		$(".ibox-content").eq(index).show().siblings().hide();
		if(index==1){
			var obj = document.getElementsByClassName("webuploader-pick");
			$('#filePicker div:eq(1)').attr('style','position: absolute; top: 0px; left: '+ $(obj).position().left+'px; width: '+$(obj).outerWidth()+'px; height: '+$(obj).height()+'px; overflow: hidden; bottom: auto; right: auto;');
		}
	}
	$(document).ready(function(){
		boxDisplay(0);
	}) 
</script>
<!-- Mirrored from www.zi-han.net/theme/hplus/empty_page.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:19:52 GMT -->
</html>
