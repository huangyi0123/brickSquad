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
		var type='${type}';		//接收type
		type=JSON.parse(type); //转换格式
		findAll(type, "#typeId");
		
		layui.use('form', function() {
					var form = layui.form();
				});
				
		var url = "${url}";
		if (url == 'addShopActivities') {
		} else {
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
	<div style="padding-left: 130px;font-size:16;">${msg }商品活动信息</div>
	<br>
	
	<form class="layui-form" action="shopActivities/${url}" id="form1" >
	<input type="hidden" name="id" value="${shopActivities.id}">

		<div class="layui-form-item">
			<label class="layui-form-label">商品名称</label>
			<div class="layui-input-inline">
				<input type="text" name="id" required lay-verify="required"
					placeholder="商品名称" autocomplete="off" class="layui-input"
					value="${shopActivities.articleId}">
			</div>
		</div>
		
		<div class="layui-form-item">
			<label class="layui-form-label">店铺名</label>
			<div class="layui-input-inline">
				<input type="text" name="id" required lay-verify="required"
					placeholder="店铺名" autocomplete="off" class="layui-input"
					value="${shopActivities.businessId}">
			</div>
		</div>
		
 

		<div class="layui-form-item" style="width: 220; ">
			<label class="layui-form-label">活动类型</label>
			<div class="layui-input-block">
				<select name="typeId" id="typeId" val="${shopActivities.typeId}">
					<option value=""></option>

				</select>
			</div>
		</div>





		<!-- 		 <div class="layui-inline">
      		<label class="layui-form-label">开始时间</label>
      		<div class="layui-input-inline">
        	<input type="date" class="layui-input" name="startTime" placeholder="开始时间"
				onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
        	</div>
   	    </div>
     -->
		<div class="layui-form-item">
			<label class="layui-form-label">开始时间：</label>
			<div class="layui-input-inline logstart_time">
				<input class="layui-input" val="${shopActivities.startTime }"
					id="startId" name="startTime" placeholder="开始时间"
					onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
			</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">结束时间：</label>
			<div class="layui-input-inline logstart_time">
				<input class="layui-input" name="endTime"
					val="${shopActivities.endTime }" id="endId" placeholder="结束时间"
					onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
			</div>
		</div>


		<!--  <div class="layui-inline">
      <label class="layui-form-label">结束时间</label>
      <div class="layui-input-inline">
        <input type="date" class="layui-input" name="endTime" placeholder="yyyy-MM-dd"
			onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
      </div>
    </div> 
     -->




		<div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
				<button type="reset" class="layui-btn layui-btn-primary">重置</button>
			</div>
		</div>



	</form>
</body>
</html>
