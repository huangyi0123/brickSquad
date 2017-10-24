<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
<script type="text/javascript">
	layui.use('form', function() {
		var form = layui.form(); //只有执行了这一步，部分表单元素才会修饰成功 
	});
</script>
</head>
  
  <body>
  	<br>
	<div style="padding-left: 150px;font-size:16;">添加买家信息</div>
	<br>
  <form action="buyers/insertBuyres" method="post">
 	<div class="layui-form-item">
    <label class="layui-form-label">int积分：</label>
    <div class="layui-input-inline">
      <input type="text" name="currentIntegral" required  lay-verify="required" placeholder="请输入名称" autocomplete="off" class="layui-input">
    </div>
  </div>
  	<div class="layui-form-item">
    <label class="layui-form-label">int历史积分：</label>
    <div class="layui-input-inline">
      <input type="text" name="historicalIntegral" required  lay-verify="required" placeholder="请输入级别" autocomplete="off" class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">int等级：</label>
    <div class="layui-input-inline">
      <input type="text" name="grade" required  lay-verify="required" placeholder="请输入名称" autocomplete="off" class="layui-input">
    </div>
  </div>

 	<div class="layui-form-item layui-form-text">
    <label class="layui-form-label">请输入地址</label>
    <div class="layui-input-block">
      <textarea name="deliveryAddressId" placeholder="请输入详细地址" class="layui-textarea"></textarea>
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
