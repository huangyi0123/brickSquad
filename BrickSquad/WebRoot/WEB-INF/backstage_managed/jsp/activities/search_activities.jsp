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
		layui.use('form', function() {
			var form = layui.form();
		});
		
	var url="${url}"
		if(url=='addActivities'){}
		else{
		var da = $("#startId").attr('val');
		dat = Format(new Date(da), "yyyy-MM-dd hh:mm:ss");
		$("#startId").val(dat);
		
		var da = $("#endId").attr('val');
		dat = Format(new Date(da), "yyyy-MM-dd hh:mm:ss");
		$("#endId").val(dat);
		}
	});
</script>
</head>

<body>

	 <br>
	<div style="padding-left: 130px;font-size:22;">查看商品详细活动信息</div>
	<br>
	

       <div class="layui-form-item">
			<label class="layui-form-label">活动名称</label>
			<div class="layui-input-inline">
				<input type="text" name="name" required lay-verify="required"
					placeholder="活动名称" value="${activitiesExpand.name }" autocomplete="off" class="layui-input">
			</div>
		</div>
		
		<div class="layui-form-item">
			<label class="layui-form-label">活动类型</label>
			<div class="layui-input-inline">
				<input type="text" name="typeId" required lay-verify="required"
					placeholder="活动类型" autocomplete="off" class="layui-input"
					value="${activitiesExpand.tname }" readonly="readonly">
			</div>
		</div>
		
		
		<div class="layui-form-item">
			<label class="layui-form-label">参会人数</label>
			<div class="layui-input-inline">
				<input type="text" name="number" required lay-verify="required"
					placeholder="参会人数" autocomplete="off" class="layui-input"
					value="${activitiesExpand.number }" readonly="readonly">
			</div>
		</div>
		
		
		<div class="layui-form-item">
			<label class="layui-form-label">负责人</label>
			<div class="layui-input-inline">
				<input type="text" name="number" required lay-verify="required"
					placeholder="参会人数" autocomplete="off" class="layui-input"
					value="${activitiesExpand.username}" readonly="readonly">
			</div>
		</div>
	
		
		<div class="layui-form-item">
			<label class="layui-form-label">活动内容</label>
			<div class="layui-input-inline">
				<input type="text" name="centent" required lay-verify="required"
					placeholder="活动类型id" autocomplete="off" id="act" class="layui-input"
					value="${activitiesExpand.centent}" readonly="readonly">
			</div>
		</div>
		
		<div class="layui-form-item">
			<label class="layui-form-label">开始时间</label>
			<div class="layui-input-inline logstart_time">
				<input readonly="readonly" class="layui-input" id="startId" name="startTime" placeholder="开始时间" val="${activitiesExpand.startTime }"
					">
			</div>
		</div>

		
      <%--   <div class="layui-form-item">
			<label class="layui-form-label">结束时间</label>
			<div class="layui-input-inline logstart_time">
				<input  readonly="readonly" class="layui-input" id="endId" name="endTime" placeholder="结束时间" val="${activitiesExpand.endTime }"
					onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
			</div>
		</div> --%>
		
		<div class="layui-form-item">
			<label class="layui-form-label">结束时间</label>
			<div class="layui-input-inline">
				<input type="text" name="endTime" required lay-verify="required"
					id="endId" autocomplete="off" class="layui-input"
					 val="${activitiesExpand.endTime}"
					readonly="readonly" style="border: none;background: #F3F3F4;">
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
