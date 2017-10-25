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

<title>My JSP 'Personal.jsp' starting page</title>
<link href="ui/backstage_managed/plugins/layui/css/layui.css"
	rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" type="text/css"
	href="ui/frontEnd_manage/css/Personal.css">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<script type="text/javascript"
	src="ui/backstage_managed/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript"
	src="ui/backstage_managed/plugins/layui/layui.js"></script>
</head>

<body>
	<div class="Person_body">
		<div class="Person_left">
			<div class="Person_left_src"">
				<img
					style="width: 100px;height: 100px;margin-top: 30px;margin-left: 180px;"
					alt="" src="ui/frontEnd_manage/images/2.png"> <span
					style="width:200px;height:20px;background-color:green;text-align:center; float:left; margin-top: 10px;margin-left: 130px;">我的用户名</span>
			</div>
		</div>
		<div class="Person_right">
			<div class="layui-tab layui-tab-card"
				style="height:100%; margin-top: 40px;margin-left: 10px;">
				<ul class="layui-tab-title">
					<li class="layui-this">个人资料</li>
					<li>安全设置</li>
					<li>健康管理</li>
					<li>活动管理</li>
					<li>订单管理</li>
				</ul>
				<div class="layui-tab-content" style="height: 100px;">
					<div class="layui-tab-item layui-show">1</div>
					<div class="layui-tab-item">2</div>
					<div class="layui-tab-item">3</div>
					<div class="layui-tab-item">4</div>
					<div class="layui-tab-item">5</div>
					<div class="layui-tab-item">6</div>
				</div>
			</div>
			<script>
				//注意：选项卡 依赖 element 模块，否则无法进行功能性操作
				layui.use('element', function() {
					var element = layui.element;

					//…
				});
			</script>
		</div>
	</div>
</body>
</html>
