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
		var da = $("#startTime").attr('val');
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
	<div style="padding-left: 130px;font-size:22;">查看商品详细活动信息</div>
	<br>
	


		<div class="layui-form-item">   
			<label class="layui-form-label">商品名称</label>
			<div class="layui-input-inline">
				<input type="text" name="id" required lay-verify="required"
					placeholder="商品名称" autocomplete="off" class="layui-input"
					value="${shopActivitiesExpand.aname}" readonly="readonly">
			</div>
		</div>
		
		<div class="layui-form-item">
			<label class="layui-form-label">店铺名</label>
			<div class="layui-input-inline">
				<input type="text" name="id" required lay-verify="required"
					placeholder="店铺名" autocomplete="off" class="layui-input"
					value="${shopActivitiesExpand.bname}" readonly="readonly">
			</div>
		</div>
		
 
		
		<div class="layui-form-item">
			<label class="layui-form-label">活动类型</label>
			<div class="layui-input-inline">
				<input type="text" name="typeId" required lay-verify="required"
					placeholder="活动类型" autocomplete="off" class="layui-input"
					value="${shopActivitiesExpand.tname}"  readonly="readonly">
			</div>
		</div>
		
		
		


		<div class="layui-form-item">
			<label class="layui-form-label">开始时间：</label>
			<div class="layui-input-inline logstart_time">
				<input class="layui-input" val="${shopActivitiesExpand.startTime }"
					id="startTime" name="startTime" placeholder="开始时间"
					 readonly="readonly">
			</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">结束时间：</label>
			<div class="layui-input-inline logstart_time">
				<input class="layui-input" name="endTime"
					val="${shopActivitiesExpand.endTime }" id="endTime" placeholder="结束时间"
					 readonly="readonly">
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
