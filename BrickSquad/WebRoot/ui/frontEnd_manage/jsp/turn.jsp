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

<title>My JSP 'turn.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta http-equiv="Refresh" content="0;url=ui/frontEnd_manage/index.jsp">
<link type="text/css"
	href="ui/backstage_managed/plugins/layui/css/layui.css">
<script type="text/javascript"
	src="ui/backstage_managed/plugins/layui/layui.js"></script>
<script type="text/javascript">
	layui.use('layer', function() {
		var layer = layui.layer;
		window.location = "ui/frontEnd_manage/index.jsp";
		parent.layer.closeAll();

	});
</script>
</head>

<body>
	This is my JSP page.
	<br>
</body>
</html>
