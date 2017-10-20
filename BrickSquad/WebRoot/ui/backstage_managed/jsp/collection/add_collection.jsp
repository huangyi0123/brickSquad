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
		var form = layui.form(); //只有执行了这一步，部分表单元素才会修饰成功 
	});
</script>
<script>
	layui.use('laydate', function() {
		var laydate = layui.laydate;

		//执行一个laydate实例
		laydate.render({
			elem : '#test1' //指定元素
		});
	});
</script>
</head>

<body>
	<form class="layui-form" style="margin-right: 30px;margin-left: 30px;"
		action="healthRecords/insertCollection" id="form1" method="post">
		<div class="layui-form-item" style="margin-top: 50px;">
			<label class="layui-form-label" style="width: 100px;">老人ID：</label>
			<div class="layui-input-inline">
				<input type="text" name="perId" required lay-verify="required"
					placeholder="老人ID" autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-form-item" style="width: 450px;">
			<label class="layui-form-label" style="width: 100px;">收藏商品ID：</label>
			<div class="layui-input-inline">
				<input type="text" name="articleId" required lay-verify="required"
					placeholder="收藏商品ID" autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label" style="width: 100px;">收藏日期：</label>
			<div class="layui-input-inline logstart_time">
				<input class="layui-input" placeholder="收藏日期"
					onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
			</div>
		</div>
		<div class="layui-form-item">
			<button type="submit" style="margin-left: 140px;"
				class="layui-btn layui-btn-primary">提交</button>
			<button type="reset" style="margin-left: 30px;"
				class="layui-btn layui-btn-primary">重置</button>

		</div>
	</form>
</body>
</html>
