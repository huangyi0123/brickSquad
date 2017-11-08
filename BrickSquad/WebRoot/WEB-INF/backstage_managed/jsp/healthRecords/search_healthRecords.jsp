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

<title>老人健康档案详情</title>

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

</head>

<body>

	 <br>
	<div style="padding-left: 130px;font-size:22;">查看老人健康档案详细信息</div>
	<br>
	 
		<div class="layui-form-item ">
			<label class="layui-form-label ">姓名</label>
			
			<div class="layui-input-inline">
			<input value="${healthRecords.perId}" lay-verify="required" autocomplete="off" class="layui-input"
				readonly="readonly" style="border: none;background: #F3F3F4;">
			</div>
			
			<label class="layui-form-label ">性别</label>
			<div class="layui-input-inline">
				<input value="${healthRecords.pgender}" lay-verify="required" autocomplete="off" class="layui-input"
				readonly="readonly" style="border: none;background: #F3F3F4;">
			</div>
			<label class="layui-form-label">登记人</label>
			<div class="layui-input-inline">
			<input value="${healthRecords.userId}" lay-verify="required" autocomplete="off" class="layui-input"
				readonly="readonly" style="border: none;background: #F3F3F4;">
			</div>
			<label class="layui-form-label">登记时间</label>
			<div class="layui-input-inline">
				 
			<input value="${registrDate}" lay-verify="required" autocomplete="off" class="layui-input"
				readonly="readonly" style="border: none;background: #F3F3F4;">
			</div>
		</div>

		

		<div class="layui-form-item">
			
			<label class="layui-form-label">所患疾病</label>
			<div class="layui-input-inline">
				<input type="text" value="${healthRecords.tname}" lay-verify="required" autocomplete="off" class="layui-input"
				readonly="readonly" style="border: none;background: #F3F3F4;">
			</div>
			<label class="layui-form-label">身体状况</label>
			<div class="layui-input-inline">
				<input type="text" value="${healthRecords.shape }" lay-verify="required" autocomplete="off" class="layui-input"
				readonly="readonly" style="border: none;background: #F3F3F4;">
			</div>

			<label class="layui-form-label">饮食情况</label>
			<div class="layui-input-inline">
				<div class="layui-input-inline">
				<input type="text" value="${healthRecords.dietSituation}" lay-verify="required" autocomplete="off" class="layui-input"
				readonly="readonly" style="border: none;background: #F3F3F4;">
				</div>
			</div>
			<label class="layui-form-label">运动情况</label>
			<div class="layui-input-inline">
				<div class="layui-input-inline">
				<input type="text" value="${healthRecords.sportsSituation}" lay-verify="required" autocomplete="off" class="layui-input"
				readonly="readonly" style="border: none;background: #F3F3F4;">
				</div>
			</div>

		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">情绪控制</label>
			<div class="layui-input-inline">
				<input type="text" value="${healthRecords.emotionControl}" lay-verify="required" autocomplete="off" class="layui-input"
				readonly="readonly" style="border: none;background: #F3F3F4;">
			</div>
			<label class="layui-form-label">血压</label>
			
			<div class="layui-input-inline">
				<input type="text" value="${healthRecords.bloodPressure }" lay-verify="required" autocomplete="off" class="layui-input"
				readonly="readonly" style="border: none;background: #F3F3F4;">
			</div>
			
			<label class="layui-form-label">血压检测</label>
			<div class="layui-input-inline">
				<input type="text" value="${healthRecords.thrombus}" lay-verify="required" autocomplete="off" class="layui-input"
				readonly="readonly" style="border: none;background: #F3F3F4;">
			</div>
			<label class="layui-form-label">健康评估</label>
			<div class="layui-input-inline">
				<input type="text" value="${healthRecords.healthAssessment }"  lay-verify="required" autocomplete="off" class="layui-input"
				readonly="readonly" style="border: none;background: #F3F3F4;">
				 
			</div>
			

		</div>
		
		<div class="layui-form-item">
			<label class="layui-form-label">危险提示</label>
			<div class="layui-input-inline">
				<input type="text" value="${healthRecords.dangerousTips}" lay-verify="required" autocomplete="off" class="layui-input"
				readonly="readonly" style="border: none;background: #F3F3F4;">
			</div>
		
			<label class="layui-form-label">结论建议</label>
			<div class="layui-input-inline">
				<input type="text" value="${healthRecords.conclusionSuggestion }" lay-verify="required" autocomplete="off" class="layui-input"
				readonly="readonly" style="border: none;background: #F3F3F4;">
			</div>
			
			<label class="layui-form-label">治疗效果评价</label>
			<div class="layui-input-inline">
				<input type="text" value="${healthRecords.evaluate }" lay-verify="required" autocomplete="off" class="layui-input"
				readonly="readonly" style="border: none;background: #F3F3F4;">
			</div>
		</div>
		
		
		
		
</body>
</html>
