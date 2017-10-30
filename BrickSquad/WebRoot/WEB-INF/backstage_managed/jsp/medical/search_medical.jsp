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
	});
</script>
</head>

<body>

	<br>
	<div style="padding-left: 130px;font-size:22;">查看病历详细信息</div>
	<br>


	<div class="layui-form-item">
		<label class="layui-form-label">身份证号</label>

		<div class="layui-input-inline">
			<input type="text" id="perIdCardId" name="perId"
				value="${medical.perId }" required lay-verify="required"
				placeholder="身份证号" autocomplete="off" class="layui-input">
		</div>
	</div>
	<div class="layui-form-item">
		<label class="layui-form-label">姓名</label>

		<div class="layui-input-inline">
			<input type="text" id="IdName" required lay-verify="required"
				placeholder="姓名" autocomplete="off" class="layui-input"
				value="${medicalExpand.personalInformationName}">
		</div>
	</div>

	<div class="layui-form-item">
		<label class="layui-form-label">日期</label>
		<div class="layui-input-inline">
			<input type="date" id="inspectionDateId" name="inspectionDate"
				val="${medicalExpand.inspectionDate }" required
				lay-verify="required" placeholder="yyyy-MM-dd" class="layui-input">

		</div>
	</div>




	<div class="layui-form-item">
		<label class="layui-form-label">检查医院</label>

		<div class="layui-input-inline">
			<input type="text" name="hospital" value="${medicalExpand.hospital }"
				required lay-verify="required" placeholder="检查医院" autocomplete="off"
				class="layui-input">
		</div>
	</div>
	<div class="layui-form-item">
		<label class="layui-form-label">检查类型</label>
		<div class="layui-input-inline">
			<select name="typeId" id="paramentTypeId"
				val="${medicalExpand.typeId }" lay-search="">
				<option value="">直接选择或搜索选择</option>
			</select>
		</div>
	</div>
	<div class="layui-form-item">
		<label class="layui-form-label">病历详情</label>

		<div class="layui-input-inline">
			<input type="text" name="content" value="${medicalExpand.content }"
				required lay-verify="required" placeholder="病历详情" autocomplete="off"
				class="layui-input">
		</div>
	</div>
	<div class="layui-form-item">
		<label class="layui-form-label">主治医师</label>

		<div class="layui-input-inline">
			<input type="text" name="attendingSurgeon"
				value="${medicalExpand.attendingSurgeon }" required
				lay-verify="required" placeholder="主治医师" autocomplete="off"
				class="layui-input">
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
