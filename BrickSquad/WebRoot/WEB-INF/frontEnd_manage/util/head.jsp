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

<title>My JSP 'head.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="resource/plugins/bootstrap/bootstrap.min.css" rel="stylesheet">
<link href="resource/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="resource/plugins/layui/css/layui.css" rel="stylesheet" type="text/css" media="all" />
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />


<script type="text/javascript" src="resource/plugins/jquery/jquery.min.js"></script>
<script src="resource/plugins/bootstrap/bootstrap.min.js"></script>
<script type="text/javascript" src="resource/plugins/layui/layui.js"></script>
<script type="text/javascript" src="resource/plugins/angularjs/angular.min.js"></script>
<script>
	//注意：导航 依赖 element 模块，否则无法进行功能性操作
	layui.use('element', function() {
		var element = layui.element;
	});
	$(function() {
		//头像图片信息
		var imagepath = $("#imagepath").val();
		if (imagepath =="") {
			$("#indexUserPic").attr("src",
					"resource/image/userdefaultpic.jpg");
		} else {
			$("#indexUserPic").attr("src",
					imagepath);
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
<style type="text/css">
.layui-nav .layui-nav-item a {
	color: white;
}
#register{
color:white;
}
#register a:hover{
color:red;
}
</style>
</head>
<body >
		<div class="header" style="height: 70px;width:100%; background-color: #FF9C3F">

			<div class="logo">
				<h1>
					<a href="common/toIndex">
						养乐堡
					</a>
				</h1>
			</div>
			<div class="top-nav" ng-app="">
				<ul class="layui-nav layui-this"
					style=" margin-top:-22px; margin-left: -200px;background-color: #FF9C3F">
					<li class="layui-nav-item layui-this">
						<a href="common/toIndex">首页</a>
					</li>
					<li class="layui-nav-item ">
						<a href="">最新活动</a>
					</li>
					<li class="layui-nav-item">
						<a href="">老年教育</a>
					</li>
					<li class="layui-nav-item">
						<a href="">社区</a>
					</li>
					<li class="layui-nav-item" ng-if="${user!=null }" style="background-color: #FF9C3F"> 
					<a href="javascript:;">	 <span>
					<input type="hidden" id="imagepath" value="${user.userPicPath }">
						  <img 
					style="border-radius:100%;width: 40px;height: 40px;"
					alt="还没有图片" src="" id="indexUserPic">
						  ${user.username }
						 </span>
						</a> 
					
						<dl class="layui-nav-child" style="background-color: #FF9C3F">

							<!-- 二级菜单 -->
							<dd>
								<a href="common/toPersonal">个人信息</a>
							</dd>
							<dd>
								<a href="javascript:;" onclick="logout()">退出</a>
							</dd>
						</dl>
					</li>
					<li class="layui-nav-item" ng-if="${user==null }">
						<a href="javascript:;" id="login">登录</a>
						<dl class="layui-nav-child" style="background-color: #FF9C3F">

							<!-- 二级菜单 -->
							<dd>
								<a href="javascript:;" id="register">注册</a>
							</dd>
						</dl>
					</li>

				</ul>
			</div>
<!-- 。以下是首页全局搜索的代码 -->
			<!-- start search-->
	<!-- 		<div class="search-box">
				<div id="sb-search" class="sb-search">
					<form>
						<input style="background-color:  #5FB878;" class="sb-search-input"
							placeholder="Enter your search item..." type="search" name="search" id="search">
						<input class="sb-search-submit" type="submit" value="">
						<span class="sb-icon-search" style="background-color:  #FF9C3F;"> </span>
						
					</form>
				</div>
			</div> 
			<script src="resource/js/classie.js"></script>
			<script src="resource/js/uisearch.js"></script>
			<script>
				new UISearch(document.getElementById('sb-search'));
			</script>
			<div class="clearfix"></div> -->

		</div>
</body>
</html>
