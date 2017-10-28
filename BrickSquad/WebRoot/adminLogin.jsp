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
<meta name="viewport" content="width=device-width, initial-；scale=1.0">
<title>后台管理员登录</title>
<link href="resource/plugins/bootstrap/bootstrap.min.css"
	rel="stylesheet">
<link href="resource/plugins/fonts/font-awesome.min.css"
	rel="stylesheet">
<link href="resource/plugins/layui/css/layui.css"
	rel="stylesheet">
<link href="resource/css/animate.min.css" rel="stylesheet">
<link href="resource/css/style.min.css" rel="stylesheet">
<script src="resource/plugins/jquery/jquery.min.js"></script>
<script src="resource/plugins/bootstrap/bootstrap.min.js"></script>
<script src="resource/plugins/layui/layui.js"></script>
<script type="text/javascript">
	$(function() {
		var flag = '${flag}';
		if (flag == '2') {
			layui.use('layer', function() {
				var layer = layui.layer;
				var msg = '${msg}';
				layer.msg(msg);
			});
		}

	});
</script>
</head>

<body class="gray-bg">

	<div class="middle-box text-center loginscreen  animated fadeInDown">
		<div>
			<div>
				<img class="logo-name" alt=""
					src="resource/image/logo.png">
			</div>
			<h3>欢迎使用 后台管理系统</h3>

			<form class="m-t" role="form" action="user/login" method="post">
			<input type="hidden" name="type" value="admin">
				<div class="form-group">
					<input name="username" type="text" class="form-control"
						id="username" placeholder="管理员账户" required="">
				</div>
				<div class="form-group">
					<input name="password" type="password" class="form-control"
						id="password" placeholder="密码" required="">
				</div>
				<button type="submit" class="btn btn-primary block full-width m-b">管理员登录</button>
				<p class="text-muted text-center">
					<a href="user/toUserAccountAuthentication"><small>忘记密码了？</small></a>
				</p>

			</form>
		</div>
	</div>

</body>

</html>
</html>
