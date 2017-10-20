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

<link rel="stylesheet" type="text/css"
	href="ui/backstage_managed/plugins/layui/css/layui.css">

<script type="text/javascript"
	src="ui/backstage_managed/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript"
	src="ui/backstage_managed/plugins/layui/layui.js"></script>
<script type="text/javascript"
	src="ui/backstage_managed/plugins/layui/lay/modules/laydate.js"></script>
<script type="text/javascript">
	$(function() {
		$.ajax({
			url : 'type/findAllType',
			success : function(data) {
				data = JSON.parse(data);
				var id = $("#parament").attr('val');
				console.log(id);
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
	})
</script>

</head>

<body>
	<h1>${msg}类别信息</h1>
	<form class="layui-form" action="type/${url }" id="form1"
		method="post">
		<input type="hidden" name="id" value="${type.id }">
		<div class="layui-form-item">
			<label class="layui-form-label">名称</label>
			<div class="layui-input-inline">
				<input type="text" name="name" required lay-verify="required"
					placeholder="名称" autocomplete="off" class="layui-input"
					value="${type.name }">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">搜索选择框</label>
			<div class="layui-input-inline">
				<select name="parentId" id="parament" val=${type.parentId } lay-search="">
					<option value="">直接选择或搜索选择</option>
				</select>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
				<button type="reset" class="layui-btn layui-btn-primary">重置</button>
			</div>
		</div>
	</form>
</body>
</html>
