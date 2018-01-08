<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" class="no-js">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
<meta name="viewport" content="width=device-width, initial-scale=1"> 
<title>login</title>
<link rel="stylesheet" type="text/css" href="Admin/Login/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="Admin/Login/css/demo.css" />
<!--必要样式-->
<link rel="stylesheet" type="text/css" href="Admin/Login/css/component.css" />
<!--[if IE]>
<script src="js/html5.js"></script>
<![endif]-->
</head>
<body>
		<div class="container demo-1">
			<div class="content">
				<div id="large-header" class="large-header">
					<canvas id="demo-canvas"></canvas>
					<div class="logo_box">
						<div style="color:red">${err_msg}</div>
						<h3>欢迎你</h3>
						<form action="Ad/User/login.htm" name="f" method="post" id="login_form">
							<div class="input_outer">
								<span class="u_user"></span>
								<input name="userAccount" class="text" style="color: #FFFFFF !important" type="text" placeholder="请输入账户">
							</div>
							<div class="input_outer">
								<span class="us_uer"></span>
								<input name="userPassword" class="text" style="color: #FFFFFF !important; position:absolute; z-index:100;"value="" type="password" placeholder="请输入密码">
							</div>
							<div class="mb2"><a class="act-but submit" type="button" href="javascript:;document:login_form.submit();" style="color: #FFFFFF">登录</a></div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- /container -->
		<script src="Admin/Login/js/TweenLite.min.js"></script>
		<script src="Admin/Login/js/EasePack.min.js"></script>
		<script src="Admin/Login/js/rAF.js"></script>
		<script src="Admin/Login/js/demo-1.js"></script>
	</body>
</html>