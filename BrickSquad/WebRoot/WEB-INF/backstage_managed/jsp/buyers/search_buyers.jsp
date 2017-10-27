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
<script type="text/javascript">
	layui.use('form', function() {
		
		var form = layui.form(); //只有执行了这一步，部分表单元素才会修饰成功 
		form.on('select(cityIdSelect)', function(data) {
			$.ajax({
				url : 'address/findRegionsByParentId?pid=' + data.value,
				success : function(result) {
					result = JSON.parse(result);
					$("#countyId").empty();
					$("#countyId").append('<option value="">选择县市</option>');
					$("#countryId").empty();
					$("#countryId").append('<option value="">选择乡镇</option>');
					$("select").hide();
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
					$("select").hide();
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
	<div style="padding-left: 150px;font-size:16;"></div>
	<br>
	<form action="buyers/findBuyersByIdString" class="layui-form" method="post">
		<input type="hidden" name="buyers.id" value="${addressAndBuyersExpand.buyers.id}">
		<input type="hidden" name="address.id" value="${addressAndBuyersExpand.address.id }">
		
		<div class="layui-form-item">
			<label class="layui-form-label">积分：</label>
			<div class="layui-input-inline">
				<input type="text" name="disease" value="${addressAndBuyersExpand.buyers.currentIntegral}" required lay-verify="required"
					autocomplete="off" class="layui-input"
					readonly="readonly"
					style="border: none;background: #F3F3F4;">
			</div>
		</div>
		
		<div class="layui-form-item">
			<label class="layui-form-label">历史积分：</label>
			<div class="layui-input-inline">
				<input type="text" name="disease" value="${addressAndBuyersExpand.buyers.historicalIntegral}" required lay-verify="required"
					autocomplete="off" class="layui-input"
					readonly="readonly"
					style="border: none;background: #F3F3F4;">
			</div>
		</div>
		
	<div class="layui-form-item">
			<label class="layui-form-label">等级：</label>
			<div class="layui-input-inline">
				<input type="text" name="disease" value="${addressAndBuyersExpand.buyers.grade}"  lay-verify="required"
					autocomplete="off" class="layui-input"
					readonly="readonly"
					style="border: none;background: #F3F3F4;">
			</div>
		</div>
	
		<!-- 显示地址表信息 -->
		<div class="layui-form-item">
			<label class="layui-form-label">地址</label>
			<div class="layui-input-inline">
				<select  val="${addressAndBuyersExpand.address.provinceId}"
					name="address.provinceId" id="prId" lay-filter="prIds"
					lay-verify="required"
					autocomplete="off" class="layui-input"
					readonly="readonly"
					style="border: none;background: #F3F3F4;">
					<option value="">选择省份</option>
				</select>
			</div>
			<div class="layui-input-inline">
				<select required lay-verify="required" val="${addressAndBuyersExpand.address.cityId}"
					name="address.cityId" id="cityId" lay-filter="cityIdSelect"
					lay-search="">
					<option value="">选择城市</option>
				</select>
			</div>
			<div class="layui-input-inline">
				<select required lay-verify="required" val="${addressAndBuyersExpand.address.countyId}"
					name="address.countyId" id="countyId" lay-filter="countyIdSelect"
					lay-search="">
					<option value="">选择县市</option>
				</select>
			</div>
			<div class="layui-input-inline">
				<select required lay-verify="required" val="${addressAndBuyersExpand.address.countryId}"
					name="address.countryId" id="countryId"
					lay-filter="countryIdSelect" lay-search="">
					<option value="">选择乡镇</option>
				</select>
			</div>
		
		<div class="layui-form-item layui-form-text" >
			<label class="layui-form-label">详细地址：</label>
			<div class="layui-input-block">
				<textarea name="content" class="layui-textarea" id="detailedId" 
				val="${addressAndBuyersExpand.address.detailed }" readonly="readonly"
					style="border: none;background: #F3F3F4;"></textarea>
			</div>
		</div>
			
<%-- 			<div class="layui-form-item layui-form-text">
				<label class="layui-form-label">详细地址</label>
				<div class="layui-input-block">
					<textarea name="address.detailed" placeholder="请输入详细地址"
						id="detailedId" val="${addressAndBuyersExpand.address.detailed }"
						lay-filter="detailedSelect" class="layui-textarea"></textarea>
				</div>
			</div> --%>

		</div>


		<div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn" lay-submit lay-filter="formDemo"
					onclick="javascript:history.back(-1);">返回</button>
			</div>
		</div>
	</div>
</body>
</html>