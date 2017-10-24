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
		da=JSON.parse(da);
		findAll(da, "#prf");
		var url = "${url}";
		if (url == 'inserAddress') {

		} else {
			var regions = "${regions}";
			console.log(regions[0]);
			findAll(regions[0].city, "#city");
			findAll(regions[0].county, "#citg");
			findAll(regions[0].country, "#cit");
			var detailed=$("#detailed").attr('val');
			$("#detailed").val(detailed);
		}
	});
</script>
</head>

<body>
 <br>
	<div style="padding-left: 160px;font-size:16;">地址信息</div>
	<br>
	<form action="address/${url }" class="layui-form"
		method="post">
			<input type="hidden" name="id" value="${address.id }">
		<div class="layui-form-item">
			<label class="layui-form-label">省</label>
			<div class="layui-input-inline">
				<select name="provinceId" id="prf" val=${address.provinceId }
					lay-search="" lay-filter="test1">
					<option value="">直接选择或搜索选择</option>
				</select>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">市</label>
			<div class="layui-input-inline">
				<select name="cityId" id="city" val=${address.cityId } lay-search=""
					lay-filter="test2">
					<option value="">直接选择或搜索选择</option>
				</select>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">区县</label>
			<div class="layui-input-inline">
				<select name="countyId" id="citg" val=${address.countyId }
					lay-search="" lay-filter="test3">
					<option value="">直接选择或搜索选择</option>
				</select>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">乡镇</label>
			<div class="layui-input-inline">
				<select name="countryId" id="cit" val=${address.countryId }
					lay-search="" lay-filter="4">
					<option value="">直接选择或搜索选择</option>
				</select>
			</div>
		</div>
		<div class="layui-form-item layui-form-text">
			<label class="layui-form-label">详细地址</label>
			<div class="layui-input-block">
				<textarea name="detailed" placeholder="请输入详细地址" id="detailed" val="${address.detailed }"
					class="layui-textarea"></textarea>
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
