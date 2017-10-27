<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title></title>
 <link href="resource/plugins/bootstrap/bootstrap.min.css"
	rel="stylesheet">
<link href="resource/css/style.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="resource/plugins/layui/css/layui.css"
	rel="stylesheet" type="text/css" media="all" />
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Easy Recharge Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />


<script type="text/javascript"
	src="resource/plugins/jquery/jquery.min.js"></script>
<script src="resource/plugins/bootstrap/bootstrap.min.js"></script>
<script type="text/javascript"
	src="resource/plugins/layui/layui.js"></script>
  </head>
  
  <body>
   <div class="footer">
			<div class="container">
				<h2>
						<a href="user/toLogin">后台管理登录</a>
				</h2>
				<p>
					Copyright &copy; 2017.搬砖小分队
				</p>		
			</div>
			
		</div>
  </body>
</html>
