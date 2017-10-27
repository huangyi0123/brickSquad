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

<title>修改密码</title>
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
		$("#passwordInputId2").bind('change input', function() {
			var password1 = $("#passwordInputId1").val();
			var password2 = $("#passwordInputId2").val();
			if (password1 == password2) {
				$("#buttonId").attr("disabled", false);
				layui.use('layer', function() {
					var layer = layui.layer;
					var msg = '密码一致';
					layer.msg(msg);
				});

			} else {
				$("#buttonId").attr("disabled", true);
				layui.use('layer', function() {
					var layer = layui.layer;
					var msg = '密码不一致';
					layer.msg(msg);
				});
			}
		});

	});
</script>
</head>

<body class="layui-layout-body gray-bg">

	<div class="middle-box text-center loginscreen  animated fadeInDown">
	<h2>修改密码</h2>
		<form class="layui-form" action="user/updatePassword" method="post"
			role="form">
			<div class="layui-form-item">
				<label class="layui-form-label">账户：</label>
				<div class="layui-input-inline">
					<input type="hidden" value="${user.id }" name="id">
					<input type="text" value="${user.username }" name="username"
						required lay-verify="required" autocomplete="off"
						class="layui-input" readonly="readonly">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">密码：</label>
				<div class="layui-input-inline">
					<input type="password" id="passwordInputId1" name="password"
						required lay-verify="required" placeholder="密码" autocomplete="off"
						class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">验证密码：</label>
				<div class="layui-input-inline">
					<input type="password" id="passwordInputId2" required
						lay-verify="required" placeholder="再次输入密码" autocomplete="off"
						class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label"></label>
				<div class="layui-input-inline">
					<button id="buttonId" type="submit"
						class="layui-btn layui-btn-radius layui-btn-normal ">确定</button>
						<button type="reset"
						class="layui-btn layui-btn-radius layui-btn-normal ">清空</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>
