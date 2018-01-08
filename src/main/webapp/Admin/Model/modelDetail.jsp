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


    <title>模型详情</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

   <link rel="shortcut icon" href="favicon.ico"> <link href="Admin/Template/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="Admin/Template/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">

    <link href="Admin/Template/css/plugins/iCheck/custom.css" rel="stylesheet">

    <link href="Admin/Template/css/animate.min.css" rel="stylesheet">
    <link href="Admin/Template/css/style.min862f.css?v=4.1.0" rel="stylesheet">

</head>

<body class="gray-bg">
    <div class="row wrapper border-bottom white-bg page-heading">
        <div class="col-sm-4">
            <h2 id="modelNumber"></h2>
        </div>
        <div class="col-sm-8">
            <div class="title-action">
                <a href="empty_page.html" class="btn btn-primary">活动区域</a>
            </div>
        </div>
    </div>
	
	<div class="wrapper wrapper-content animated fadeInRight">
	  <div class="row">
	  <div class="col-sm-2">
                <div class="ibox float-e-margins">
                    <div class="ibox-content">
                        <div class="file-manager">
                            <h5>模型历史版本</h5>
                           
                            <div class="hr-line-dashed"></div>
                            <ul class="folder-list" style="padding: 0" id="his_version">
                                <li><a href="file_manager.html">1</a></li>
                                <li><a href="file_manager.html">2</a></li>
                                <li><a href="file_manager.html">3</a></li>
                                <li><a href="file_manager.html">4</a></li>
                                <li><a href="file_manager.html">5</a></li>
                                <li><a href="file_manager.html">6</a></li>
                            </ul>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>

		<div class="col-sm-10">
             <div class="ibox-content">
                 <div class="row">
                      <div class="col-sm-6 b-r">
                          <h3 class="m-t-none m-b">模型详情(用户)</h3>
                          <form class="form-horizontal">                           
                           <div class="form-group">
                                <label class="col-sm-3 control-label">模型编号:</label>

                                <div class="col-sm-8">
                                    <input placeholder="" class="form-control" id="x1">
                                </div>
                            </div>
                            
                            <div class="form-group">
                                <label class="col-sm-3 control-label">所属种类:</label>

                                <div class="col-sm-8">
                                    <input placeholder="" class="form-control" id="x2">
                                </div>
                            </div>
                             <div class="form-group">
                                <label class="col-sm-3 control-label">创建时间:</label>

                                <div class="col-sm-8">
                                    <input placeholder="" class="form-control" id="x3">
                                </div>
                            </div>
                            
                             <div class="form-group">
                                <label class="col-sm-3 control-label">层数:</label>

                                <div class="col-sm-8">
                                    <input placeholder="" class="form-control" id="x4">
                                </div>
                            </div>
                            
                             <div class="form-group">
                                <label class="col-sm-3 control-label">建筑面积:</label>

                                <div class="col-sm-8">
                                    <input placeholder="" class="form-control" id="x5">
                                </div>
                            </div>
                           
                            <div class="form-group">
                                <label class="col-sm-3 control-label">用地面积:</label>

                                <div class="col-sm-8">
                                    <input placeholder="" class="form-control" id="x6">
                                </div>
                            </div>
                           
                            <div class="form-group">
                                <label class="col-sm-3 control-label">设计状态:</label>

                                <div class="col-sm-8">
                                    <input placeholder="" class="form-control" id="x7">
                                </div>
                            </div>
                           
                            <div class="form-group">
                                <div class="col-sm-offset-3 col-sm-8">
                                    <button class="btn btn-sm btn-white" type="submit">保存</button>
                                </div>
                            </div>
                        </form>
                      </div>
                      <div class="col-sm-6">
<!--                           <h4>模型图</h4> -->
                          <p class="text-center">
                              <a href="Admin/Model/test3.jsp"><img src="Admin/Template/img/a1.jpg" style="width:60%;heihgt:100px;" id="mainPic"/></a>
                          </p>
                      </div>
                  </div>
                </div>
            </div>
       </div>
    </div>
    <script src="Admin/Template/js/jquery.min.js?v=2.1.4"></script>
    <script src="Admin/Template/js/bootstrap.min.js?v=3.3.6"></script>
    <script src="Admin/Template/js/content.min.js?v=1.0.0"></script>
    <script src="Admin/Template/js/plugins/iCheck/icheck.min.js"></script>
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
</body>
<script type="text/javascript">
    var name;
	function getUrlParam(name) {//a标签跳转获取参数
	    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
	    var r = window.location.search.substr(1).match(reg);
	    if (r != null) return (r[2]); return null;
	}
	var modelNumber = getUrlParam("modelNumber");
	var modelId = getUrlParam("modelId");
	
	$(document).ready(function(){
		document.getElementById("modelNumber").innerHTML =  "模型"+modelNumber+"";
		getModVersion(modelNumber);
		getModelDetail(modelId);
	});
</script>

<script type="text/javascript">
	function getModVersion(modelNumber){
		$.ajax({
			url:"./ModelAdmin/modelVersion",
			type:"post",
			data:{modelNumber:modelNumber},
			dataType:"json", 
			success:function(data){
				if( !data.meta.success ) return;
				$("#his_version").empty();
				for (i=0;i<data.data.length; i++){
					$("#his_version").append('<li onclick="getModelDetail('+data.data[i].modelId+')" id='+data.data[i].modelId+'><a>'+modelNumber+'模型第'+data.data[i].version+'版</a></li>');
				}
			}
		});
	}	
</script>

<script type="text/javascript">
	function getModelDetail(modelId){
		$.ajax({
			url:"./ModelAdmin/modelDetail",
			type:"post",
			data:{modelId:modelId},
			dataType:"json", 
			success:function(data){
				if( !data.meta.success ) return;
					
					$("#x1").val(data.data.modelNumber);
					//$("#x2").val(data.data.beType);
					if(data.data.beType == 1){
						$("#x2").val("用户");
					}else if(data.data.beType == 2){
						$("#x2").val("设计师");
					}else if(data.data.beType == 3){
						$("#x2").val("管理员");
					}
					$("#x3").val(data.data.createTime);
					$("#x4").val(data.data.floorNumber);
					$("#x5").val(data.data.buildingArea);
					$("#x6").val(data.data.landArea);
					$("#x7").val(data.data.designState);
					$("#mainPic").attr("src","/Model/"+data.data.mainPic);
			}
		});
	}

</script>
<!-- Mirrored from www.zi-han.net/theme/hplus/empty_page.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:19:52 GMT -->
</html>
