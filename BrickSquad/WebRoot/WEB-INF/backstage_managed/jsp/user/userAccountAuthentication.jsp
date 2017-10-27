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
<title>填写账户 身份认证</title>
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
</head>
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
<body class="layui-layout-body gray-bg">
	<!--验证用户  -->
	<div class="middle-box text-center loginscreen  animated fadeInDown">
		<form class="layui-form" action="user/toUpdatePassword" method="post" role="form">
			<div class="layui-form-item">
				<label class="layui-form-label">账户：</label>
				<div class="layui-input-inline">
					<input type="text" name="username" required lay-verify="required"
						placeholder="账户" autocomplete="off" class="layui-input">
				</div>
			</div>
			<!-- 	<div class="layui-form-item">
			<label class="layui-form-label">验证：</label>
			<div class="layui-input-inline">
				<input type="text" name="" required lay-verify="required"
					placeholder="验证码" autocomplete="off" class="layui-input">
			</div>
		</div> -->

			<div class="layui-form-item">
				<label class="layui-form-label"></label>
				<div class="layui-input-inline">
					<button type="submit"
						class="layui-btn layui-btn-radius layui-btn-normal">确定</button>
					<button type="reset"
						class="layui-btn layui-btn-radius layui-btn-normal">清空</button>
				</div>
			</div>
		</form>
	</div>
</body>

</html>
