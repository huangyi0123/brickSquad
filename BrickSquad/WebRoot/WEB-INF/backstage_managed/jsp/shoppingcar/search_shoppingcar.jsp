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
	href="resource/plugins/layui/css/layui.css">

<script type="text/javascript"
	src="resource/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript"
	src="resource/plugins/layui/layui.js"></script>
<script type="text/javascript"
	src="resource/plugins/layui/lay/modules/laydate.js"></script>
<script type="text/javascript" src="resource/js/common.js"></script>
<script type="text/javascript">
	$(function() {
		layui.use('form', function() {
			var form = layui.form();
		});
		var da = $("#rda").attr('val');
		dat = Format(new Date(da), "yyyy-MM-dd");
		$("#rda").val(dat);
	});
</script>
</head>
<body>
	<br>
	<div style="padding-left: 200px">
		<br>
		<div style="padding-left: 25px;font-size:20;">购物车信息</div>
		<br>
		<br>
		<div class="layui-form-item">
			<label class="layui-form-label">买家姓名：</label>
			<div class="layui-input-inline">
				<input type="text" name="goal" required lay-verify="required"
					autocomplete="off" class="layui-input"
					value="${shoppingCarExpand.name}" readonly="readonly"
					style="border: none;background: #F3F3F4;">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">商品名称：</label>
			<div class="layui-input-inline">
				<input type="text" name="goal" required lay-verify="required"
					autocomplete="off" class="layui-input"
					value="${shoppingCarExpand.aname}" readonly="readonly"
					style="border: none;background: #F3F3F4;">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">商品数量：</label>
			<div class="layui-input-inline">
				<input type="text" name="goal" required lay-verify="required"
					autocomplete="off" class="layui-input"
					value="${shoppingCarExpand.number}" readonly="readonly"
					style="border: none;background: #F3F3F4;">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">生成时间：</label>
			<div class="layui-input-inline">
				<input type="text" name="goal" required lay-verify="required"
					id="rda" autocomplete="off" class="layui-input"
					placeholder="yyyy-MM-dd" val="${shoppingCarExpand.date}"
					readonly="readonly" style="border: none;background: #F3F3F4;">
			</div>
		</div>
		<div class="layui-form-item">
				<button class="layui-btn" lay-submit lay-filter="formDemo"
				style="margin-left: 25px;"
					onclick="javascript:history.back(-1);" >返回</button>
		</div>
	</div>
</body>
</html>