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
		layui.use('form', function() {
			var form = layui.form();
		});
		var da = $("#rda").attr('val');
		dat = Format(new Date(da), "yyyy-MM-dd");
		$("#rda").val(dat);
		var centent = $("#centent").attr('val');
		console.log(centent);
		$("#centent").val(centent);
	});
</script>
</head>
<body>
	<br>
	<div style="padding-left: 200px">
		<br>
		<div style="padding-left: 25px;font-size:20;">老人客户沟通信息</div>
		<br>
		<br>
		<div class="layui-form-item">
			<label class="layui-form-label">老人姓名：</label>
			<div class="layui-input-inline">
				<input type="text" name="goal" required lay-verify="required"
					autocomplete="off" class="layui-input"
					value="${rapportExpand.name}" readonly="readonly"
					style="border: none;background: #F3F3F4;">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">客户姓名：</label>
			<div class="layui-input-inline">
				<input type="text" name="goal" required lay-verify="required"
					autocomplete="off" class="layui-input"
					value="${rapportExpand.username}" readonly="readonly"
					style="border: none;background: #F3F3F4;">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">沟通目标：</label>
			<div class="layui-input-inline">
				<input type="text" name="goal" required lay-verify="required"
					autocomplete="off" class="layui-input"
					value="${rapportExpand.goal}" readonly="readonly"
					style="border: none;background: #F3F3F4;">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">沟通日期：</label>
			<div class="layui-input-inline">
				<input type="text" name="goal" required lay-verify="required"
					id="rda" autocomplete="off" class="layui-input"
					placeholder="yyyy-MM-dd" val="${rapportExpand.rapportDate}"
					readonly="readonly" style="border: none;background: #F3F3F4;">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">沟通时长：</label>
			<div class="layui-input-inline">
				<input type="text" name="goal" required lay-verify="required"
					autocomplete="off" class="layui-input"
					value="${rapportExpand.period}" readonly="readonly"
					style="border: none;background: #F3F3F4;">
			</div>
		</div>
		<div class="layui-form-item layui-form-text">
			<label class="layui-form-label">沟通内容：</label>
			<div class="layui-input-block">
				<textarea name="content" class="layui-textarea" id="centent"
					val="${rapportExpand.content }" readonly="readonly"
					style="border: none;background: #F3F3F4;"></textarea>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn" lay-submit lay-filter="formDemo"
					onclick="javascript:history.back(-1);">返回</button>
			</div>
		</div>
	</div>
</body>
</html>