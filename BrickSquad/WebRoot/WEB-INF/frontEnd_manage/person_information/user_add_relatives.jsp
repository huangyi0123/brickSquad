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

<title>My JSP 'add_article.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css"
	href="resource/plugins/layui/css/layui.css">
<script type="text/javascript"
	src="resource/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="resource/plugins/layui/layui.js"></script>
<script type="text/javascript"
	src="resource/plugins/layui/lay/modules/laydate.js"></script>
<script type="text/javascript" src="resource/js/common.js"></script>
<script type="text/javascript">
	$(function() {
		var data = "";
		$(".error").each(function() {
			data = data + "<br>" + $(this).val();
		});
		if (data != "") {
			layui.use('layer', function() {
				var layer = layui.layer;
				var msg = data;
				layer.msg(msg);
			});
		}
	});
	layui.use('form', function() {
		var form = layui.form(); //只有执行了这一步，部分表单元素才会修饰成功 

		//获取type中的
		var dataType = '${dataType}';
		dataType = JSON.parse(dataType);
		findAll(dataType, "#relationshipid");
		form.render('select', 'relationshipid');
		//获取address中的省市区镇
		//先查询到所有省的信息
		$(function() {
			var da = '${dataRegion}';
			da = JSON.parse(da);
			findAll(da, "#prId");
			form.render('select', 'prId');
			//回显省市区县
			var url = "${url}";
			if (url == 'insertRelatives') {

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
	function sub() {
		var relphone = $("#telephone").val();
		$("#relphone").val(relphone);
	}
</script>
</head>

<body>
	<br>
	<div style="padding-left: 120px;font-size:16;">${msg}老人亲属关系信息</div>
	<br>
	<form class="layui-form" action="relatives/${url}" id="form1"
		method="post">

		<input type="hidden" name="relatives.id"
			value="${relaAddressTypePerson.relatives.id }">
		<input type="hidden" name="address.id"
			value="${relaAddressTypePerson.address.id }">
		<input type="hidden" name="type.id"
			value="${relaAddressTypePerson.type.id }">
		<input type="hidden" name="personalInformation.id"
			value="${relaAddressTypePerson.personalInformation.id }">

		<input type="hidden" name="relatives.perId"
			value="${user.id }">
		<div class="layui-form-item">
			<label class="layui-form-label">亲属姓名：</label>
			<div class="layui-input-inline">
				<input type="text" name="relatives.name" required
					lay-verify="required"
					value="${relaAddressTypePerson.relatives.name}" placeholder="亲属姓名"
					autocomplete="off" class="layui-input">
			</div>
		</div>


		<div class="layui-form-item">
			<label class="layui-form-label">联系电话：</label>
			<div class="layui-input-inline">
				<input type="hidden" name="relphone" id="relphone">
				<input type="text" name="relatives.telephone" required
					id="telephone" onchange="sub()" lay-verify="required"
					value="${relaAddressTypePerson.relatives.telephone}"
					placeholder="联系电话" autocomplete="off" class="layui-input">
			</div>
		</div>

		<!-- 显示地址表信息 -->
		<div class="layui-form-item">
			<label class="layui-form-label">地址</label>
			<div class="layui-input-inline">
				<select required lay-verify="required"
					val="${relaAddressTypePerson.address.provinceId}"
					name="address.provinceId" id="prId" lay-filter="prIds"
					lay-search="">
					<option value="">选择省份</option>
				</select>
			</div>
			<div class="layui-input-inline">
				<select required lay-verify="required"
					val="${relaAddressTypePerson.address.cityId}" name="address.cityId"
					id="cityId" lay-filter="cityIdSelect" lay-search="">
					<option value="">选择城市</option>
				</select>
			</div>
			<div class="layui-input-inline">
				<select required lay-verify="required"
					val="${relaAddressTypePerson.address.countyId}"
					name="address.countyId" id="countyId" lay-filter="countyIdSelect"
					lay-search="">
					<option value="">选择县市</option>
				</select>
			</div>
			<div class="layui-input-inline">
				<select required lay-verify="required"
					val="${relaAddressTypePerson.address.countryId}"
					name="address.countryId" id="countryId"
					lay-filter="countryIdSelect" lay-search="">
					<option value="">选择乡镇</option>
				</select>
			</div>
			<div class="layui-form-item layui-form-text">
				<label class="layui-form-label">详细地址</label>
				<div class="layui-input-block">
					<textarea name="address.detailed" placeholder="请输入详细地址"
						id="detailedId" val="${relaAddressTypePerson.address.detailed }"
						lay-filter="detailedSelect" class="layui-textarea"></textarea>
				</div>
			</div>

		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">亲属关系：</label>
			<div class="layui-input-inline">
				<select lay-filter="relationshipid" name="relatives.relationshipId"
					id="relationshipid"
					val="${relaAddressTypePerson.relatives.relationshipId}">
					<option value="">选择亲属关系</option>
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
	<c:forEach items="${errors }" var="error">
		<input class="error" value="${error.defaultMessage }" type="hidden">
	</c:forEach>

</body>
</html>
