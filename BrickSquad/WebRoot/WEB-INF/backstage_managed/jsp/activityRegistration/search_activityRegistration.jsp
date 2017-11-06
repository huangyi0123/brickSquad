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
	href="resource/plugins/layui/css/layui.css">

<script type="text/javascript"
	src="resource/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript"
	src="resource/plugins/layui/layui.js"></script>
<script type="text/javascript"
	src="resource/plugins/layui/lay/modules/laydate.js"></script>
<script type="text/javascript" src="resource/js/common.js"></script>

<!-- <script type="text/javascript">
	layui.use('form', function() {
		var form = layui.form(); //只有执行了这一步，部分表单元素才会修饰成功 
	});
</script>	 -->


<script type="text/javascript">
			$(function() {
				$.ajax({
				url : 'activities/findAllTypeAndUser',
				success : function(data) {
					data = JSON.parse(data);
					var type = data[0].type;
					var user = data[0].user;
					findAll(type, "#typeId");
					findAll(user, "#userId");
					layui.use('form', function() {
						var form = layui.form();

								});
						layui.use('form', function() {
							var form = layui.form();
						});
					}
				});
				
			var url="${url}"   //根据用户点击页面判断是否需要回显
				if(url=='addActivities'){}
				else{
				var da = $("#registrationDate").attr('val');//回显时间
				dat = Format(new Date(da), "yyyy-MM-dd hh:mm:ss");
				$("#registrationDate").val(dat);
				}
			var d=document.getElementById("appointment");
			var dv=document.getElementById("appointment").value;
			if(dv=="0"){
				d.value="是";
			}else{
				d.value="否";
			}
			});


</script>
</head>

<body>

	 <br>
	<div style="padding-left: 130px;font-size:22;">查看活动详细信息</div>
	<br>
	


<%-- 	<input type="hidden" name="id" value="${activityRegistration.id}"> --%>
	
		<div class="layui-form-item">
			<label class="layui-form-label">老人姓名：</label>
			<div class="layui-input-inline">
				<input type="text" name="perId" id="perid" required lay-verify="required"
					placeholder="老人姓名：" value="${activityRegistrationExpand.personalInformationName }"  readonly="readonly" autocomplete="off" class="layui-input">
			</div>
		</div>
		
		
		
			<div class="layui-form-item">
			<label class="layui-form-label">活动名称：</label>
			<div class="layui-input-inline">
				<input type="text" name="activitiesId" id="actityId"  required lay-verify="required"
					placeholder="老人姓名："   
					value="${activityRegistrationExpand.activitiesName }"
					readonly="readonly" autocomplete="off" class="layui-input">
			</div>
		</div>
		
		<div class="layui-form-item">
			<label class="layui-form-label">指导日期：</label>
			<div class="layui-input-inline logstart_time">
				<input class="layui-input" id="registrationDate" name="registrationDate" placeholder="指导日期" val="${activityRegistrationExpand.registrationDate}"
					  readonly="readonly">
			</div>
		</div>
		
		
	<%-- 	
		<div class="layui-form-item">
			<label class="layui-form-label">是否预约：</label>
			<div class="layui-input-inline">
				<select name="appointment" required lay-verify="required"
					id="parament" val="${activityRegistrationExpand.appointment}">
					<option value=""></option>
					<option value="0">是</option>
					<option value="1">否</option>
				</select>
			</div>
		</div>
		 --%>
		
		
			<div class="layui-form-item">
			<label class="layui-form-label">是否预约：</label>
			<div class="layui-input-inline">
				<input type="text" name="appointment" id="appointment"  required lay-verify="required"
					placeholder="是否预约：" value="${activityRegistrationExpand.appointment }"  
					readonly="readonly" autocomplete="off" class="layui-input">
			</div>
		</div>
		
		<div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn" lay-submit lay-filter="formDemo"
					onclick="javascript:history.back(-1);">返回</button>
			</div>
		</div>
		
		
		
</body>
</html>
