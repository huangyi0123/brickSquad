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
<script type="text/javascript"
	src="resource/plugins/layui/lay/modules/laydate.js"></script>
<script type="text/javascript">
	$(function() {
		
		var  testdata = '${reply}';
		console.log(testdata);
		$.ajax({
			url : 'rated/findAllRated',
			success : function(data) {
				data = JSON.parse(data);
				console.log(data);
				var id = $("#paramentratedId").attr('val');
				console.log(id);
				$(data).each(
						function() {
							if (id == this.id) {
								$("#paramentratedId").append(
										'<option value="'+this.id+'"  selected="selected">'
												+ this.id+ '</option>');
							} else {
								$("#paramentratedId").append(
										'<option value="'+this.id+'">'
												+ this.id + '</option>');
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
	<div style="padding-left: 150px;font-size:16;">${msg}回复信息</div>
	<br>
	<form class="layui-form" action="reply/${url }" id="form" method="post">
<input type="hidden" name="id" value="${reply.id }">
	<div class="layui-form-item">
			<label class="layui-form-label">评论ID</label>
			<div class="layui-input-inline">
				<select name="ratedId" val="${reply.ratedId }" required lay-verify="required" id="paramentratedId"
					lay-search="">
					<option value="">直接选择或搜索选择</option>
				</select>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">回复内容</label>
			<div class="layui-input-inline">
				<input type="text" value="${reply.centent }" name="centent" required lay-verify="required"
					placeholder="回复内容" autocomplete="off" class="layui-input">
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
