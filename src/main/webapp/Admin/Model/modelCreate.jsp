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
    <link href="Admin/Template/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="Admin/Template/css/plugins/steps/jquery.steps.css" rel="stylesheet">
    <link href="Admin/Template/css/animate.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="Admin/Template/css/plugins/webuploader/webuploader.css">
   <!--  <link rel="stylesheet" type="text/css" href="Admin/Template/css/demo/webuploader-demo.min.css"> -->
    <link href="Admin/Template/css/style.min862f.css?v=4.1.0" rel="stylesheet">  
</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
        
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox">
                    <div class="ibox-title">
                        <h5>创建模型</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="form_wizard.html#">
                                <i class="fa fa-wrench"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user">
                                <li><a href="form_wizard.html#">选项1</a>
                                </li>
                                <li><a href="form_wizard.html#">选项2</a>
                                </li>
                            </ul>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <h2>
                              模型导入
                            </h2>
                        

                        <form id="form" action="http://www.zi-han.net/theme/hplus/form_wizard.html#" class="wizard-big">
                            <h1>基本信息</h1>
                            <fieldset>
                                <h2>模型基本信息</h2>
                                <div class="row">
									<div class="col-sm-6">
										<div class="form-group" style="margin-top: 10px">
											<label class="col-sm-2 control-label">设计师:</label>
											<div class="col-sm-10">
												<select class="form-control required" name="account">
													<option>选项 1</option>
													<option>选项 2</option>
													<option>选项 3</option>
													<option>选项 4</option>
												</select>
											</div>
										</div>
                                        
                                        <div class="form-group" style="margin-top: 10px">
											<label class="col-sm-2 control-label">楼层:</label>
											<div class="col-sm-10">
												<select class="form-control required" name="account">
													<option>2层</option>
													<option>3层</option>
													<option>4层</option>
													<option>5层</option>
												</select>
											</div>
										</div>
										
										<div class="form-group" style="margin-bottom:50px">
											<label class="col-sm-2 control-label">占地面积：</label>
											<div class="col-sm-10">
												<input id="cname" name="name" minlength="2" type="text"
													class="form-control" required="" aria-required="true">
											</div>
										</div>
										<div class="form-group" style="margin-bottom:50px">
											<label class="col-sm-2 control-label">建筑面积：</label>
											<div class="col-sm-10">
												<input id="cname" name="name" minlength="2" type="text"
													class="form-control" required="" aria-required="true">
											</div>
										</div>
										<div class="form-group" style="margin-bottom:50px">
											<label class="col-sm-2 control-label">设计费：</label>
											<div class="col-sm-10">
												<input id="cname" name="name" minlength="2" type="text"
													class="form-control" required="" aria-required="true">
											</div>
										</div>
										<div class="form-group" style="margin-bottom:50px">
											<label class="col-sm-2 control-label">名称：</label>
											<div class="col-sm-10">
												<input id="cname" name="name" minlength="2" type="text"
													class="form-control" required="" aria-required="true">
											</div>
										</div>
										<div class="form-group" style="margin-top:50px">
											<label class="col-sm-2 control-label">说明：</label>
											<div class="col-sm-10">
												<textarea id="ccomment" name="comment" class="form-control"
													required="" aria-required="true"></textarea>
											</div>
										</div>

										<div>
											<input type="file" class="form-control"
												style="display: none;">
											<div class="input-append input-group""="">
												<span class="input-group-btn">
													<button class="btn btn-white" type="button">选择文件</button>
												</span> <input class="input-large form-control" type="text">
											</div>
										</div>

										<div class="form-group" style="margin-top: 50px">
											<div class="col-sm-2 col-sm-offset-2">
												<button class="btn btn-primary" type="submit">提交</button>
											</div>
										</div>

									</div>
									<div class="col-sm-4">
                                        <div class="text-center">
                                            <div style="margin-top: 20px">
                                                <i class="fa fa-sign-in" style="font-size: 180px;color: #e5e5e5 "></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </fieldset>
                            <h1>上传图片</h1>
                            <fieldset>
                                <h2>上传封面图片</h2>
								<div class="row">
									<!-- 上传封面 -->
									<div class="col-sm-12">
										<div class="ibox float-e-margins">
											<div class="ibox-title">
												<h5>百度Web Uploader</h5>
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
																			class="webuploader-element-invisible"
																			multiple="multiple" accept="image/*"><label
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
																			class="webuploader-element-invisible"
																			multiple="multiple" accept="image/*"><label
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
									<!--上传封面  -->
								</div>
							</fieldset>

                            <h1>警告</h1>
                            <fieldset>
                                <div class="text-center" style="margin-top: 120px">
                                  

                                </div>
                            </fieldset>

                            <h1>完成</h1>
                            <fieldset>
                                <h2>条款</h2>
                                <input id="acceptTerms" name="acceptTerms" type="checkbox" class="required">
                                <label for="acceptTerms">我同意注册条款</label>
                            </fieldset>
                        </form>
                    </div>
                </div>
            </div>

        </div>
	
	<script src="Admin/Model/js/modCreate.js"></script>
    <script src="Admin/Template/js/jquery.min.js?v=2.1.4"></script>
    <script src="Admin/Template/js/bootstrap.min.js?v=3.3.6"></script>
    <script src="Admin/Template/js/content.min.js?v=1.0.0"></script>
    <script src="Admin/Template/js/plugins/staps/jquery.steps.min.js"></script>
    <script src="Admin/Template/js/plugins/validate/jquery.validate.min.js"></script>
    <script src="Admin/Template/js/plugins/validate/messages_zh.min.js"></script>
    <script>
        $(document).ready(function(){$("#wizard").steps();$("#form").steps({bodyTag:"fieldset",onStepChanging:function(event,currentIndex,newIndex){
        	if(currentIndex>newIndex){return true}
        	if(newIndex===3&&Number($("#age").val())<18){ return false}
        	var form=$(this);
        	if(currentIndex<newIndex){
        		$(".body:eq("+newIndex+") label.error",form).remove();
        		$(".body:eq("+newIndex+") .error",form).removeClass("error")}form.validate().settings.ignore=":disabled,:hidden";
        		return form.valid()},onStepChanged:function(event,currentIndex,priorIndex){
        			if(currentIndex===2&&Number($("#age").val())>=18){
        				$(this).steps("next")}
        			if(currentIndex===2&&priorIndex===3){$(this).steps("previous")}},onFinishing:function(event,currentIndex){var form=$(this);form.validate().settings.ignore=":disabled";return form.valid()},onFinished:function(event,currentIndex){var form=$(this);form.submit()}}).validate({errorPlacement:function(error,element){element.before(error)},rules:{confirm:{equalTo:"#password"}}})});
    </script>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
    
    <script type="text/javascript">
    	$(document).ready(function(){
    		var obj = document.getElementsByClassName("webuploader-pick");
			$('#filePicker div:eq(1)').attr('style','position: absolute; top: 0px; left: '+ $(obj).position().left+'px; width: '+$(obj).outerWidth()+'px; height: '+$(obj).height()+'px; overflow: hidden; bottom: auto; right: auto;');
    	}) 

        var BASE_URL = 'Admin/Template/js/plugins/webuploader/index.html';
    </script>
    <script src="Admin/Template/js/plugins/webuploader/webuploader.min.js"></script>
    
    
    </div>
</body>
<!-- Mirrored from www.zi-han.net/theme/hplus/empty_page.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:19:52 GMT -->
</html>
