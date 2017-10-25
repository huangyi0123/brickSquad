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
	layui.use('form', function() {

		var form = layui.form();
	});
	$(function() {
		//查询region中level为1，即所有省份集合
		var regionDataString = ${regionDataString};
		findAll(regionDataString, "#prId");
	});
		layui.use('form', function() {
	
	 var form = layui.form();
	 //监听省份下拉框的选中事件，根据省份id查询相应省份下面的城市
	 form.on('select(prIds)', function(data) {
	 console.log("7777777777777777777");
	 $.ajax({
	 url : 'address/findRegionsByParentId?pid=' + data.value,
	 success : function(result) {
	 result = JSON.parse(result);
	 $("#cityId").empty();
	 $("#cityId").append('<option value="">直接选择或搜索选择</option>');
	 //清空该区域下面的下拉框
	 $("#countyId").empty();
	 $("#countyId")
	 .append('<option value="">直接选择或搜索选择</option>');
	 $("#countryId").empty();
	 $("#countryId").append(
	 '<option value="">直接选择或搜索选择</option>');
	 $("#detailedId").empty();
	 findAll(result, "#cityId");
	 form.render('select', 'cityIdSelect');
	 }
	 });
	 });
	 //监听城市下拉框的选中事件，根据城市id查询相应城市下面的县区
	 form.on('select(cityIdSelect)', function(data) {
	 $.ajax({
	 url : 'address/findRegionsByParentId?pid=' + data.value,
	 success : function(result) {
	 result = JSON.parse(result);
	 $("#countyId").empty();
	 $("#countyId")
	 .append('<option value="">直接选择或搜索选择</option>');
	 //清空该区域下面的下拉框
	 $("#countryId").empty();
	 $("#countryId").append(
	 '<option value="">直接选择或搜索选择</option>');
	 $("#detailedId").empty();
	 findAll(result, "#countyId");
	 form.render('select', 'countyIdSelect');
	 }
	 });
	 });
	 //监听县区下拉框的选中事件，根据县区id查询相应县区下面的乡镇
	 form.on('select(countyIdSelect)', function(data) {
	 $.ajax({
	 url : 'address/findRegionsByParentId?pid=' + data.value,
	 success : function(result) {
	 result = JSON.parse(result);
	 $("#countryId").empty();
	 $("#countryId").append(
	 '<option value="">直接选择或搜索选择</option>');
	 //清空该区域下面的下拉框
	 $(" #detailedId").val("");

	 findAll(result, "#countryId");
	 form.render('select', 'countryIdSelect');
	 }
	 });
	 });

	 });
</script>
</head>
<body>
	<br>
	<div style="padding-left: 150px;font-size:16;">添加买家信息</div>
	<br>
	<form action="buyers/insertBuyres" class="layui-form" method="post">
		<div class="layui-form-item">
			<label class="layui-form-label">int积分：</label>
			<div class="layui-input-inline">
				<input type="text" name="currentIntegral" required
					lay-verify="required" placeholder="请输入名称" autocomplete="off"
					class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">int历史积分：</label>
			<div class="layui-input-inline">
				<input type="text" name="historicalIntegral" required
					lay-verify="required" placeholder="请输入级别" autocomplete="off"
					class="layui-input">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">int等级：</label>
			<div class="layui-input-inline">
				<input type="text" name="grade" required lay-verify="required"
					placeholder="请输入名称" autocomplete="off" class="layui-input">
			</div>
		</div>
		<!-- 显示地址表信息 -->
		<div class="layui-form-item">
			<label class="layui-form-label">地址</label>
			<div class="layui-input-inline">
				<select required lay-verify="required" val="${address.provinceId}"
					name="provinceId" id="prId" lay-filter="prIds" lay-search="">
					<option value="">选择省份</option>
				</select>
			</div>
			<div class="layui-input-inline">
				<select required lay-verify="required" val="${address.cityId}"
					name="cityId" id="cityId" lay-filter="cityIdSelect" lay-search="">
					<option value="">选择城市</option>
				</select>
			</div>
			<div class="layui-input-inline">
				<select required lay-verify="required" val="${address.countyId}"
					name="countyId" id="countyId" lay-filter="countyIdSelect"
					lay-search="">
					<option value="">选择县市</option>
				</select>
			</div>
			<div class="layui-input-inline">
				<select required lay-verify="required" val="${address.countryId}"
					name="countryId" id="countryId" lay-filter="countryIdSelect"
					lay-search="">
					<option value="">选择乡镇</option>
				</select>
			</div>
			<div class="layui-form-item layui-form-text">
				<label class="layui-form-label">详细地址</label>
				<div class="layui-input-block">
					<textarea name="detailed" placeholder="请输入详细地址" id="detailedId"
						val="${address.detailed }" class="layui-textarea"></textarea>
				</div>
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
