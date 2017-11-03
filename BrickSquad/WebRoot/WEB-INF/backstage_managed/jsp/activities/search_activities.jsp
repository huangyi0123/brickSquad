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
		var da = $("#startTime").attr('val');//回显时间
		dat = Format(new Date(da), "yyyy-MM-dd hh:mm:ss");
		$("#startTime").val(dat);
		
		var da = $("#endTime").attr('val');
		dat = Format(new Date(da), "yyyy-MM-dd hh:mm:ss");
		$("#endTime").val(dat);
		}
		
	});
</script>
</head>

<body>

	 <br>
	<div style="padding-left: 130px;font-size:22;">查看活动详细信息</div>
	<br>
	


		<div class="layui-form-item">
			<label class="layui-form-label">活动名称</label>
			<div class="layui-input-inline">
				<input type="text" name="name" required lay-verify="required"
					placeholder="活动名称" value="${activitiesExpand.name }"  readonly="readonly" autocomplete="off" class="layui-input">
			</div>
		</div>
		
		<div class="layui-form-item">
			<label class="layui-form-label">参会人数</label>
			<div class="layui-input-inline">
				<input type="text" name="number" required lay-verify="required"
					placeholder="参会人数" value="${activitiesExpand.number }"  readonly="readonly" autocomplete="off" class="layui-input">
			</div>
		</div>
		
		
		
		
	
		
		<div class="layui-form-item" style="width: 300px;">
			<label class="layui-form-label">活动类型</label>
			<div class="layui-input-block">
				<select name="typeId" id="typeId"   readonly="readonly" val="${activities.typeId}">
					<option value=""></option>
				</select>
			</div>
		</div>
		
		
		
		<div class="layui-form-item">
			<label class="layui-form-label">活动内容</label>
			<div class="layui-input-inline">
				<input name="centent" id="act" required lay-verify="required"
					placeholder="本次活动内容"   readonly="readonly" value="${activitiesExpand.centent}"  autocomplete="off" class="layui-input">
			</div>
		</div>
		
		
		<div class="layui-form-item" style="width: 300px;">
			<label class="layui-form-label">负责人</label>
			<div class="layui-input-block">
				<select name="userId" id="userId"   readonly="readonly" val="${activities.userId}">
					<option value=""></option>
				</select>
			</div>
		</div>
		
		
		
		

		<div class="layui-form-item">
			<label class="layui-form-label">开始时间</label>
			<div class="layui-input-inline logstart_time">
				<input class="layui-input" id="startTime" name="startTime" placeholder="开始时间" val="${activitiesExpand.startTime }"
					onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})"  readonly="readonly">
			</div>
		</div>
        <div class="layui-form-item">
			<label class="layui-form-label">结束时间</label>
			<div class="layui-input-inline logstart_time">
				<input class="layui-input" id="endTime" name="endTime" placeholder="结束时间" val="${activitiesExpand.endTime }"
					onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})"  readonly="readonly">
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
