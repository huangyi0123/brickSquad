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

<title>My JSP 'add_membershipApplication.jsp' starting page</title>

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
<script type="text/javascript" src="resource/js/common.js"></script>

<script type="text/javascript">

$(function() {
		$.ajax({
		url : 'memberShipApplication/findAllTypeAndUserAndPersonalInformation',
		success : function(data) {
			data = JSON.parse(data);
			var type = data[0].type;
			var user = data[0].user;
			var per = data[0].per;
			findAll(type, "#memberShipTypeId");//(impl中的list集合名，“#”中为本jsp中回显名)
			findAll(user, "#userId");
			findAll(per, "#perId");
			layui.use('form', function() {
				var form = layui.form();

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
	<div style="padding-left: 130px;font-size:16;">${msg }会员申请信息</div>
	<br>
	<form class="layui-form" action="memberShipApplication/${url}" id="form1" method="post">
	<input type="hidden" name="id"  value="${memberShipApplication.id}" > 
		<div class="layui-form-item" style="width: 300px;">
			<label class="layui-form-label">会员类型</label>
			<div class="layui-input-block">
				<select name="memberShipTypeId" id="memberShipTypeId"  lay-filter="aihao" val="${memberShipApplication.memberShipTypeId }">
					<option value=""></option>
				</select>
			</div>
		</div>
		
		
		
		
		<div class="layui-form-item" style="width: 300px;">
			<label class="layui-form-label">申请人</label>
			<div class="layui-input-block">
				<select name="perId" id="perId"  val="${memberShipApplication.perId }">
					<option value=""></option>
				</select>
			</div>
		</div>
	
		

		<div class="layui-form-item" style="width: 300px;">
			<label class="layui-form-label">审核人员</label>
			<div class="layui-input-block">
				<select name="userId" id="userId"  val="${memberShipApplication.userId}">
					<option value=""></option>
				</select>
			</div>
		</div>
		
		
		
		<div class="layui-form-item">
			<label class="layui-form-label">定金</label>
			<div class="layui-input-inline">
				<input type="text" name="deposit" required lay-verify="required"
					placeholder="金额" autocomplete="off" class="layui-input"
					value="${memberShipApplication.deposit}">
			</div>
		</div>
		
		
		<div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
  </div>		
			
	</form>
	
	
	<c:forEach items="${errors}" var="error">
   		<input class="error" value="${error.defaultMessage}" type="hidden">
   	</c:forEach>
</body>
</html>
