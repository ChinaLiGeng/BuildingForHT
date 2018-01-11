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


    <title>创建费用清单</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="favicon.ico"> <link href="Admin/Template/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="Admin/Template/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
	 <link href="Admin/Template/css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">
    <link href="Admin/Template/css/animate.min.css" rel="stylesheet">
    <link rel="stylesheet" href="Admin/Template/js/plugins/layui/css/layui.css" media="all" />
     <link href="Admin/Template/css/style.min862f.css?v=4.1.0" rel="stylesheet">
     
</head>

<body class="gray-bg">
   
    <div class="wrapper wrapper-content">
        
        <div class="row">
           <div class="col-sm-7" style="position:relative;left: 23%;">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>创建费用清单</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="form_basic.html#">
                                <i class="fa fa-wrench"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user">
                                <li><a href="form_basic.html#">选项1</a>
                                </li>
                                <li><a href="form_basic.html#">选项2</a>
                                </li>
                            </ul>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <div id="add" class="row" style="position:relative;">
                            <div class="col-sm-6 b-r" style="width:40%">
                                
                                
                                    <div class="form-group">
                                        <label>请输入创建内容</label>
                                        <input id="modifyInfo1" type="text" placeholder="" class="form-control">
                                    </div>        	
                            </div>
                             
                             <div class="col-sm-6 b-r" style="width:40%">                               
                                    <div class="form-group">
                                        <label>单价</label>
                                        <input id="unit_price1" type="text" placeholder="" class="form-control">
                                    </div>           
                            </div>
                             
                            <div class="col-sm-6 b-r" style="width:15%;position:absolute;top:20%;left:82%;right:3%;">
                                <div class="text-center">
                                 <img onclick="add_fee_list()" style="width:30px;height:30px" src="Admin/Template/img/add.jpg">
                                </div>
                            </div>
                        </div>
                        
                          <div class="row" id="hiddened" style="display:none; position:relative;">
                            <div class="col-sm-6 b-r" style="width:40%">
                                
                                
                                    <div class="form-group">
                                        <label>请输入创建内容</label>
                                        <input id="modifyInfo1" type="text" placeholder="" class="form-control">
                                    </div>        	
                            </div>
                             
                             <div class="col-sm-6 b-r" style="width:40%">                               
                                    <div class="form-group">
                                        <label>单价</label>
                                        <input id="unit_price1" type="text" placeholder="" class="form-control">
                                    </div>           
                            </div>
                             
                            <div class="col-sm-6 b-r" style="width:15%;position:absolute;top:20%;left:82%;right:3%;">
                             
                            </div>
                        </div>
                        
                         <div class="row" id="hiddened" style=" position:relative;">
                            <div class="col-sm-6 b-r" style="float:right; width:20%;height:40px;">
                                    <div class="form-group" style="">
                                        <input  type="button" value="提交" placeholder="" class="form-control">
                                    </div>        	
                            </div>
   
                        </div>
                    </div>
                    </div>
                    
                </div>
            </div>
            
           
            
        </div>
    </div>
    
    <script type="text/javascript">
    

    function add_fee_list(){
    	
    		$("#add").after('<div class="row" id="hiddened" style=" position:relative;">'
    			+'<div class="col-sm-6 b-r" style="width:40%">'
    			+'<div class="form-group">'
    			+'<label>请输入创建内容</label>'
    			+'<input id="modifyInfo1" type="text" placeholder=""class="form-control">'
    			+'</div>'
    			+'</div>'
    			+'<div class="col-sm-6 b-r" style="width:40%">'
    			+'<div class="form-group">'
    			+'<label>单价</label>'
    			+'<input id="unit_price1" type="text" placeholder="" class="form-control">'
    			+'</div>'
    			+'</div>'
    			+'<div class="col-sm-6 b-r" style="width:15%;position:absolute;top:20%;left:82%;right:3%;"></div>'
    			+'</div>');
    	}
    
    
    </script>
      
    <script type="text/javascript">
      
        function img_skip(){
        	window.location.href="Admin/Model/calcu_model.jsp";
        	
        	
        	
        }
        
        function create_fee_list(){
        	var json={
        		"modifyInfo":$("#modifyInfo").val(),
        		"price":$("#price").val(),
        		"floorNumber":$("#floorNumber").val(),
        		"buildingArea":$("#buildingArea").val(),
        		"landArea":$("#landArea").val(),
        	};
        	
        	$.ajax({
        		type:"post",
        		url:"./F/Model/create_fee_list",
        		data:JSON.stringify(json),
        		contentType:"application/json",
        		dataType:"json",
        		success:function(data){
        			if(data){
        				alert("创建成功");
        				
        			}else{
        				alert("创建失败，请重新创建");
        			}
        		}
        	});
        }
   
    </script>
    
    <script src="Admin/Template/js/jquery.min.js?v=2.1.4"></script>
    <script src="Admin/Template/js/bootstrap.min.js?v=3.3.6"></script>
    <script src="Admin/Template/js/content.min.js?v=1.0.0"></script>
    <script src="Admin/Template/js/plugins/layer/layer.js"></script>
    <script src="Admin/Template/js/plugins/layui/layui.js"></script>
     <script src="Admin/Model/js/ModelList.js"></script>
   <!-- <script src="Admin/Template/js/plugins/dataTables/jquery.dataTables.js"></script> 
    <script src="Admin/Template/js/plugins/dataTables/dataTables.bootstrap.js"></script> -->
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
   
</body>

<!-- Mirrored from www.zi-han.net/theme/hplus/empty_page.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:19:52 GMT -->
</html>