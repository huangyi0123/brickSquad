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
	<div style="padding-left: 120px;font-size:16;">添加老人亲属关系信息</div>
	<br>
   <form class="layui-form" action="relatives/AddRelatives" id="form1">
		<div class="layui-form-item">
			<label class="layui-form-label">老人id</label>
			<div class="layui-input-inline">
				<input type="text" name="perId" required lay-verify="required"
					placeholder="老人id" autocomplete="off" class="layui-input">
			</div>
		</div>
		
		<div class="layui-form-item">
			<label class="layui-form-label">姓名</label>
			<div class="layui-input-inline">
				<input type="text" name="name" required lay-verify="required"
					placeholder="活动类型id" autocomplete="off" class="layui-input">
			</div>
		</div>
		
		
		<div class="layui-form-item">
			<label class="layui-form-label">联系电话</label>
			<div class="layui-input-inline">
				<input type="text" name="telephone" required lay-verify="required"
					placeholder="联系电话" autocomplete="off" class="layui-input">
			</div>
		</div>
		
		<div class="layui-form-item">
			<label class="layui-form-label">地址id</label>
			<div class="layui-input-inline">
				<input type="text" name="addressId" required lay-verify="required"
					placeholder="地址id" autocomplete="off" class="layui-input">
			</div>
		</div>
	
		<div class="layui-form-item">
			<label class="layui-form-label">关系ID</label>
			<div class="layui-input-inline">
				<input type="text" name="relationshipId" required lay-verify="required"
					placeholder="关系ID" autocomplete="off" class="layui-input">
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
