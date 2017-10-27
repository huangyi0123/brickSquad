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
<link href="ui/frontEnd_manage/css/Header.css" rel="stylesheet" type="text/css" />
<title>My JSP 'carousel.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!-- <script src="ui/js/Header.js"></script> -->
<link href="resource/plugins/bootstrap/bootstrap.min.css" rel="stylesheet"
	media="screen">
<script src="resource/plugins/jquery/jquery.min.js"></script>
<script src="resource/plugins/bootstrap/bootstrap.min.js"></script>

<script type="text/javascript">
	$(function() {
		$('.carousel').carousel();
	});
</script>
</head>

<body>
	<div class="div5" style="margin: 0 auto; ">
		<div id="myCarousel" class="carousel slide">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<!-- Carousel items -->
			<div class="carousel-inner">
				<div class="active item">
					<img src="ui/frontEnd_manage/image/1.png">
				</div>
				<div class="item">
					<img src="ui/frontEnd_manage/image/2.png">
				</div>
				<div class="item">
					<img src="ui/frontEnd_manage/image/3.png">
				</div>
			</div>
			<!-- Carousel nav -->
			<a class="carousel-control left" href="#myCarousel" data-slide="prev">
				<font class="font" size="20em">&lsaquo;</font>
			</a>
			<a class="carousel-control right" href="#myCarousel" data-slide="next">
				<font class="font" size="20em">&rsaquo;</font>
			</a>
		</div>
	</div>

</body>
</html>
