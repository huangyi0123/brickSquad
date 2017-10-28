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
<link rel="stylesheet" type="text/css" href="resource/css/business.css">
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
<div class="search">
<img src="resource/image/xiaohe.jpg" style="padding-top: 2%;margin-left: 4.5%;float: left;">
<div class="header_user">
<ul>
	<li style="color: gray">用户名：
	<a href="#"><input type="text" name="" value="xuebidasrdweferwferao"
	style="width: 50px;border: none;outline: none;margin-right: 15px;">
	</a>
	</li>
	<li><a href="">购物车</a></li>
	<li>
		<div class="dropdown">
  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Dropup
    <span class="caret"></span>
  </button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenu2">
    <li><a href="#">Action</a></li>
    <li><a href="#">Another action</a></li>
    <li><a href="#">Something else here</a></li>
    <li role="separator" class="divider"></li>
    <li><a href="#">Separated link</a></li>
  </ul>
</div>
	</li>
	<li><a href="">商品中心</a></li>
	<li><a href="">联系客户</a></li>
	<li><a href="">帮助</a></li>
</ul>
</div>
	<div class="s-bar">
	   <form >
		<input type="text" value="" >
		<input type="submit"  value="搜索"/>
	  </form>
	</div>
</div>
<div class="hotSearch">
<ul>
	<li><a href="">拐杖</a></li>
	<li><a href="">坐垫</a></li>
	<li><a href="">伞</a></li>
	<li><a href="">拐杖</a></li>
	<li><a href="">雨衣</a></li>
	<li><a href="">男裤</a></li>
	<li><a href="">睡衣</a></li>
	<li><a href="">棉被</a></li>
	<li><a href="">拐杖</a></li>
	<li><a href="">JavaWeb</a></li>
	<li><a href="">解放鞋</a></li>
	<li><a href="" style="padding-left: 40px;">更多&nbsp;>></a></li>
</ul>
</div>
<nav>
<ul class="nav nav-tabs" style="padding-left: 5px;clear: both;font-size: 16px;">
  <li role="presentation" class="active"><a href="#" style="width: 200px;padding-left: 65px;border-radius: none;margin-left: 12px;border-bottom: gray">商品主题</a></li>
  <li role="presentation"><a href="#">生活用品</a></li>
  <li role="presentation"><a href="#">活动用品</a></li>
  <li role="presentation"><a href="#">商品会员卡</a></li>
  <li role="presentation"><a href="#">日常用品</a></li>
  <li role="presentation"><a href="#">节气养生</a></li>
  <li role="presentation"><a href="#">便民服务</a></li>
</ul>
</body>
</html>
