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


    <title>模型列表</title>
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
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5 id="userType">合作设计师模型列表</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="table_basic.html#">
                                <i class="fa fa-wrench"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user">
                                <li><a onclick="userList();">待审核</a></li>
                                <li><a onclick="designerList();">审核通过</a></li>
                                 <li><a onclick="designerList();">审核不通过</a></li>
                            </ul>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
						<div class="col-sm-4">
							<a href="Admin/Model/modelCreate.jsp"><button type="button" class="layui-btn layui-btn-lg" style="margin-bottom:25px;">模型创建</button></a>
						</div>
                         <table class="table table-striped table-bordered table-hover dataTables-example">
                             <thead id="thead">
                            	<tr>
       								<th><input type="checkbox"></th>
        							<th>模型编号</th>
        							<th>创建人名称</th>
        							<th>创建时间</th>
        							<th>引用次数</th>
									<th>状态</th>
									<th>操作</th>
   								</tr>
							</thead>
                             <tbody id="modelList">
                             </tbody>
                         </table>
                         <div class="admin-table-page">
							<div id="page" class="page"></div>
						</div>
					</div>
                    </div>
                </div>
            </div>
        </div>
       
    <script src="Admin/Template/js/jquery.min.js?v=2.1.4"></script>
    <script src="Admin/Template/js/bootstrap.min.js?v=3.3.6"></script>
    <script src="Admin/Template/js/content.min.js?v=1.0.0"></script>
    <script src="Admin/Template/js/plugins/layer/layer.js"></script>
    <script src="Admin/Template/js/plugins/layui/layui.js"></script>
     <script src="Admin/Model/js/modList.js"></script>
<!--    <script src="Admin/Template/js/plugins/dataTables/jquery.dataTables.js"></script>  -->
<!--     <script src="Admin/Template/js/plugins/dataTables/dataTables.bootstrap.js"></script> -->
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
    <script type="text/javascript">
    $(document).ready(function(){
    	getDesModList(1,2);
    	showPage();
    })
    
    function showPage(){
    	$.ajaxSetup({
    		async:false
    	});
    	
    	var pageAll=0;
    	$.post("./ModelAdmin/desModeNum",function(json){
    		pageAll=Math.ceil(json.data/length);
    	});
    	
    	layui.config({
 			base: 'Admin/Template/js/plugins/layui/modules/'
 		});
    	
    	layui.use(['icheck','laypage','layer'],function(){
    		var $=layui.jquery,
    			laypage=layui.laypage,
    			layer=parent.layer===undefined ? layui.layer : parent.layer;
    		
    		laypage({
    			cont:'page',
    			pages:pageAll,
    			groups:5,
    			
    			jump:function(obj,first){
    				var curr=obj.curr;
    				pageNow=curr;
    				if(!first){
    					getDesModList(curr,null);
    				}
    			}
    		});
    	});
    }
    </script>
    
</body>

<!-- Mirrored from www.zi-han.net/theme/hplus/empty_page.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 20 Jan 2016 14:19:52 GMT -->
</html>
