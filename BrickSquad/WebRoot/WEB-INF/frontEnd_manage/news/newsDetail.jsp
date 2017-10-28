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

<title>My JSP 'newsDetail.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<script type="text/javascript" src="resource/js/common.js"></script>
<script type="text/javascript" src="resource/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
	var t=$(".time").html();
	t=Format(new Date(t), 'yyyy-MM-dd');
	$(".time").html(t);
	console.log(t);
});
</script>
</head>
<body>
	<jsp:include page="../util/head.jsp" />
	<div class="content-bottom" style="margin: 40px">
		<div class="page-header">
			<h1 align="center">${news.title }</h1>
		</div>
		<div>
			<h5 align="right">来源：本站原创  发布时间：<i class="time">${news.postTime}</i></h5>
		</div>
		<div class="row">
			${news.content }
		</div>
		<div>
			<h5 align="right">【责任编辑：${news.username }】</h5>
		</div>
	</div>
	<jsp:include page="../util/indexFooter.jsp" />
</body>
</html>
