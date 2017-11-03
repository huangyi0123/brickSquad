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
<script type="text/javascript" src="resource/plugins/layui/layui.js"></script>
<script type="text/javascript"
	src="resource/plugins/layui/lay/modules/laydate.js"></script>
<script type="text/javascript" src="resource/js/common.js"></script>
<script type="text/javascript" src="resource/js/buyers_list.js"></script>
<script type="text/javascript">
	layui.use('form', function() {
		var form = layui.form(); //只有执行了这一步，部分表单元素才会修饰成功 
		//获取老人信息表
		$.ajax({
			url : 'personalInformation/findAllPersonalInformation',
			success : function(result) {
				result = JSON.parse(result);
				console.log(result);
				findAll(result, "#perid");
				form.render('select', 'perid');
			}
		});
		//地址
		form.on('select(prIds)', function(data) {
			$.ajax({
				url : 'address/findRegionsByParentId?pid=' + data.value,
				success : function(result) {
					result = JSON.parse(result);
					$("#cityId").empty();
					$("#cityId").append('<option value="">选择城市</option>');
					$("#countyId").empty();
					$("#countyId").append('<option value="">选择县市</option>');
					$("#countryId").empty();
					$("#countryId").append('<option value="">选择乡镇</option>');
					findAll(result, "#cityId");
					form.render('select', 'cityIdSelect');
				}
			});
		});
		form.on('select(cityIdSelect)', function(data) {
			$.ajax({
				url : 'address/findRegionsByParentId?pid=' + data.value,
				success : function(result) {
					result = JSON.parse(result);
					$("#countyId").empty();
					$("#countyId").append('<option value="">选择县市</option>');
					$("#countryId").empty();
					$("#countryId").append('<option value="">选择乡镇</option>');
					findAll(result, "#countyId");
					console.log(result);
					form.render('select', 'countyIdSelect');
				}
			});
		});
		form.on('select(countyIdSelect)', function(data) {
			$.ajax({
				url : 'address/findRegionsByParentId?pid=' + data.value,
				success : function(result) {
					result = JSON.parse(result);
					$("#countryId").empty();
					$("#countryId").append('<option value="">选择乡镇</option>');
					findAll(result, "#countryId");
					form.render('select', 'countryIdSelect');
				}
			});
		});
	});
	$(function() {
		var da = '${regionDataString}';
		da = JSON.parse(da);
		findAll(da, "#prId");
		var url = "${url}";
		if (url == 'insertBuyres') {

		} else {
			var regions = '${allRegionResultById}';
			regions = JSON.parse(regions);
			findAll(regions[0].city, "#cityId");
			findAll(regions[0].county, "#countyId");
			findAll(regions[0].country, "#countryId");
			var detailed = $("#detailedId").attr('val');
			$("#detailedId").val(detailed);
		}
	});
</script>
</head>
<body>
	<br>
	<div style="padding-left: 150px;font-size:16;">${msg}买家信息</div>
	<br>
	<form action="buyers/${url} " class="layui-form" method="post">
		<input type="hidden" name="address.id"
			value="${addressAndBuyersExpand.address.id }">

		<div class="layui-form-item">
			<label class="layui-form-label">买家姓名：</label>
			<div class="layui-input-inline">
			<c:if test="${url eq 'updateBuyersById'}">
				<select disabled="disabled" lay-filter="perid" name="buyers.id" id="perid"
					val="${addressAndBuyersExpand.buyers.id}">
					<option value="">选择买家姓名</option>
				</select>
				</c:if>
				<c:if test="${url ne 'updateBuyersById'}">
				<select  lay-filter="perid" name="buyers.id" id="perid"
					val="${addressAndBuyersExpand.buyers.id}">
					<option value="">选择买家姓名</option>
				</select>
				</c:if>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">积分：</label>
			<div class="layui-input-inline">
				<input type="text" name="buyers.currentIntegral" required
					lay-verify="required" lay-verify="number" placeholder="请输入名称"
					autocomplete="off" class="layui-input"
					value="${addressAndBuyersExpand.buyers.currentIntegral}">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">历史积分：</label>
			<div class="layui-input-inline">
				<input type="text" name="buyers.historicalIntegral"
					lay-verify="number" required lay-verify="required"
					placeholder="请输入级别" autocomplete="off" class="layui-input"
					value="${addressAndBuyersExpand.buyers.historicalIntegral}">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">等级：</label>
			<div class="layui-input-inline">
				<input type="text" name="buyers.grade" lay-verify="number" required
					lay-verify="required" placeholder="请输入名称" autocomplete="off"
					class="layui-input" value="${addressAndBuyersExpand.buyers.grade}">
			</div>
		</div>
		<!-- 显示地址表信息 -->
		<div class="layui-form-item">
			<label class="layui-form-label">地址</label>
			<div class="layui-input-inline">
				<select required lay-verify="required"
					val="${addressAndBuyersExpand.address.provinceId}"
					name="address.provinceId" id="prId" lay-filter="prIds"
					lay-search="">
					<option value="">选择省份</option>
				</select>
			</div>
			<div class="layui-input-inline">
				<select required lay-verify="required"
					val="${addressAndBuyersExpand.address.cityId}"
					name="address.cityId" id="cityId" lay-filter="cityIdSelect"
					lay-search="">
					<option value="">选择城市</option>
				</select>
			</div>
			<div class="layui-input-inline">
				<select required lay-verify="required"
					val="${addressAndBuyersExpand.address.countyId}"
					name="address.countyId" id="countyId" lay-filter="countyIdSelect"
					lay-search="">
					<option value="">选择县市</option>
				</select>
			</div>
			<div class="layui-input-inline">
				<select required lay-verify="required"
					val="${addressAndBuyersExpand.address.countryId}"
					name="address.countryId" id="countryId"
					lay-filter="countryIdSelect" lay-search="">
					<option value="">选择乡镇</option>
				</select>
			</div>
			<div class="layui-form-item layui-form-text">
				<label class="layui-form-label">详细地址</label>
				<div class="layui-input-block">
					<textarea name="address.detailed" placeholder="请输入详细地址"
						id="detailedId" val="${addressAndBuyersExpand.address.detailed }"
						lay-filter="detailedSelect" class="layui-textarea"></textarea>
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
