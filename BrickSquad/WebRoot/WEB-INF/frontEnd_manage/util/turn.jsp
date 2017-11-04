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
<link type="text/css" href="resource/plugins/layui/css/layui.css">
<script type="text/javascript" src="resource/plugins/layui/layui.js"></script>
<script type="text/javascript">
	layui.use('layer', function() {
		var layer = layui.layer;
		parent.layer.closeAll();
		window.location.href='${url}';
	});
	
</script>
</head>
<%-- <%
	//转向语句  
	/*  response.setHeader("Refresh", "0;URL=/BrickSquad/common/toIndex");  */
	String tabflag = request.getAttribute("tabflag");
	if (tabflag != null) {
		if (tabflag.equals("2")) {
			String url = request.getAttribute("url");
			response.setHeader("Refresh", "0;URL=/BrickSquad/" + url);
		}
	}

	String indexFlag = request.getAttribute("indexFlag");
	if (indexFlag != null) {
		if (indexFlag.equals("userLogin")) {
			response.setHeader("Refresh",
					"0;URL=/BrickSquad/common/toIndex");
		}
	}
%> --%>
</html>
