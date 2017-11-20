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

<title>My JSP 'official-header.jsp' starting page</title>
<link href='https://fonts.googleapis.com/css?family=Varela+Round'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
<link href="resource/plugins/bootstrap/bootstrap.css" rel="stylesheet">


<link href="resource/css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="resource/plugins/laysui/css/layui.css" rel="stylesheet">
<link href="resource/css/index.css" rel="stylesheet">
<link href="resource/css/website-template.css" rel="stylesheet" 
	>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="application/x-javascript">
	
	
	

	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 




</script>
<script type="text/javascript"
	src="resource/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="resource/plugins/laysui/layui.js"></script>

<!-- js -->
<script>
	$(document).ready(function() {
		//Initialize tooltips
		$('.nav-tabs > li a[title]').tooltip();

		//Wizard
		$('a[data-toggle="tab"]').on('show.bs.tab', function(e) {

			var $target = $(e.target);

			if ($target.parent().hasClass('disabled')) {
				return false;
			}
		});

		$(".next-step").click(function(e) {

			var $active = $('.wizard .nav-tabs li.active');
			$active.next().removeClass('disabled');
			nextTab($active);

		});
		$(".prev-step").click(function(e) {

			var $active = $('.wizard .nav-tabs li.active');
			prevTab($active);

		});
	});

	function nextTab(elem) {
		$(elem).next().find('a[data-toggle="tab"]').click();
	}
	function prevTab(elem) {
		$(elem).prev().find('a[data-toggle="tab"]').click();
	}
</script>
<script type="text/javascript"
	src="resource/plugins/angularjs/angular.min.js"></script>
<script>
	$(function() {
		//头像图片信息
		var imagepath = $("#imagepath").val();
		if (imagepath == "") {
			$("#indexUserPic").attr("src", "resource/image/userdefaultpic.jpg");
		} else {
			$("#indexUserPic").attr("src", imagepath);
		}
		layui.use('layer', function() {
			var layer = layui.layer;
			$("#register").click(function() {
				layer = layer.open({
					title : '注册|登录',
					type : 2,
					content : "user/toRegister",
					offset : '100px',
					area : [ '400px', '450px' ],
					end : function() {
						location.reload();
					}
				});
			});
			$("#login").click(function() {
				layer = layer.open({
					title : '注册|登录',
					type : 2,
					content : "user/toLogin?type=user",
					offset : '100px',
					area : [ '400px', '450px' ],
					end : function() {
						location.reload();
					}
				});
			});
		});
	});
	function logout() {
		layui.use('layer', function() {
			var layer = layui.layer;
			layer.open({
				title : '提示',
				content : "是否退出系统？",
				offset : '200px',
				btn : [ "确认", "取消" ],
				yes : function(index) {
					$.ajax({
						url : "user/logout",
						success : function(data) {
							window.location = "common/toIndex";
							layer.close(index);
						}
					});
				}
			});
		});
	}
</script>
</head>

<body>
	<div class="header" style="height: 66px;">
		<div class="logo">
			<h1>
				<a href="index.html"><i><img src="resource/image/cell.png"
						alt=" " /></i>Easy Recharge</a>
			</h1>
		</div>
		<div class="top-nav">
			<span class="menu"><img src="resource/image/menu.png" alt=" " /></span>
			<ul class="layui-nav"
				style="margin-left:-240px; margin-top: -25px;background-color: #48CFC1;">
				<li class="layui-nav-item layui-this"><a href="">首页</a></li>
				<li class="layui-nav-item"><a href="shopIndex/toShop"
					style="font-size:1.5em;color: #FF9F59;">乐堡商城</a></li>

				<li class="layui-nav-item"><a href="javascript:;">乐堡活动</a>
					<dl class="layui-nav-child">
						<dd>
							<a href="">线上直播</a>
						</dd>
						<dd>
							<a href="">线下活动</a>
						</dd>
					</dl></li>
				<li class="layui-nav-item"><a href="javascript:;">乐堡生活</a>
					<dl class="layui-nav-child">
						<dd>
							<a href="">营养膳食</a>
						</dd>
						<dd>
							<a href="">用户视频</a>
						</dd>
						<dd>
							<a href="">用户反馈</a>
						</dd>
					</dl></li>

				<li class="layui-nav-item"><a href="">乐堡服务</a>
					<dl class="layui-nav-child">
						<dd>
							<a href="">体检预约</a>
						</dd>
						<dd>
							<a href="">生活助手</a>
						</dd>
						<dd>
							<a href="">独立生活</a>
						</dd>
						<dd>
							<a href="">康复协助</a>
						</dd>
					</dl></li>
				<li class="layui-nav-item"><a href="javascript:;">关于乐堡</a>
					<dl class="layui-nav-child">
						<dd>
							<a href="javascript:;">乐堡简介</a>
						</dd>
						<dd>
							<a href="javascript:;">快速上手</a>
						</dd>
						<dd>
							<a href="javascript:;">加入我们</a>
						</dd>
						<dd>
							<a href="javascript:;">联系我们</a>
						</dd>
					</dl></li>
				<li class="layui-nav-item" ng-app=""><a href="javascript:;"
						ng-if="${user==null }" id="login">登录</a> <a href="javascript:;"
						ng-if="${user!=null }"> <input type="hidden" id="imagepath"
								value="${user.userPicPath }"> <img src=""
							id="indexUserPic" class="layui-nav-img">${user.username }</a>
						<dl class="layui-nav-child" ng-if="${user!=null }">
							<dd ng-if="${user!=null }">
								<a href="common/toPersonal">个人中心</a>
							</dd>
							<dd ng-if="${user!=null }">
								<a href="javascript:;" onclick="logout()">注销</a>
							</dd>
						</dl>
						<dl class="layui-nav-child" ng-if="${user==null }">
							<dd>
								<a href="javascript:;" id="register"> 注册</a>
							</dd>
						</dl></li>
			</ul>

		</div>
		<!-- start search-->
		<div class="search-box">
			<div id="sb-search" class="sb-search">
				<form>
					<input class="sb-search-input" placeholder="请输入您的关键字..."
						type="search" name="search" id="search">
					<input class="sb-search-submit" type="submit" value="">
					<span class="sb-icon-search"> </span>
				</form>
			</div>
		</div>

		<div class="clearfix"></div>
	</div>
	<script>
		$("span.menu").click(function() {
			$("ul.nav1").slideToggle(300, function() {
				// Animation complete.
			});
		});
	</script>
	<!-- /script-for-menu -->
	<script>
		new UISearch(document.getElementById('sb-search'));
	</script>
	<!-- for bootstrap working -->
	<script src="resource/plugins/bootstrap/bootstrap.js"></script>
	<!-- //for bootstrap working -->
	<script>
		layui.use('element', function() {
			var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块

			//监听导航点击
			element.on('nav(demo)', function(elem) {
				//console.log(elem)
				layer.msg(elem.text());
			});

		});
	</script>
</body>
</html>
