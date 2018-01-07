<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%-- <%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()+path+ "/";
%> --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<%-- <base href = "<%=basePath%>"> --%>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Revolution Slider -->
   
<title>Insert title here</title>
</head>
<body>
   <header class="header-type-1 hidden-sm hidden-xs">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="header-navigation">
								
								<div class="logo">
									<a href="index.html">
										<img src="assets/images/logo.png" alt="">
									</a>
								</div>

								<div class="main-menu">
									<nav class="main-nav">
										<ul class="sf-menu">
											<li class="current-menu-item"><a href="home.jsp"><font font-family="Georgia">首页</font></a>
												
											</li>
											<li><a href="ModelList/ModelList.jsp">模板商城</a>
												
											</li>
											<li><a href="#">新闻 </a>
												
											</li>
											<li><a href="#">我的收藏</a>
												
											</li>
											<li><a href="#">我的订单</a>
												
											</li>
										</ul>
									</nav>
								</div>

								<div class="header-right">
								<c:choose>
								   <c:when test="${empty sessionScope.front_user}">  
								         <div class="social">
											<a href="Login/login.html">登录</a>
											<a href="#">注册</a>
										</div>      
								   </c:when>
								   <c:otherwise> 
									    <div class="social">
									    		<a href="User/Order/MyOrder.jsp">个人中心</a>
											<a href="#" style="margin-left:15px">注销</a>
										</div>
								   </c:otherwise>
								</c:choose>
								</div>

							</div>
						</div> <!-- /.col-md-12 -->
					</div> <!-- /.row -->
				</div> <!-- /.container -->
			</header> <!-- /.header-type-1 -->


</body>
</html>