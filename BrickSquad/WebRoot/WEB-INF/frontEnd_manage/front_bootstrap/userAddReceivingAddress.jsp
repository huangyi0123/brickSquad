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
<script type="text/javascript" src="resource/plugins/layui/layui.js"></script>
<script type="text/javascript"
	src="resource/plugins/layui/lay/modules/laydate.js"></script>

<script type="text/javascript" src="resource/js/common.js"></script>
<script type="text/javascript">
	layui.use('form', function() {
		var form = layui.form(); //只有执行了这一步，部分表单元素才会修饰成功 
		form.on('select(test1)', function(data) {

			$.ajax({
				url : 'address/findRegionsByParentId?pid=' + data.value,
				success : function(result) {
					result = JSON.parse(result);
					$("#city").empty();
					$("#citg").empty();
					$("#citg").append('<option value="">直接选择或搜索选择</option>');
					$("#city").append('<option value="">直接选择或搜索选择</option>');
					$("#cit").empty();
					$("#cit").append('<option value="">直接选择或搜索选择</option>');
					findAll(result, "#city");
					form.render('select', 'test2');
				}
			});
		});
		form.on('select(test2)', function(data) {
			$.ajax({
				url : 'address/findRegionsByParentId?pid=' + data.value,
				success : function(result) {
					result = JSON.parse(result);
					$("#citg").empty();
					$("#citg").append('<option value="">直接选择或搜索选择</option>');
					$("#cit").empty();
					$("#cit").append('<option value="">直接选择或搜索选择</option>');
					findAll(result, "#citg");
					form.render('select', 'test3');
				}
			});
		});
		form.on('select(test3)', function(data) {
			$.ajax({
				url : 'address/findRegionsByParentId?pid=' + data.value,
				success : function(result) {
					result = JSON.parse(result);
					$("#cit").empty();
					$("#cit").append('<option value="">直接选择或搜索选择</option>');
					findAll(result, "#cit");
					form.render('select', 'test4');
				}
			});
		});
	});
	$(function() {
		var da = '${data}';
		da = JSON.parse(da);
		findAll(da, "#prf");
	});
</script>
</head>

<body>
	<form action="address/inserAddress" class="layui-form" method="post"
		id="upload-form">
		<div class="layui-form-item">
			<label class="layui-form-label">省</label>
			<div class="layui-input-inline">
				<select name="provinceId" id="prf" val=${address.provinceId }
					lay-search="" lay-filter="test1" required lay-verify="required">
					<option value="">直接选择或搜索选择</option>
				</select>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">市</label>
			<div class="layui-input-inline">
				<select name="cityId" id="city" val=${address.cityId } lay-search=""
					lay-filter="test2" required lay-verify="required">
					<option value="">直接选择或搜索选择</option>
				</select>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">区县</label>
			<div class="layui-input-inline">
				<select name="countyId" id="citg" val=${address.countyId }
					lay-search="" lay-filter="test3" required lay-verify="required">
					<option value="">直接选择或搜索选择</option>
				</select>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">乡镇</label>
			<div class="layui-input-inline">
				<select name="countryId" id="cit" val=${address.countryId }
					lay-search="" lay-filter="4" required lay-verify="required">
					<option value="">直接选择或搜索选择</option>
				</select>
			</div>
		</div>
		<div class="layui-form-item layui-form-text">
			<label class="layui-form-label">详细地址</label>
			<div class="layui-input-block">
				<textarea name="detailed" required lay-verify="required"
					style="height: 20px;" placeholder="请输入详细地址" id="detailed"
					val="${address.detailed }" class="layui-textarea"></textarea>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">收货人姓名</label>
			<div class="layui-input-inline">
				<input type="text" name="consigneeName" id="consigneeName" required
					lay-verify="required" placeholder="请输入收货人姓名" autocomplete="off"
					class="layui-input" value="${address.consigneeName}">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">收货人电话</label>
			<div class="layui-input-inline">
				<input type="text" name="consigneePhone" id="consigneePhone"
					required lay-verify="required" placeholder="收货人电话"
					autocomplete="off" class="layui-input"
					value="${address.consigneePhone}">
			</div>
		</div>
		<div class="layui-form-item">
			<button type="button" style="margin-left: 220px;"
				class="layui-btn layui-btn-primary"
				onclick="submitReceivingAddress()">提交</button>
		</div>
	</form>
	<script type="text/javascript">
		function submitReceivingAddress() {
			layui.use('layer', function() {
				var layer = layui.layer;
				var provinceId = $("#prf").val();
				var cityId = $("#city").val();
				var countyId = $("#citg").val();
				var countryId = $("#cit").val();
				var detailed = $("#detailed").val();
				var consigneeName = $("#consigneeName").val();
				var consigneePhone = $("#consigneePhone").val();
				var address = {
					"provinceId" : provinceId,
					"cityId" : cityId,
					"countyId" : countyId,
					"countryId" : countryId,
					"detailed" : detailed,
					"consigneeName" : consigneeName,
					"consigneePhone" : consigneePhone
				};
				console.log(address);
				$.ajax({
					url : 'address/confirmOrderInsertAddress',
					type : "post",
					data : address,
					success : function(data) {
						if (data != "fail") {
							layer.msg("添加地址成功！");
							var index = parent.layer.getFrameIndex(window.name);
							setTimeout(function(){parent.layer.close(index)}, 2000); 
						} else {
							layer.msg("服务器错误！！稍后重试");
						}

					},
					error : function(e) {
						layer.msg("服务器错误！！稍后重试");
					}
				});
			});
		}
	</script>
</body>
</html>
