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
</head>

<body>
	<br>
	<div style="padding-left: 150px;font-size:16;">${msg}类别信息</div>
	<br>
	<form class="layui-form" action="business/${url }" id="form1" method="post">
		<input type="hidden" name="id" value="${business.id }">
		<div class="layui-form-item">
			<label class="layui-form-label">商家名称：</label>
			<div class="layui-input-inline">
				<input type="text" name="name" required lay-verify="required"
					placeholder="商家名称" autocomplete="off" class="layui-input" value="${business.name}">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">身份证号：</label>
			<div class="layui-input-inline">
				<input type="text" name="idcard" required lay-verify="required"
					placeholder="身份证号" autocomplete="off" class="layui-input" value="${business.idcard }">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">店铺名称：</label>
			<div class="layui-input-inline">
				<input type="text" name="shopname" required lay-verify="required"
					placeholder="店铺名称" autocomplete="off" class="layui-input" value="${business.shopname }">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">商品来源：</label>
			<div class="layui-input-inline">
				<input type="text" name="shopMaterialPath" required
					lay-verify="required" placeholder="商品来源" autocomplete="off"
					class="layui-input" value="${business.shopMaterialPath }">
			</div>
		</div>
		<div class="layui-form-item">
			<button type="submit" style="margin-left: 120px;"
				class="layui-btn layui-btn-primary">提交</button>
			<button type="reset" style="margin-left: 30px;"
				class="layui-btn layui-btn-primary">重置</button>

		</div>
	</form>
</body>
</html>
