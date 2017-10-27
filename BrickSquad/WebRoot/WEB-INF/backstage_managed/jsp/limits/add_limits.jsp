<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'add_article.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css"
	href="resource/plugins/layui/css/layui.css">
	
<script type="text/javascript"
	src="resource/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript"
	src="resource/plugins/layui/layui.js"></script>
<script type="text/javascript">
	layui.use('form', function() {
		var form = layui.form(); //只有执行了这一步，部分表单元素才会修饰成功 
	});
</script>
  </head>
  <body>
	<br>
	<div style="padding-left: 130px;font-size:16;">添加权限信息</div>
	<br>
   <form class="layui-form" action="limits/addLimits" id="form1">
    <div class="layui-form-item">
			<label class="layui-form-label">角色</label>
			<div class="layui-input-block">
				<select name="roleId" lay-filter="aihao">
					<option value=""></option>
					<option value="0">分店管理员</option>
					<option value="1">CEO</option>
					<option value="2">管理员</option>
				</select>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">表名</label>
			<div class="layui-input-inline">
				<input type="text" name="tablename" required lay-verify="required"
					placeholder="表名" autocomplete="off" class="layui-input">
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
