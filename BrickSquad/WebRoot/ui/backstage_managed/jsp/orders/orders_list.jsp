<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'region.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="ui/backstage_managed/plugins/grid_manager/GridManager.min.css">
	<script type="text/javascript" src="ui/backstage_managed/plugins/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="ui/backstage_managed/plugins/grid_manager/GridManager.min.js"></script>
	<script type="text/javascript" src="ui/backstage_managed/jsp/orders/orders_list.js"></script>
	<script type="text/javascript">
	$(function() {
		init("");
	});
	</script>
  </head>
  <body>
    <table grid-manager="demo-ajaxPageCode"></table>
  </body>
</html>
