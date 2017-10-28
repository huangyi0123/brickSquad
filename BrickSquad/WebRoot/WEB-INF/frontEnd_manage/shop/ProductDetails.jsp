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

<title>My JSP 'ProductDetails.jsp' starting page</title>
<link href="resource/plugins/layui/css/layui.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="resource/plugins/bootstrap/bootstrap.min.css"
	rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" type="text/css"
	href="resource/css/ProductDetails.css">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript"
	src="resource/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="resource/plugins/layui/layui.js"></script>
<script type="text/javascript"
	src="resource/plugins/bootstrap/bootstrap.min.js"></script>
<script>
	//Demo
	layui.use('form', function() {
		var form = layui.form;

		//监听提交
		form.on('submit(formDemo)', function(data) {
			layer.msg(JSON.stringify(data.field));
			return false;
		});
	});
</script>
</head>

<body>
	<div class="Pro_body">
		<!----------------------------------------- 商品详情顶部 ----------------------------------------->
		<div class="Pro_header">
			<img alt="" src="resource/image/2.png"
				style="width:80px;height:50px; margin-left: 100px;margin-top: 15px;">
			<div class="btn-group">
				<button type="button" class="btn btn-default dropdown-toggle"
					style="display:block; line-height:10px;margin-top: 40px;"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					Action <span class="caret"></span>
				</button>
				<ul class="dropdown-menu" style="width: 320px;height: 400px;">
					<li>
						<ul>
							<li><a href="" style="font-weight: bold;">淘宝发现</a></li>
							<li><a href="">淘宝女人</a></li>
							<li><a href="">淘宝男人</a></li>
							<li><a href="">生活居家</a></li>
							<li><a href="">情侣</a></li>
						</ul>
					</li>
					<li>
						<ul>
							<li><a href="" style="font-weight: bold;">男女服饰</a></li>
							<li><a href="">女装</a></li>
							<li><a href="">新品</a></li>
							<li><a href="">裙子</a></li>
							<li><a href="">男装</a></li>
							<li><a href="">T恤</a></li>
							<li><a href="">休闲</a></li>
						</ul>
					</li>
					<li>
						<ul>
							<li><a href="" style="font-weight: bold;">箱包市场</a></li>
							<li><a href="">女包</a></li>
							<li><a href="">男包</a></li>
							<li><a href="">双肩包</a></li>
							<li><a href="">旅行包</a></li>
							<li><a href="">钱包</a></li>
						</ul>
					</li>
					<li>
						<ul>
							<li><a href="" style="font-weight: bold;">日用百货</a></li>
							<li><a href="">热门</a></li>
							<li><a href="">餐具</a></li>
							<li><a href="">饮具</a></li>
							<li><a href="">收纳</a></li>
							<li><a href="">清洁</a></li>
							<li><a href="">日化</a></li>
						</ul>
					</li>
					<li>
						<ul>
							<li><a href="" style="font-weight: bold;">家居家纺</a></li>
							<li><a href="">四件套</a></li>
							<li><a href="">窗帘</a></li>
							<li><a href="">摆件</a></li>
							<li><a href="">花瓶</a></li>
							<li><a href="">沙发</a></li>
							<li><a href="">床</a></li>
						</ul>
					</li>

				</ul>
			</div>
			<div class="input-group"
				style="width: 400px;margin-left: 900px;margin-top: -40px;">
				<input type="text" class="form-control" placeholder="Search for...">
				<span class="input-group-btn">
					<button class="btn btn-default" type="button">搜淘宝</button>
					<button class="btn btn-default" type="button"
						style="margin-left: 2px;">搜本店</button>
				</span>
			</div>
		</div>

		<div class="Pro_midum">
			<ul class="nav nav-pills" style="margin-left: 200px;">
				<li role="presentation" class="dropdown"><a
					class="dropdown-toggle" data-toggle="dropdown" href="#"
					role="button" aria-haspopup="true" aria-expanded="false">
						Dropdown <span class="caret"></span>
				</a>
					<ul class="dropdown-menu TypeAll">
						<li><a href="#">所有宝贝</a></li>
						<li><a href="#">十月新品</a></li>
						<li><a href="#">九月新品</a></li>
						<li><a href="#">八月新品</a></li>
						<li><a href="#">毛呢外套</a></li>
						<li><a href="#">羽绒棉衣棉服</a></li>
						<li><a href="#">西装风衣外套棒球服</a></li>
						<li><a href="#">针织衫 毛衣</a></li>
						<li><a href="#">上装</a></li>
						<li><a href="#">下装</a></li>
						<li><a href="#">裙装</a></li>
						<li><a href="#">套装</a></li>
						<li><a href="#">牛仔外套</a></li>
						<li><a href="#">马甲 背心</a></li>
					</ul></li>
				<li role="presentation"><a href="#">首页</a></li>
				<li role="presentation"><a href="#">店铺活动</a></li>
			</ul>

		</div>

	</div>
</body>
</html>
