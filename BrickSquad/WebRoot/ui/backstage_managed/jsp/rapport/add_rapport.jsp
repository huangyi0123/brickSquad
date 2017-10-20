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
<script type="text/javascript">
	layui.use('form', function() {
		var form = layui.form(); //只有执行了这一步，部分表单元素才会修改成功 
	});
</script>
</head>
<body>
	<br>
	<form class="layui-form" action="rapport/insertRapport" id="form1" method="post">
	<div class="layui-form-item">
			<label class="layui-form-label">ID</label>
			<div class="layui-input-inline">
				<input type="text" name="id" required lay-verify="required"
					placeholder="老人姓名" autocomplete="off" class="layui-input">
			</div>
		</div> 
	<div class="layui-form-item">
			<label class="layui-form-label">老人ID</label>
			<div class="layui-input-inline">
				<input type="text" name="perId" required lay-verify="required"
					placeholder="老人姓名" autocomplete="off" class="layui-input">
			</div>
		</div> 

		<div class="layui-form-item">
			<label class="layui-form-label">客户ID</label>
			<div class="layui-input-inline">
				<input type="text" name="userId" required lay-verify="required"
					placeholder="客户姓名" autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">沟通目标</label>
			<div class="layui-input-inline">
				<input type="text" name="goal" required lay-verify="required"
					placeholder="沟通目标" autocomplete="off" class="layui-input">
			</div>
		</div>
		
		<div class="layui-form-item">
    <div class="layui-inline">
      <label class="layui-form-label">沟通日期</label>
      <div class="layui-input-inline">
        <input type="date" class="layui-input" name="rapportDate" placeholder="yyyy-MM-dd">
      </div>
    </div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">沟通时长</label>
			<div class="layui-input-inline">
				<input type="text" name="period" required lay-verify="required"
					placeholder="沟通时长" autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-form-item layui-form-text">
			<label class="layui-form-label">沟通内容</label>
			<div class="layui-input-block">
				<textarea name="content" placeholder="请输入内容" class="layui-textarea"></textarea>
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
