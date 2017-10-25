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

<title>Home</title>

<link href="ui/backstage_managed/plugins/bootstrap/bootstrap.min.css"
	rel="stylesheet">
<link href="ui/frontEnd_manage/css/style.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="ui/backstage_managed/plugins/layui/css/layui.css"
	rel="stylesheet" type="text/css" media="all" />
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Easy Recharge Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />


<script type="text/javascript"
	src="ui/backstage_managed/plugins/jquery/jquery.min.js"></script>
<script src="ui/backstage_managed/plugins/bootstrap/bootstrap.min.js"></script>
<script type="text/javascript"
	src="ui/backstage_managed/plugins/layui/layui.js"></script>
<script type="text/javascript"
	src="ui/backstage_managed/plugins/angularjs/angular.min.js"></script>
<script>
	//注意：导航 依赖 element 模块，否则无法进行功能性操作
	layui.use('element', function() {
		var element = layui.element;
	});
	function login() {
		layui.use('layer', function() {
			var index = layer.open({
				title : '登录',
				type : 2,
				content : "user/toLogin?f=user",
				offset : '100px',
				area : [ '400px', '450px' ],
				end: function () {
	                location.reload();
	            }
			});
		});
	}
	function logout() {
		layui.use('layer', function() {
			var layer = layui.layer;
			layer.open({
				title:'提示',
				content:"是否退出系统？",
				offset : '200px',
				btn:["确认","取消"],
				yes:function(index){
					$.ajax({
						url:"user/logout",
						success:function(data){
							window.location="ui/frontEnd_manage/index.jsp";
							layer.close(index);
						}
					});
				}
			});
		});
	}
</script>
<style type="text/css">
.layui-nav .layui-nav-item a {
	color: white;
}

.layui-nav .layui-nav-item a:HOVER {
	color: #CCFF9A;
}
</style>
</head>
<body>

	<div class="">
		<div class="header" style="height: 70px; background-color: #66CC66;">
			<div class="logo">
				<h1>
					<a href="ui/frontEnd_manage/index.jsp"><i><img
							src="ui/frontEnd_manage/images/cell.png" alt=" " /></i>老人管理</a>
				</h1>
			</div>
			<div class="top-nav" ng-app="">
				<span class="menu"><img
					src="ui/frontEnd_manage/images/menu.png" alt=" " /></span>
				<ul class="layui-nav"
					style="width: 770px; margin-top:-22px; margin-left: -120px;background-color:  #66CC66;">
					<li class="layui-nav-item layui-this"><a href="">首页</a></li>
					<li class="layui-nav-item"><a href="">最新活动</a></li>
					<li class="layui-nav-item"><a href="">老年教育</a></li>
					<li class="layui-nav-item"><a href="">社区</a></li>
					<li class="layui-nav-item" ng-if="${user!=null }"><a
						href="javascript:;">${user.username }</a>
						<dl class="layui-nav-child" style="background-color: #66CC66">
							<!-- 二级菜单 -->
							<dd>
								<a href="">个人信息</a>
							</dd>
							<dd>
								<a href="javascript:;" onclick="logout()">退出</a>
							</dd>
						</dl></li>
					<li class="layui-nav-item" ng-if="${user==null }"><a
						href="javascript:;" onclick="login()">登录</a>
						<dl class="layui-nav-child" style="background-color: #66CC66">
							<!-- 二级菜单 -->
							<dd>
								<a href="">注册</a>
							</dd>
						</dl></li>

				</ul>
			</div>
			<!-- start search-->
			<div class="search-box">
				<div id="sb-search" class="sb-search">
					<form>
						<input style="background-color:  #5FB878;" class="sb-search-input"
							placeholder="Enter your search item..." type="search"
							name="search" id="search">
						<input class="sb-search-submit" type="submit" value="">
						<span class="sb-icon-search" style="background-color:  #66CC66;">
						</span>
					</form>
				</div>
			</div>
			<script src="ui/frontEnd_manage/js/classie.js"></script>
			<script src="ui/frontEnd_manage/js/uisearch.js"></script>
			<script>
				new UISearch(document.getElementById('sb-search'));
			</script>
			<div class="clearfix"></div>
		</div>
		<jsp:include page="jsp/main.jsp"></jsp:include>

		<div class="footer">
			<div class="container">
				<h2>
					<a href="ui/frontEnd_manage/index.jsp">Easy Recharge</a>
				</h2>
				<p>
					Copyright &copy; 2016.Company name All rights reserved.More
					Templates <a href="http://www.cssmoban.com/" target="_blank"
						title="模板之家">模板之家</a> - Collect from <a
						href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
				</p>
				<ul>
					<li><a class="face1" href="#"></a></li>
					<li><a class="face2" href="#"></a></li>
					<li><a class="face3" href="#"></a></li>
					<li><a class="face4" href="#"></a></li>
				</ul>
			</div>
		</div>
</body>
</html>
