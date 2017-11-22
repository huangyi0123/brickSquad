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

<title>My JSP 'vedio-details.jsp' starting page</title>

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
<link rel="stylesheet" type="text/css"
	href="resource/css/vedio-details.css">

<script type="text/javascript"
	src="resource/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="resource/plugins/laysui/layui.js"></script>
</head>

<body>
	<div class="vedio_body">
		<jsp:include page="official-header.jsp"></jsp:include>
		<div class="vedio_main">
			<div class="layui-row">
				<div class="layui-col-xs12 layui-col-md9">
					<div class="vedio_play_main">

						<div class="vedio_play"></div>
					</div>
				</div>
				<div class="layui-col-xs6 layui-col-md3">
					<div class="vedio_recom">
						<label>热播推荐</label> <a href="#"><img alt=""
							style="margin-top: 10px;"
							src="resource/image/3736651_1426063184096_800x600.jpg"></a> <a
							href="#"><img alt=""
							src="resource/image/3736651_1426063184096_800x600.jpg"></a> <a
							href="#"><img alt=""
							src="resource/image/3736651_1426063184096_800x600.jpg"></a>
					</div>

				</div>

			</div>

			<!------------------------ 猜你喜欢 ----------------------->
			<div class="vedio_info">
				<div class="layui-row">
					<div class="layui-col-xs12 layui-col-md8">
						<div class="vedio_guess">
							<label>猜你喜欢</label> <a href="#" class="more"> 更多</a>
							<div class="vedio_list">
								<a href="#"><img alt="" style="margin-left: 0px;"
									src="resource/image/3736651_1426063184096_800x600.jpg"></a>
									<a href="#"><img alt=""
									src="resource/image/3736651_1426063184096_800x600.jpg"></a>
									<a href="#"><img alt=""
									src="resource/image/3736651_1426063184096_800x600.jpg"></a>
							</div>
						</div>
					</div>
					<div class="layui-col-xs6 layui-col-md4" style="border: 1px solid red;">
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
