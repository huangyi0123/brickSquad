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

<title>活动界面</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css"
	href="resource/plugins/laysui/css/layui.css" media="all">
<link rel="stylesheet" type="text/css" href="resource/css/activity.css">
<script type="text/javascript"
	src="resource/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="resource/plugins/laysui/layui.js"></script>
<!-- <script type="text/javascript"
	scr="../resource/plugins/layui/layui.js" ></script>
	 -->
</head>

<body>
	<div class="activity_body">
		<div class="activity_carousel">
			<div class="layui-carousel" id="test10">
				<div carousel-item="">
					<div>
						<img src="resource/image/1.png">
					</div>
					<div>
						<img src="resource/image/2.png">
					</div>
					<div>
						<img src="resource/image/3.png">
					</div>

				</div>
			</div>
		</div>
	</div>


	<script>
		layui.use([ 'carousel', 'form' ], function() {
			var carousel = layui.carousel, form = layui.form;

			carousel.render({
				elem : '#test10',
				width : '100%',
				height : '300px',
				interval : 5000
			});
		});
	</script>
</body>
</html>
