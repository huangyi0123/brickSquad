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
<meta charset="utf-8">
<title>注册</title>
<link href="ui/backstage_managed/plugins/bootstrap/bootstrap.min.css"
	rel="stylesheet">
<link href="ui/backstage_managed/plugins/fonts/font-awesome.min.css"
	rel="stylesheet">
<link href="ui/backstage_managed/plugins/icheck/custom.css"
	rel="stylesheet">
<link href="ui/backstage_managed/css/animate.min.css" rel="stylesheet">
<link href="ui/backstage_managed/css/style.min.css" rel="stylesheet">
<script src="ui/backstage_managed/plugins/jquery/jquery.min.js"></script>
<script src="ui/backstage_managed/plugins/bootstrap/bootstrap.min.js"></script>
<script src="ui/backstage_managed/plugins/icheck/icheck.min.js"></script>
</head>
<body class="gray-bg">

	<div class="middle-box text-center loginscreen   animated fadeInDown">
		<div>
			<div>
				<img class="logo-name" alt=""
					src="ui/backstage_managed/image/logo.png">
			</div>
			<h3>欢迎注册 老人管理系统</h3>
			<p>创建一个新账户</p>
			<form class="m-t" role="form" action="${pageContext.request.contextPath }/user/register" method="post">
				<div class="form-group">
					<input type="text" name="username" class="form-control" placeholder="请输入用户名"
						required="">
				</div>
				<div class="form-group">
					<input type="password" name="password" class="form-control" placeholder="请输入密码"
						required="">
				</div>
				<div class="form-group">
					<input type="password"  class="form-control" placeholder="请再次输入密码"
						required="">
				</div>
				<div class="form-group">
					<input type="text"  name="telephone" class="form-control" placeholder="请输入电话号码"
						required="">
				</div>
				<div class="form-group text-left">
					<div class="checkbox i-checks">
						<label class="no-padding"> <input type="checkbox"><i></i>
							我同意注册协议
						</label>
					</div>
				</div>
				<button type="submit" class="btn btn-primary block full-width m-b">注
					册</button>

				<p class="text-muted text-center">
					<small>已经有账户了？</small><a href="login.html">点此登录</a>
				</p>

			</form>
		</div>
	</div>
</body>

</html>
