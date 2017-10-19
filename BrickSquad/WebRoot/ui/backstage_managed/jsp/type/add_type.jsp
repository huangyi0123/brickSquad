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
<script type="text/javascript">
	layui.use('form', function() {
		var form = layui.form(); //只有执行了这一步，部分表单元素才会修饰成功 
	});
	$(function() {
		$.ajax({
			url:'type/findAllType',
			success:function(data){
				data=JSON.parse(data);
				$(data).each(function() {
					console.log(this);
					$("#parament").append('<option value="'+this.id+'">'+this.name+'</option>');
				});
			}
		});
	})
</script>

</head>

<body>
	<form class="layui-form" action="type/insertType" id="form1">
		<div class="layui-form-item">
			<label class="layui-form-label">名称</label>
			<div class="layui-input-inline">
				<input type="text" name="name" required lay-verify="required"
					placeholder="名称" autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">单行选择框</label>
			<div class="layui-input-block">
				<select name="parentId" id="parament" lay-filter="aihao">
					<option value=""></option>
					<option value="0">1作</option>
				</select>
			</div>
		</div>
		<div class="layui-form-item">
		  <button type="submit" class="btn">提交</button>
		</div>
	</form>
</body>
</html>
