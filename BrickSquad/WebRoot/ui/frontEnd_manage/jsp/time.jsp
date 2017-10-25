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

<title>My JSP 'time.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript">
	var time = 4;

	function returnUrlByTime() {

		window.setTimeout('returnUrlByTime()', 1000);

		time = time - 1;

		document.getElementById("layer").innerHTML = time;
	}
</script>
</head>

<body  onload="returnUrlByTime()">  
      
    <h3>请勿重复提交您的信息！谢谢！</h3>  
    <b><span id="layer">3</span>秒后，转入输入界面。</b>  
      
    <%  
        //转向语句  
        response.setHeader("Refresh", "3;URL=/BrickSquad/common/toFrame");  
    %>  
  
</body> 
</html>
