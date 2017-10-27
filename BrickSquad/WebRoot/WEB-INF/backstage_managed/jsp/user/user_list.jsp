<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'user.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="styles.css">
	<link rel="stylesheet" type="text/css" href="resource/plugins/grid_manager/GridManager.min.css">
	<link rel="stylesheet" type="text/css" href="resource/plugins/layui/css/layui.css">
	<link rel="stylesheet" type="text/css" href="resource/plugins/bootstrap/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="resource/plugins/fonts/font-awesome.min.css">
	<link rel="stylesheet" href="resource/plugins/fonts/font-awesome.min.css"/>
	<script type="text/javascript" src="resource/plugins/layui/layui.js"></script>
	<script type="text/javascript" src="resource/plugins/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="resource/plugins/grid_manager/GridManager.min.js"></script>
	<script type="text/javascript" src="resource/js/user_list.js"></script>
	<script type="text/javascript">
	$(function() {
		init("");
		serach();
	});
	</script>
  </head>
  
  <body>
  	<div class="search">
		<div class="input-group" style="width: 520px;margin-left: 52px;">
			<input type="text" class="form-control" placeholder="Search for..." id="keyword">
			<span class="input-group-btn">
				<button class="btn btn-default" type="button" id="serach">
					<i class="fa fa-search-plus" style="margin-right: 5px;"></i>搜一下
				</button>
			</span>
		</div>
		<!-- /input-group -->
	</div>
	<div style="clear: both;"></div>
	<div class="cls"></div>
    <table grid-manager="demo-ajaxPageCode"></table>
  </body>
</html>
