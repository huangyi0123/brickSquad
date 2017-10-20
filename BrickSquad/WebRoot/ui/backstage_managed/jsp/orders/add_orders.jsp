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
<script type="text/javascript">
	layui.use('form', function() {
		var form = layui.form(); //只有执行了这一步，部分表单元素才会修改成功 
	});
</script>
</head>

<body>
<br>
	<form class="layui-form" action="#" id="form1">
		<div class="layui-form-item">
			<label class="layui-form-label">运单号</label>
			<div class="layui-input-inline">
				<input type="text" name="title" required lay-verify="required"
					placeholder="运单号" autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">状态</label>
			<div class="layui-input-inline">
				<input type="text" name="title" required lay-verify="required"
					placeholder="状态" autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">订单生产日期</label>
			<div class="layui-input-inline">
				<input type="date" name="title" required lay-verify="required"
					placeholder="订单生产日期" autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">数量</label>
			<div class="layui-input-inline">
				<input type="text" name="title" required lay-verify="required"
					placeholder="数量" autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">总额</label>
			<div class="layui-input-inline">
				<input type="text" name="title" required lay-verify="required"
					placeholder="总额" autocomplete="off" class="layui-input">
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
