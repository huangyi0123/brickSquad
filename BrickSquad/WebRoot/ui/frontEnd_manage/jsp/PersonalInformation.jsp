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

<title>My JSP 'PersonalInformation.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>
<link href="ui/frontEnd_manage/css/PersonalInformation.css"
	rel="stylesheet" />
<link href="ui/backstage_managed/plugins/bootstrap/bootstrap.min.css"
	rel="stylesheet" />
<link href="ui/backstage_managed/plugins/layui/css/layui.css"
	rel="stylesheet" media="all" />
<link href="ui/frontEnd_manage/css/PersonalInformation.css"
	rel="stylesheet" />
<script src="ui/backstage_managed/plugins/jquery/jquery.min.js"></script>
<script src="ui/backstage_managed/plugins/bootstrap/bootstrap.min.js"></script>
<script src="ui/backstage_managed/plugins/layui/layui.js"></script>

<script type="text/javascript">
	layui.use('element', function() {
		var element = layui.element;
		element.on('tab(demo)', function(data) {
			console.log(data);
		});
	});
</script>

<body>
	<div class="Per_body">
		<div class="Per_header">
			<ul class="nav nav-tabs" style="margin-left: 350px;">
				<li role="presentation" class="active"><a href="#">首页</a></li>
				<li role="presentation" class="dropdown"><a
					class="dropdown-toggle" data-toggle="dropdown" href="#"> 账户设置 <span
						class="caret"></span>
				</a>
					<div class="dropdown-menu"
						style="height: 150px;width: 485px;background-color: #5EBC5E">
						<ul style="float: left;">
							<li style="font-weight: bold;">安全设置</li>
							<li><a href="#">修改安全密码</a></li>
							<li><a href="#">手机绑定</a></li>
							<li><a href="#">其他</a></li>
						</ul>
						<ul style="float: left;">
							<li style="font-weight: bold;">个人资料</li>
							<li><a href="#">收货地址</a></li>
							<li><a href="#">修改头像、昵称</a></li>
							<li><a href="#">消息提醒设置</a></li>
						</ul>
						<ul style="float: left;">
							<li style="font-weight: bold;">账号绑定</li>
							<li><a href="#">支付宝绑定</a></li>
							<li><a href="#">微博绑定</a></li>
							<li><a href="#">分享绑定</a></li>
						</ul>
					</div></li>
				<li role="presentation"><a href="#">消息</a></li>
			</ul>
			<div class="input-group"
				style="width:400px;float:right;margin-top: -38px;margin-right: 50px;">
				<input type="text" class="form-control" placeholder="Search for...">
				<span class="input-group-btn">
					<button class="btn btn-default" type="button">搜一下!</button>
				</span>
			</div>
		</div>
		<div class="Per_left">
			<ul class="layui-nav layui-nav-tree" lay-filter="test"
				style="background-color: #5EBC5E">
				<!-- <ul class="layui-nav layui-nav-tree layui-nav-side"> -->
				<li class="layui-nav-item layui-nav-itemed"><a
					href="javascript:;">默认展开</a>
					<dl class="layui-nav-child">
						<dd>
							<a href="javascript:;">选项1</a>
						</dd>
						<dd>
							<a href="javascript:;">选项2</a>
						</dd>
						<dd>
							<a href="">跳转</a>
						</dd>
					</dl></li>
				<li class="layui-nav-item"><a href="javascript:;">解决方案</a>
					<dl class="layui-nav-child">
						<dd>
							<a href="">移动模块</a>
						</dd>
						<dd>
							<a href="">后台模版</a>
						</dd>
						<dd>
							<a href="">电商平台</a>
						</dd>
					</dl></li>
				<li class="layui-nav-item"><a href="">产品</a></li>
				<li class="layui-nav-item"><a href="">大数据</a></li>
			</ul>
		</div>
	</div>
</body>
</html>
