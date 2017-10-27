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
	href="resource/plugins/layui/css/layui.css">

<script type="text/javascript"
	src="resource/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript"
	src="resource/plugins/layui/layui.js"></script>
<script type="text/javascript">
	layui.use('form', function() {
		var form = layui.form(); //只有执行了这一步，部分表单元素才会修饰成功 
	});
		$(function() {
		$.ajax({
			url : 'region/findAllRegion',
			success : function(data) {
				data = JSON.parse(data);
				var id = $("#parament").attr('val');
				
				$(data).each(
						function() {
							if (id == this.id) {
								$("#parament").append(
										'<option value="'+this.id+'"  selected="selected">'
												+ this.name + '</option>');
							} else {
								$("#parament").append(
										'<option value="'+this.id+'">'
												+ this.name + '</option>');
							}

						});
				layui.use('form', function() {
					var form = layui.form();
				});
			}
		});
	});
</script>
</head>
  
  <body>
  <br>
	<div style="padding-left: 160px;font-size:16;">区域信息</div>
	<br>
 	<form action="region/${url }" id="form1" method="post">
 		<div class="layui-form-item">
    <label class="layui-form-label">区域id：</label>
    <div class="layui-input-inline">
      <input type="text" name="id" required  lay-verify="required" placeholder="请输入名称" autocomplete="off" class="layui-input"
       value="${region.id} " >
    </div>
  </div>
	<div class="layui-form-item">
    <label class="layui-form-label">区域名称：</label>
    <div class="layui-input-inline">
      <input type="text" name="name" required  lay-verify="required" placeholder="请输入名称" autocomplete="off" class="layui-input"
       value="${region.name} " >
    </div>
  </div>
  	<div class="layui-form-item">
    <label class="layui-form-label">区域级别：</label>
    <div class="layui-input-inline">
      <input type="text" name="level" required  lay-verify="required" placeholder="请输入级别" autocomplete="off" class="layui-input"
      value = "${region.level}" >
    </div>
  </div>
   </div>
  	<div class="layui-form-item">
    <label class="layui-form-label">输入0或1：</label>
    <div class="layui-input-inline">
      <input type="text" name="isleaf" required  lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input"
       value="${region.isleaf} ">
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
