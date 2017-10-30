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

<!-- <script type="text/javascript">
	layui.use('form', function() {
		var form = layui.form(); //只有执行了这一步，部分表单元素才会修饰成功 
	});
</script>	 -->


<script type="text/javascript">
	$(function() {
		layui.use('form', function() {
			var form = layui.form();
		});
	});
</script>
</head>

<body>

	 <br>
	<div style="padding-left: 130px;font-size:20;">详细商品信息</div>
	<br>

		<div class="layui-form-item">
			<label class="layui-form-label">会员级别</label>
			<div class="layui-input-inline">
				<input type="text" name="memberShipTypeId" required lay-verify="required"
					placeholder="会员类型ID" autocomplete="off" class="layui-input"
					value="${memberShipApplicationExpand.tname}"
					readonly="readonly">
			</div>
		</div>
		
		<div class="layui-form-item">
			<label class="layui-form-label">申请人</label>
			<div class="layui-input-inline">
				<input type="text" name="perId" required lay-verify="required"
					placeholder="申请人ID" autocomplete="off" class="layui-input"
					value="${memberShipApplicationExpand.pname}"
					readonly="readonly">
			</div>
		</div>
		
		<div class="layui-form-item">
			<label class="layui-form-label">工作人员</label>
			<div class="layui-input-inline">
				<input type="text" name="userId" required lay-verify="required"
					placeholder="名称" autocomplete="off" class="layui-input"
					value="${memberShipApplicationExpand.username}"
					readonly="readonly">
			</div>
		</div>
		
		<div class="layui-form-item">
			<label class="layui-form-label">定金</label>
			<div class="layui-input-inline">
				<input type="text" name="deposit" required lay-verify="required"
					placeholder="名称" autocomplete="off" class="layui-input"
					value="${memberShipApplicationExpand.deposit}"
					readonly="readonly">
			</div>
		</div>
		
		<div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn" lay-submit lay-filter="formDemo"
					onclick="javascript:history.back(-1);">返回</button>
			</div>
		</div>
		
		
		
</body>
</html>
