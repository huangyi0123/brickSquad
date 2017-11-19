<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'official-footer.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <div class="footer-top">
		<div class="container">
			<div class="foo-grids">
				<div class="col-md-3 foo-grid" style="margin-left: 50px;">
					<a href="#"><h3>首页</h3></a>
					<ul>
						<li><a href="#"><i class="fa fa-qq"></i></a></li>
						<li><a href="#">Aircel</a></li>
						<li><a href="#">BSNL</a></li>
						<li><a href="#">Idea</a></li>
				</div>
				<div class="col-md-3 foo-grid">
					<a href="#"><h3>乐堡活动</h3></a>
					<ul>
						<li><a href="#">活动预约</a></li>
						<li><a href="#">乐堡讲座</a></li>
						<li><a href="#">乐堡直播</a></li>
						<li><a href="#">乐堡课程</a></li>
					</ul>
				</div>
				<div class="col-md-3 foo-grid">
					<a href="#"><h3>乐堡生活</h3></a>
					<ul>
						<li>营养膳食</li>
						<li>健康管理</li>
						<li>住户感言</li>
						<li>住户视频</li>
					</ul>
				</div>
				<div class="col-md-3 foo-grid">
					<a href="#"><h3>乐堡服务</h3></a>
					<ul>
						<li><a href="#">独立生活</a></li>
						<li><a href="#">协助护理</a></li>
						<li><a href="#">记忆护理</a></li>
						<li><a href="#">康复护理</a></li>
					</ul>
				</div>
				<div class="col-md-3 foo-grid">
					<a href="#"><h3>关于乐堡</h3></a>
					<ul>
						<li><a href="#">乐堡简介</a></li>
						<li><a href="#">加入我们</a></li>
						<li><a href="#">联系我们</a></li>
					</ul>
				</div>
				<div class="col-md-3 foo-grid">
					<a href="#"><h3>乐堡咨询</h3></a>

				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<div class="footer">
		<div class="container">
			<h2>
				<a href="index.html">Easy Recharge</a>
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
