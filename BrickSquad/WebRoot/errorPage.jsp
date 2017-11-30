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

<title>错误提示</title>
</head>
<script type="text/javascript">
	var time = 6;

	function returnUrlByTime() {

		window.setTimeout('returnUrlByTime()', 1000);

		time = time - 1;

		document.getElementById("layer").innerHTML = time;
	}
</script>
<body style="text-align: center;" onload="returnUrlByTime()">
	<h1 style="font-size: 30px;margin-top: 20%;">哦豁，出错了，正在努力排查中。。。。。。</h1>
	<img alt="" src="resource/image/errorLoading.gif">
	<br>
	<b><span id="layer">5</span>秒后，<a href="#" style="font-size: 30px;">回到首页</a>。</b>

	<%
		//转向语句  
		response.setHeader("Refresh", "5;URL=/BrickSquad");
	%>

</body>
</html>
