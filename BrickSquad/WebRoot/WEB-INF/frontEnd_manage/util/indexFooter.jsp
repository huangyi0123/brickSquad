<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title></title>
<link href="resource/plugins/bootstrap/bootstrap.min.css"
	rel="stylesheet">
<link href="resource/css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="resource/plugins/layui/css/layui.css" rel="stylesheet"
	type="text/css" media="all" />
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />


<script type="text/javascript"
	src="resource/plugins/jquery/jquery.min.js"></script>
<script src="resource/plugins/bootstrap/bootstrap.min.js"></script>
<script type="text/javascript" src="resource/plugins/layui/layui.js"></script>
</head>

<body >
	<div class="footer">

		<div style="font-size: 15px; color: white" class="row">
		
		<h2>
			<a href="adminLogin.jsp">后台管理登录</a>
		</h2>
		Copyright
			&copy; 2017.搬砖小分队</div>
	</div>
	
</body>
</html>
