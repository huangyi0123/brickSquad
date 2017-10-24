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

<title>My JSP 'add_business.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css"
	href="ui/backstage_managed/plugins/layui/css/layui.css">

<script type="text/javascript"
	src="ui/backstage_managed/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript"
	src="ui/backstage_managed/plugins/layui/layui.js"></script>
<script type="text/javascript"
	src="ui/backstage_managed/plugins/layui/lay/modules/laydate.js"></script>
<script type="text/javascript" src="ui/backstage_managed/js/common.js"></script>
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
<div style="padding-left: 70px;">
	<br>
	<div style="padding-left: 120px;font-size:16;font-style: oblique;">添加角色信息</div>
	<br>
	<form class="layui-form" action="role/${url }" id="form1" method="post">
		<input type="hidden" name="id" value="${role.id}"> 
	<div class="layui-form-item">
			<label class="layui-form-label">角色名称</label>
			<div class="layui-input-inline">
				<input type="text" name="name" required lay-verify="required"
					placeholder="角色名称" autocomplete="off" class="layui-input"
					value="${role.name }">
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
				<button type="reset" class="layui-btn layui-btn-primary">重置</button>
			</div>
		</div>
	</form>
	</div>
</body>
</html>
