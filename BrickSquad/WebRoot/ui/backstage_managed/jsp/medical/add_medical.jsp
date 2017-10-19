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
	href="ui/backstage_managed/plugins/layui/css/layui.css" media="all">

<script type="text/javascript"
	src="ui/backstage_managed/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript"
	src="ui/backstage_managed/plugins/layui/layui.js"></script>
	<script type="text/javascript"
	src="ui/backstage_managed/plugins/layui/lay/modules/laydate.js"></script>
<script type="text/javascript">
	layui.use('form', function() {
		var form = layui.form(); //只有执行了这一步，部分表单元素才会修饰成功 
		//执行一个laydate实例
		laydate.render({
			elem : '#test1' //指定元素
		});
	});
	
</script>
</head>
<body>
	<form class="layui-form" action="medical/addMedical" id="form"
		method="post">
		<div class="layui-form-item">
			<label class="layui-form-label">老人ID</label>
			<div class="layui-input-inline">
				<input type="text" name="perId" required lay-verify="required"
					placeholder="" autocomplete="off" class="layui-input">
			</div>
		</div>
		
		<div class="layui-form-item">
			<label class="layui-form-label">日期</label>
			<div class="layui-input-inline">
				<input type="date" name="inspectionDate" required lay-verify="required"
					placeholder="" autocomplete="off" class="layui-input">
			</div>
		</div>
		
		
		<!-- <div class="layui-form-item">
			<label class="layui-form-label">检查日期</label>
			<div class="layui-input-inline logstart_time">
			<input type="date" name="inspectionDate" >
				<input id="test" name="inspectionDate" class="layui-input" placeholder="检查日期"
					onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
			</div>
		</div> -->
		<div class="layui-form-item">
			<label class="layui-form-label">检查类型</label>

			<div class="layui-input-inline">
				<input type="text" name="typeId" required lay-verify="required"
					placeholder="检查类型" autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">检查医院</label>

			<div class="layui-input-inline">
				<input type="text" name="hospital" required lay-verify="required"
					placeholder="检查医院" autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">病历详情</label>

			<div class="layui-input-inline">
				<input type="text" name="content" required lay-verify="required"
					placeholder="病历详情" autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">主治医师</label>

			<div class="layui-input-inline">
				<input type="text" name="attendingSurgeon" required
					lay-verify="required" placeholder="主治医师" autocomplete="off"
					class="layui-input">
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
