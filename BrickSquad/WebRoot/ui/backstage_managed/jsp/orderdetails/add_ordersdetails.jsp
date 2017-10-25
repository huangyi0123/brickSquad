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
	<div style="padding-left: 130px;font-size:16;">添加订单项信息</div>
	<br>
	<form class="layui-form" action="orderDetails/${url }" id="form1">
		<div class="layui-form-item">
			<label class="layui-form-label">订单项ID</label>
			<div class="layui-input-inline">
				<input type="text" name="id" required lay-verify="required"
					placeholder="订单项ID" autocomplete="off" class="layui-input"
					value="${orderDetails.id }">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">商品ID</label>
			<div class="layui-input-inline">
				<input type="text" name="articleId" required lay-verify="required"
					placeholder="商品ID" autocomplete="off" class="layui-input"
					value="${orderDetails.articleId }">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">订单ID</label>
			<div class="layui-input-inline">
				<input type="text" name="ordersId" required lay-verify="required"
					placeholder="订单ID" autocomplete="off" class="layui-input"
					value="${orderDetails.ordersId }">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">商品数量</label>
			<div class="layui-input-inline">
				<input type="text" name="number" required lay-verify="required"
					placeholder="商品数量" autocomplete="off" class="layui-input"
					value="${orderDetails.number }">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">小计</label>
			<div class="layui-input-inline">
				<input type="text" name="subtotal" required lay-verify="required"
					placeholder="小计" autocomplete="off" class="layui-input"
					value="${orderDetails.subtotal }">
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
