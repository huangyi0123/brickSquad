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

<title>My JSP 'add_type.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css"
	href="resource/plugins/layui/css/layui.css">
<script type="text/javascript" src="resource/js/common.js"></script>
<script type="text/javascript"
	src="resource/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript"
	src="resource/plugins/layui/layui.js"></script>
<script type="text/javascript">
	layui.use('form', function() {
		var form = layui.form(); //只有执行了这一步，部分表单元素才会修饰成功 
		$.ajax({
			url : 'personalInformation/findAllPersonalInformation',
			success : function(result) {
				result = JSON.parse(result);
				findAll(result, "#perid");
				form.render('select', 'perid');
			}
		});
		$.ajax({
			url:'activities/findAllActivitiesIdAndName',
			success : function(ActityResult) {
				Result = JSON.parse(ActityResult);
				findAll(Result,"#actityId");
				form.render('select','actityId');	
			}
		});
	});
	 $(function(){
		//日期格式回填
		var registrationDate = $("#registrationDate").attr('val');
		registrationDate = Format(new Date(registrationDate),
				"yyyy-MM-dd hh:mm:ss");
		$("#guidanceDateId").val(registrationDate);
		
	}); 
</script>
<script>
	layui.use('laydate', function() {
		var laydate = layui.laydate;
		//执行一个laydate实例
		laydate.render({
			elem : '#test1' //指定元素
		});
	});
</script>

</head>

<body>
	<br>
	<div style="padding-left: 130px;font-size:16;">${msg}活动管理信息</div>
	<br>
	<form class="layui-form" action="activityRegistration/insertActivityRegistration"
		id="form1" method="post">
		
		<%-- <div class="layui-form-item">
		<input type="hidden" name="id" value="${activityRegistration.id }">
			<label class="layui-form-label">老人ID：</label>
			<div class="layui-input-inline">
				<input type="text" name="perId" required lay-verify="required"
					placeholder="老人ID" autocomplete="off" class="layui-input" value="${activityRegistration.perId }">
			</div>
		</div>
		 --%>
		<div class="layui-form-item">
		<label class="layui-form-label">老人姓名：</label>
				<div class="layui-input-inline">
				<select  name="perId" id="perid" lay-filter="perid">
					<option value="">选择老人姓名</option>
				</select>
			</div>
			</div>
		
<%-- 		<div class="layui-form-item">
			<label class="layui-form-label">活动ID：</label>
			<div class="layui-input-inline">
				<input type="text" name="activitiesId" required
					lay-verify="required" placeholder="活动ID" autocomplete="off"
					class="layui-input" value="${activityRegistration.activitiesId }">
			</div>
		</div>
		 --%>
		<div class="layui-form-item">
		<label class="layui-form-label">活动名称：</label>
				<div class="layui-input-inline">
				<select name="activitiesId" id="actityId" lay-filter="actityId">
					<option value="">选择活动名称</option>
				</select>
			</div>
			</div>
		
		<div class="layui-form-item">
			<label class="layui-form-label">指导日期：</label>
			<div class="layui-input-inline logstart_time">
				<input class="layui-input" name="registrationDate" id="registrationDate" value="${activityRegistration.registrationDate }" placeholder="活动日期"
					onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
			</div>
		</div>
	
		<%-- <div class="layui-form-item">
			<label class="layui-form-label">活动日期：</label>
			<div class="layui-input-inline logstart_time">
				<input class="layui-input" name="registrationDate" placeholder="活动日期"
					onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})" 
					value="${activityRegistration.registrationDate }">
			</div>
		</div> --%>
		
		<div class="layui-form-item">
			<label class="layui-form-label">是否预约：</label>
			<div class="layui-input-inline">
				<select name="appointment" required lay-verify="required" id="parament" lay-filter="aihao">
					<option value=""></option>
					<option value="0">是</option>
					<option value="1">否</option>
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
</body>
</html>
