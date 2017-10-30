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
<img src="resource/image/xiaohe.jpg" style="padding-top: 1.8%; margin-left: 4.2%;float: left;">
<div class="header_user">
<ul>
	<li style="color: gray;padding-top: 5px;">用户名：
	<a href="#"><input type="text" name="" value="xuebidasrdweferwferao"
	style="width: 50px;border: none;outline: none;margin-right: 4px;">
	</a>
	</li>
	<li style="color: gray;padding-top: 5px;"><span class="glyphicon glyphicon-shopping-cart" aria-hidden="false" style="color:red;"></span><a href="">
	购物车</a></li>
	<li>
		<div class="dropdown">
  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="border: none;">
 <span class="glyphicon glyphicon-star" aria-hidden="false" style="color:gray;"></span><a href=""> 收藏</a>
   <span class="caret"></span>
  </button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenu2" style="width: 20px;padding-left: 20px;">
    <li><a href="#">收藏的商品</a></li>
    <li><a href="#">收藏的商店</a></li>
  </ul>
</div>
</li>
<li>
	<div class="dropdown">
  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="border: none;">
  	<a href="">联系客户</a>
   <span class="caret"></span>
  </button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenu2" style="width: 20px;padding-left: 20px;">
    <li><a href="#">消费者客服</a></li>
    <li><a href="#">卖家客服</a></li>
  </ul>
</div>
</li>
<li style="color: gray;padding-top: 5px;"><a href="">帮助</a></li>
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
	<li><a href="" style="padding-left: 10px;">更多&nbsp;>></a></li>
</ul>
</div>
<nav class="nava">
<ul class="nav nav-tabs" style="padding-left: 5px;clear: both;font-size: 16px;background: red;">
  <li role="presentation" class="active"><a href="#" style="width: 200px;padding-left: 65px;border-radius:0px;border-color: red ;margin-left: 12px;border-bottom: gray;color: red;background: red;color: white;">商品主题</a></li>
  <li role="presentation"><a href="#" style="border-radius: 0px;">生活用品</a></li>
  <li role="presentation"><a href="#" style="border-radius: 0px;">活动用品</a></li>
  <li role="presentation"><a href="#" style="border-radius: 0px;">商品会员卡</a></li>
  <li role="presentation"><a href="#"  style="border-radius: 0px;">日常用品</a></li>
  <li role="presentation"><a href="#"  style="border-radius: 0px;">节气养生</a></li>
  <li role="presentation"><a href="#"  style="border-radius: 0px;">便民服务</a></li>
</ul>
</nav>
<div class="left_group">
	<div class="list-group">
  <button type="button" class="list-group-item" style="border-radius: 0px;">
  		<a href="">老人装</a>
  		<a href="">儿童装</a>
  		<a href="">成年装</a>
  		<a href=""><span class="glyphicon glyphicon-menu-right" aria-hidden="false" style="color:gray;padding-left:3px;"></span>
  		</a>
  </button>
  <button type="button" class="list-group-item">xuexi</button>
  <button type="button" class="list-group-item">Morbi leo risus</button>
  <button type="button" class="list-group-item">Porta ac consectetur ac</button>
  <button type="button" class="list-group-item">Vestibulum at eros</button>
   <button type="button" class="list-group-item">Cras justo odio</button>
  <button type="button" class="list-group-item">Dapibus ac facilisis in</button>
  <button type="button" class="list-group-item">Morbi leo risus</button>
  <button type="button" class="list-group-item">Porta ac consectetur ac</button>
  <button type="button" class="list-group-item" style="border-radius: 0px; ">Vestibulum at eros</button>
</div>
</div>

  

</body>
</html>
