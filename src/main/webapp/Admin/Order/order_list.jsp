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


    <title>订单列表</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="favicon.ico"> <link href="Admin/Template/css/bootstrap.min14ed.css?v=3.3.6" rel="stylesheet">
    <link href="Admin/Template/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
	 <link href="Admin/Template/css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">
    <link href="Admin/Template/css/animate.min.css" rel="stylesheet">
    <link rel="stylesheet" href="Admin/Template/js/plugins/layui/css/layui.css" media="all" />
     <link href="Admin/Template/css/style.min862f.css?v=4.1.0" rel="stylesheet">
    

<style type="text/css">
	td  
	{  
   	 	text-align:center;  
	}  
	
	tr
	{
		text-align:center;  
	}
</style>



</head>

<body class="gray-bg">
   
    <div class="wrapper wrapper-content">
        
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                    <h5>订单列表</h5>
                    </div>
                      
                        <div class="ibox-tools">
                            <a class="collapse-link">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <a class="dropdown-toggle" data-toggle="dropdown" href="table_basic.html#">
                                <i class="fa fa-wrench"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-user">
                                <li><a onclick="userOrder();">构件订单</a></li>
                                <li><a onclick="designerOrder();">施工订单</a></li>
                              
                            </ul>
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                         <table class="table table-striped table-bordered table-hover dataTables-example" >
                             <thead id="thead">
                            	<tr class="text-c">
        							<th style="width:300px;">模型封面图</th>
        							<th>订单价格</th>
        							<th>订单ID</th>
									<th>模型id</th>
									<th>用户手机</th>
									<th>用户名称</th>
									<th>地点</th>
									<th>支付状态</th>
        							<th>创建时间</th>
   								</tr>
							</thead>
                             <tbody id="tbody" >
                               
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
    <script type="text/javascript" src="http://tajs.qq.com/stats?sId=9051096" charset="UTF-8"></script>
    
    <script type="text/javascript">
    var page;             //当前页数
    var pageAll = 0;          //总页数
    $(document).ready(function(){
    	getOrderList(1);
    })
    	function getOrderList(m){
    	    page = m;
    		$.post("./Ad/Order/orderList",{
    			"page":page
    		},function(data){
    			if(data.meta.success == true){
    				$("#tbody").empty();
    				var json = data.data;
    				for(var i=0;i<json.length;i++){
    					var state;
    					if(jaon[i].trackState == 1){
    						state = "订单未分配";
    					}else if(jaon[i].trackState == 2){
    						state = "订单已分配";
    					}
    					else if(jaon[i].trackState == 3){
    						state = "预约安装";
    					}
    					else if(jaon[i].trackState == 4){
    						state = "安装中";
    					}
    					else if(jaon[i].trackState == 5){
    						state = "安装完成";
    					}else{
    						state = "订单取消";
    					}
    					$("#tbody").append(
    						'<tr style="height:100px;">'+
                            	 '<td> <img alt="image" class="img-responsive" src="../../Front/assets/images/'+json[i].mainPic+'></td>'+
                            	 '<td>'+json[i].orderFee+'</td>'+
                            	 '<td>'+json[i].orderId+'</td>'+
                            	 '<td>'+json[i].modelId+'</td>'+
                            	 '<td>'+json[i].userPhone+'</td>'+
                            	 '<td>'+json[i].userName+'</td>'+
                            	 '<td>'+json[i].address+'</td>'+
                            	 '<td>'+state+'</td> '+                           
                            	 '<td>'+json[i].createTime+'</td>'+
                            '</tr>'
    							)
    				}
    			}else{
    				alert(data.meta.message)
    			}
    			
    		})
    	}
    
    
    </script>
    
</body>

    </html>