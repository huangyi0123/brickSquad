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

<link rel="stylesheet" type="text/css" href="resource/plugins/layui/css/layui.css">

<script type="text/javascript" src="resource/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="resource/plugins/layui/layui.js"></script>
<script type="text/javascript" src="resource/plugins/layui/lay/modules/laydate.js"></script>
<script type="text/javascript">
	$(function() {
		$.ajax({
			url : 'type/findAllType',
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
</script>

</head>

<body>
	<br>
	<div style="padding-left: 150px;font-size:16;">${msg}类别信息</div>
	<br>
	<form class="layui-form" action="type/${url }" id="form1" method="post">
		<input type="hidden" name="id" value="${type.id }">
		<div class="layui-form-item">
			<label class="layui-form-label">名称</label>
			<div class="layui-input-inline">
				<input type="text" name="name" required lay-verify="required" placeholder="名称"
					autocomplete="off" class="layui-input" value="${type.name }">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">搜索选择框</label>
			<div class="layui-input-inline">
				<select  name="parentId" id="parament" val=${type.parentId }  lay-filter="test" lay-search="">
					<option value="">直接选择或搜索选择</option>
				</select>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
				<button type="reset" class="layui-btn layui-btn-primary">重置</button>
			</div>
		</div>
	</form>
	
	<c:forEach items="${errors }" var="error">
   		<input class="error" value="${error.defaultMessage }" type="hidden">
   	</c:forEach>
</body>
</html>
