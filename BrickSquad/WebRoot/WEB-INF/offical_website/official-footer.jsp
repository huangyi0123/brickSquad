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
					<a href="#">
						<h3>首页</h3>
					</a>
				</div>
				<div class="col-md-3 foo-grid">
					<a href="common/toActivity_carousel?type=online_course">
						<h3>乐堡活动</h3>
					</a>
					<ul>
						<li>
							<a href="common/toActivity_carousel?type=online_course">线上直播</a>
						</li>
						<li>
							<a href="common/toActivity_carousel?type=offline_course">线下活动</a>
						</li>
					</ul>
				</div>
				<div class="col-md-3 foo-grid">
					<a href="common/toLife?type=aboutus-intro">
						<h3>乐堡生活</h3>
					</a>
					<ul>
						<li>
							<a href="common/toLife?type=aboutus-intro">营养膳食</a>
						</li>
						<li>
							<a href="common/toLife?type=aboutus-use">用户视频</a>
						</li>
						<li>
							<a href="common/toLife?type=aboutus-join">用户反馈</a>
						</li>
					</ul>
				</div>
				<div class="col-md-3 foo-grid">
					<a href="LeFortServiceController/serverWebsiteTemplate?type=aboutus-intro&typeId=6f04943acfeb11e7bba55254002ec43c">
						<h3>乐堡服务</h3>
					</a>
					<ul>
						<li>
							<a href="LeFortServiceController/serverWebsiteTemplate?type=aboutus-intro&typeId=6f04943acfeb11e7bba55254002ec43c">体检预约</a>
						</li>
						<li>
							<a href="LeFortServiceController/serverWebsiteTemplate?type=aboutus-use&typeId=6f04943acfeb11e7bba55254002ec43c">生活助手</a>
						</li>
						<li>
							<a href="common/serverWebsiteTemplate?type=aboutus-join&typeId=6f04943acfeb11e7bba55254002ec43c">独立生活</a>
						</li>
						<li>
							<a href="LeFortServiceController/serverWebsiteTemplate?type=aboutus-cont&typeId=6f04943acfeb11e7bba55254002ec43c">康复协助</a>
						</li>
					</ul>
				</div>
				<div class="col-md-3 foo-grid">
					<a href="common/toWebsiteTemplate?type=aboutus-intro">
						<h3>关于乐堡</h3>
					</a>
					<ul>
						<li>
							<a href="common/toWebsiteTemplate?type=aboutus-intro">乐堡简介</a>
						</li>
						<li>
							<a href="common/toWebsiteTemplate?type=aboutus-use">快速上手</a>
						</li>
						<li>
							<a href="common/toWebsiteTemplate?type=aboutus-join">加入我们</a>
						</li>
						<li>
							<a href="common/toWebsiteTemplate?type=aboutus-cont">联系我们</a>
						</li>
					</ul>
				</div>
				<div class="col-md-3 foo-grid">
					<a href="shopIndex/toShop">
						<h3>乐堡商城</h3>
					</a>

				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<div class="footer">
		<div class="container">
			<h2>
				<a href="index.html">养乐堡</a>
			</h2>
			<p>
				版权 &copy; 2017.团 队 名  7brickSquad.更多
				咨询 <a href="common/toWebsiteTemplate?type=aboutus-intro" target="_blank"
					title="老人之家">老人之家</a> - 来源 <a
					href="common/toWebsiteTemplate?type=aboutus-join" title="搬砖小分队" target="_blank">搬砖小分队</a>
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
