<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'region.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css"
	href="resource/plugins/grid_manager/GridManager.min.css">
<link rel="stylesheet" type="text/css"
	href="resource/plugins/layui/css/layui.css">
<link rel="stylesheet" type="text/css"
	href="resource/plugins/bootstrap/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="resource/plugins/fonts/font-awesome.min.css">
<script type="text/javascript"
	src="resource/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript"
	src="resource/plugins/grid_manager/GridManager.min.js"></script>
<script type="text/javascript"
	src="resource/js/coupon_list.js"></script>
<script type="text/javascript"
	src="resource/plugins/bootstrap/bootstrap.min.js"></script>
<script type="text/javascript"
	src="resource/plugins/layui/lay/dest/layui.all.js"></script>
<script type="text/javascript">
	$(function() {
	var a='${roleId}';
		init("",${limiterole.coupon.ad},${limiterole.coupon.dl},${limiterole.coupon.query});
	serach();
	$(".table-div").css('height','calc(100% - 90px)');
	});
</script>
<style type="text/css">
.search {
	margin-top: 5px;
	margin-bottom: 5px;
	float: left;
}

a:HOVER {
	text-decoration: none;
}
</style>
</head>

<body>
	<div class="search">
		<div class="input-group" style="width: 520px;margin-left: 52px;">
			<input type="text" class="form-control" placeholder="根据店铺名，优惠券类型查询" id="keyword">
			<span class="input-group-btn">
				<button class="btn btn-default" type="button" id="serach">
					<i class="fa fa-search-plus" style="margin-right: 5px;"></i>搜一下
				</button>
			</span>
		</div>
		<!-- /input-group -->
	</div>
	<div class="input-group"
		style="float: right;margin-right: 30px;margin-top: 5px; ">
		<c:if test="${user.roleId ne 'b0578c1cc05511e7aca65254002ec43c'}">
		<div class="input-group-btn" style="width:100px;">
			<button type="button" style="width: 170px;"
				class="btn btn-default dropdown-toggle" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false">
				选项<span class="caret" style="margin-left: 80px;"></span>
			</button>
			<ul class="dropdown-menu">
				<li><a href="coupon/toAddCoupon" 
					style="margin-left: 10px;"><i class="fa fa-plus"></i><font
						style="margin-left: 10px;">添加</font></a></li>
			</ul>
		</div>
		</c:if>
	</div>
	<div style="clear: both;"></div>
	<div class="cls"></div>
	<table grid-manager="demo-ajaxPageCode"></table>
</body>
</html>
