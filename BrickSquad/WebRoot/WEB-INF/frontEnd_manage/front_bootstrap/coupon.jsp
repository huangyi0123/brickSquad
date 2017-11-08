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

<title>My JSP 'coupon.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="resource/css/coupon.css" rel="stylesheet" type="text/css" >
</head>

<body>
	<div class="coupon">
		<div class="coupon-left">
			<div class="coupon-inner">
				<div class="coupon-money">
					<span>¥</span> <span class="sum">100.00</span>
				</div>
				<div class="coupon-condition">
					<p>满200.00可用</p>
				</div>
			</div>
		</div>
		<div class="coupon-right">
			<div class="coupon-inner">
				<div class="coupon-time">
					截止日期<br> 2216-12-31
				</div>
				<i class="coupon-circle top"></i> <i class="coupon-circle bottom"></i>
			</div>
		</div>
		<div class="coupon-light"></div>
	</div>

	<!--不可用-->
	<div class="coupon coupon-diabled">
		<div class="coupon-left">
			<div class="coupon-inner">
				<div class="coupon-money">
					<span>¥</span> <span class="sum">100.00</span>
				</div>
				<div class="coupon-condition">
					<p>满200.00可用</p>
				</div>
			</div>
		</div>
		<div class="coupon-right">
			<div class="coupon-inner">
				<div class="coupon-time">
					截止日期<br> 2016-12-31
				</div>
				<i class="coupon-circle top"></i> <i class="coupon-circle bottom"></i>
			</div>
		</div>
		<div class="coupon-light"></div>
	</div>
</body>
</html>
