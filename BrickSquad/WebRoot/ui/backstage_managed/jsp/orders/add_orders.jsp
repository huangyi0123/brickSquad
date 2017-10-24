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
	<script type="text/javascript" src="ui/backstage_managed/js/common.js"></script>
<script type="text/javascript">
$(function() {
				layui.use('form', function() {
					var form = layui.form();
				});
	var da = $("#oda").attr('val');
	dat = Format(new Date(da), "yyyy-MM-dd");
	$("#oda").val(dat);
});
</script>
</head>

<body>
<br>
<div style="padding-left: 120px;font-size:16;font-style: oblique;">${msg}订单信息</div>
	<br>
	<form class="layui-form" action="orders/updateOrders" id="form1">
	<input type="hidden" name="id" value="${orders.id }"> 
		<div class="layui-form-item">
			<label class="layui-form-label">买家姓名</label>
			<div class="layui-input-inline">
				<input type="text" name="buyId" required lay-verify="required"
					placeholder="买家姓名" autocomplete="off" class="layui-input"
					value="${ordersName.name }">
			</div>
		</div> 
		<div class="layui-form-item">
			<label class="layui-form-label">运单号</label>
			<div class="layui-input-inline">
				<input type="text" name="no" required lay-verify="required"
					placeholder="运单号" autocomplete="off" class="layui-input"
					value="${orders.no }">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">状态</label>
			<div class="layui-input-inline">
				<input type="text" name="stateId" required lay-verify="required"
					placeholder="状态" autocomplete="off" class="layui-input"
					value="${orders.stateId }">
			</div>
		</div>
		
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">订单生产日期</label>
				<div class="layui-input-inline">
					<input type="date" class="layui-input" name="productionDate"
						placeholder="yyyy-MM-dd" val="${orders.productionDate }" id="oda">
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">数量</label>
			<div class="layui-input-inline">
				<input type="text" name="number" required lay-verify="required"
					placeholder="数量" autocomplete="off" class="layui-input"
					value="${orders.number }">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">总额</label>
			<div class="layui-input-inline">
				<input type="text" name="money" required lay-verify="required"
					placeholder="总额" autocomplete="off" class="layui-input"
					value="${orders.money }">
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
