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

<title>My JSP 'add_membershipApplication.jsp' starting page</title>

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
	layui.use('form', function() {
		var form = layui.form(); //只有执行了这一步，部分表单元素才会修饰成功 
	});
</script>
</head>

<body>
	<br>
	<div style="padding-left: 130px;font-size:16;">添加会员申请信息</div>
	<br>
	<form class="layui-form" action="memberShipApplication/${url}" id="form1" method="post">
		<div class="layui-form-item">
			<label class="layui-form-label">会员类型ID</label>
			<div class="layui-input-inline">
				<input type="text" name="memberShipTypeId" required lay-verify="required"
					placeholder="会员类型ID" autocomplete="off" class="layui-input"
					value="${memberShipApplication.memberShipTypeId }">
			</div>
		</div>
		
		<div class="layui-form-item">
			<label class="layui-form-label">申请人ID</label>
			<div class="layui-input-inline">
				<input type="text" name="perId" required lay-verify="required"
					placeholder="申请人ID" autocomplete="off" class="layui-input"
					value="${memberShipApplication.perId}">
			</div>
		</div>
		
		<div class="layui-form-item">
			<label class="layui-form-label">工作人员ID</label>
			<div class="layui-input-inline">
				<input type="text" name="userId" required lay-verify="required"
					placeholder="名称" autocomplete="off" class="layui-input"
					value="${memberShipApplication.userId}">
			</div>
		</div>
		
		<div class="layui-form-item">
			<label class="layui-form-label">定金</label>
			<div class="layui-input-inline">
				<input type="text" name="deposit" required lay-verify="required"
					placeholder="名称" autocomplete="off" class="layui-input"
					value="${memberShipApplication.deposit}">
			</div>
		</div>
		
		
		<div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
  </div>
			
					
				
			</div>
		</div>
	</form>
</body>
</html>
