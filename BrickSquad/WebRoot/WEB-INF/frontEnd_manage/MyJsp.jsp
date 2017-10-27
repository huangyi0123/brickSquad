<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'MyJsp.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script src="resource/plugins/jquery/jquery.min.js"></script>
<script src="resource/plugins/bootstrap/bootstrap.min.js"></script>
<link href="resource/plugins/bootstrap/bootstrap.min.css" rel="stylesheet" />
</head>

<body>
	<ul class="nav nav-tabs">
		<li class="active">
			<a href="#">Home</a>
		</li>
		<li>
			<a href="#">SVN</a>
		</li>
		<li>
			<a href="#">iOS</a>
		</li>
		<li>
			<a href="#">VB.Net</a>
		</li>
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#">
				Java
				<span class="caret"></span>
			</a>
			<ul class="dropdown-menu">
				<li>
					<a href="#">Swing</a>
				</li>
				<li>
					<a href="#">jMeter</a>
				</li>
				<li>
					<a href="#">EJB</a>
				</li>
				<li class="divider"></li>
				<li>
					<a href="#">分离的链接</a>
				</li>
			</ul>
		</li>
		<li>
			<a href="#">PHP</a>
		</li>
	</ul>

</body>
</html>
