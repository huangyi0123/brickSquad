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

<title>My JSP 'add_type.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="resource/plugins/layui/css/layui.css">

<script type="text/javascript" src="resource/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="resource/plugins/layui/layui.js"></script>
<script type="text/javascript" src="resource/plugins/layui/lay/modules/laydate.js"></script>
<script type="text/javascript">
	$(function() {
		$.ajax({
			url : 'type/findAllType',
			success : function(data) {
				data = JSON.parse(data);
				var id = $("#parament").attr('val');
				
				$(data).each(
						function() {
							if (id == this.id) {
								$("#parament").append(
										'<option value="'+this.id+'"  selected="selected">'
												+ this.name + '</option>');
							} else {
								$("#parament").append(
										'<option value="'+this.id+'">'
												+ this.name + '</option>');
							}

						});
				layui.use('form', function() {
					var form = layui.form();
				});
			}
		});
	});
</script>

</head>

<body>
	<br>
	<div style="padding-left: 120px;font-size:16;font-style: oblique;">修改用户信息</div>
	<br>
	<form class="layui-form" action="user/toAddUser2" id="form1"
		method="post">
		<div class="layui-form-item">
		<input type="hidden" name="id" value="${user.id}">
			<label class="layui-form-label">用户名</label>
			<div class="layui-input-inline">
				<input type="text" name="username" required lay-verify="required"
					placeholder="用户名" autocomplete="off" class="layui-input"
					value="${user.username}">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">联系方式</label>
			<div class="layui-input-inline">
				<input type="text" name="telephone" required lay-verify="required"
					placeholder="联系方式" autocomplete="off" class="layui-input"
					value="${user.telephone}">
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn" lay-submit lay-filter="formDemo">保存修改</button>
				<button type="reset" class="layui-btn layui-btn-primary">重置</button>
			</div>
		</div>
	</form>
</body>
</html>
