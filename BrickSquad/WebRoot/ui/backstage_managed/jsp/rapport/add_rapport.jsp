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
<script type="text/javascript"
	src="ui/backstage_managed/plugins/layui/lay/modules/laydate.js"></script>
<script type="text/javascript" src="ui/backstage_managed/js/common.js"></script>
<script type="text/javascript">
	$(function() {
		$.ajax({
			url : 'rapport/findAllUserAndPersonalInformation',
			success : function(data) {
				data = JSON.parse(data);
				var user = data[0].user;
				var personalinformation = data[0].personalInformation;
				findAll(personalinformation, "#personalInformationId");
				findAll(user, "#userId");
				
				layui.use('form', function() {
					var form = layui.form();
				});
			}
		});
		var da = $("#rda").attr('val');
		dat = Format(new Date(da), "yyyy-MM-dd");
		$("#rda").val(dat);
		var centent=$("#centent").attr('val');
		console.log(centent);
		$("#centent").val(centent);
	});
	
</script>
</head>
<body>
	<br>
	<h1>${msg}类别信息</h1>
	<form class="layui-form" action="rapport/${url }" id="form1"
		method="post">
		<%-- <input type="hidden" name="id" value="${rapport.id }"> --%>
		<div class="layui-form-item">
			<label class="layui-form-label">ID</label>
			<div class="layui-input-inline">
				<input type="text" name="id" required lay-verify="required"
					placeholder="ID" autocomplete="off" class="layui-input"
					value="${rapport.id}">
			</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">老人姓名</label>
			<div class="layui-input-inline">
				<select name="perId" id="personalInformationId"
					val="${rapport.perId}" lay-search="">
					<option value="">直接选择或搜索选择</option>
				</select>
			</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">客户姓名</label>
			<div class="layui-input-inline">
				<select name="userId" id="userId" val="${rapport.perId}"
					lay-search="">
					<option value="">直接选择或搜索选择</option>
				</select>
			</div>
		</div>


		<div class="layui-form-item">
			<label class="layui-form-label">沟通目标</label>
			<div class="layui-input-inline">
				<input type="text" name="goal" required lay-verify="required"
					placeholder="沟通目标" autocomplete="off" class="layui-input"
					value="${rapport.goal}">
			</div>
		</div>



		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">沟通日期</label>
				<div class="layui-input-inline">
					<input type="date" class="layui-input" name="rapportDate"
						placeholder="yyyy-MM-dd" val="${rapport.rapportDate }" id="rda">
				</div>
			</div>
		</div>


		<div class="layui-form-item">
			<label class="layui-form-label">沟通时长</label>
			<div class="layui-input-inline">
				<input type="text" name="period" required lay-verify="required"
					placeholder="沟通时长" autocomplete="off" class="layui-input"
					value="${rapport.period}">
			</div>
		</div>
		<div class="layui-form-item layui-form-text">
			<label class="layui-form-label">沟通内容</label>
			<div class="layui-input-block">
				<textarea name="content" placeholder="请输入内容" class="layui-textarea" id="centent" val="${rapport.content }"></textarea>
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
