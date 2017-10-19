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
  <form action="guidance/insertGuidance" method="post">
 	  <div class="layui-form-item">
    <label class="layui-form-label">指导日期：</label>
    <div class="layui-input-block">
      <input type="text" name="guidanceDate" required  lay-verify="required" placeholder="请输入名称" autocomplete="off" class="layui-input">
    </div>
  </div>
 	<div class="layui-form-item layui-form-text">
    <label class="layui-form-label">主要疾病</label>
    <div class="layui-input-block">
      <textarea name="disease" placeholder="请输入详细地址" class="layui-textarea"></textarea>
    </div>
  </div>
  	<div class="layui-form-item layui-form-text">
    <label class="layui-form-label">评估意见</label>
    <div class="layui-input-block">
      <textarea name="assessment" placeholder="请输入详细地址" class="layui-textarea"></textarea>
    </div>
  </div>
  <div class="layui-form-item layui-form-text">
    <label class="layui-form-label">专家建议</label>
    <div class="layui-input-block">
      <textarea name="suggest" placeholder="请输入详细地址" class="layui-textarea"></textarea>
    </div>
  </div>
   <div class="layui-form-item">
    <label class="layui-form-label">老人ID：</label>
    <div class="layui-input-block">
      <input type="text" name="perId" required  lay-verify="required" placeholder="请输入名称" autocomplete="off" class="layui-input">
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