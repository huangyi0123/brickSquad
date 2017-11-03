<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'add_type.jsp' starting page</title>

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
	var data="";
	$(".error").each(function() {
		data=data+"<br>"+$(this).val();
	});
	if (data!="") {
		layui.use('layer', function() {
			var layer = layui.layer;
			var msg = data;
			layer.msg(msg);
		});
	}
});
layui.use('form', function() {
		var form = layui.form();
		//得到Type中的分店信息
		var branch = '${branch}';
		branch=JSON.parse(branch);
		findAll(branch, "#branchid");
		form.render('select', 'branchid');
		//得到role表中所有角色信息
		var role = '${role}';
		role=JSON.parse(role);
		findAll(role, "#roleid");
		form.render('select', 'roleid');
		//
		
		
});
</script>

</head>

<body>
	<h1 style="margin-left: 120px">添加客户信息</h1>
	<form class="layui-form" action="user/toAddJumpUser" id="form1"method="post">
		<div class="layui-form-item">
			<label class="layui-form-label">用户名</label>
			<div class="layui-input-inline">
				<input type="text" name="username" required lay-verify="required"
					placeholder="用户名" autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">用户密码</label>
			<div class="layui-input-inline">
				<input type="password" name="password" required lay-verify="required"
					placeholder="用户密码" autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">联系方式</label>
			<div class="layui-input-inline">
				<input type="text" name="telephone" required lay-verify="required"
					placeholder="联系方式" autocomplete="off" class="layui-input">
			</div>
		</div>
			<div class="layui-form-item">
			<label class="layui-form-label">角色类型：</label>
			<div class="layui-input-inline">
				<select lay-filter="roleid" name="roleId" id="roleid">
					<option value="">选择角色</option>
				</select>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">所属分店：</label>
			<div class="layui-input-inline">
				<select lay-filter="branchid" name="branchId" id="branchid">
					<option value="">选择分店</option>
				</select>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn" lay-submit lay-filter="formDemo">提交</button>
				<button type="reset" class="layui-btn layui-btn-primary">重置</button>
			</div>
		</div>
	</form>
	<c:forEach items="${errors }" var="error">
   		<input class="error" value="${error.defaultMessage }" type="hidden">
   	</c:forEach>
</body>
</html>
