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
	<div style="padding-left: 130px;font-size:22;">查看商家详细信息</div>
	<br>
	
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
			<div class="layui-input-block">
				<button class="layui-btn" lay-submit lay-filter="formDemo"
					onclick="javascript:history.back(-1);">返回</button>
			</div>
		</div>
		
		
		
</body>
</html>
