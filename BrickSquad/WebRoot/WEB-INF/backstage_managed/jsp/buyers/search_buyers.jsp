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

<link rel="stylesheet" type="text/css" href="resource/plugins/layui/css/layui.css">

<script type="text/javascript" src="resource/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="resource/plugins/layui/layui.js"></script>
<script type="text/javascript" src="resource/plugins/layui/lay/modules/laydate.js"></script>
<script type="text/javascript" src="resource/js/common.js"></script>
<script type="text/javascript">
	
</script>
</head>
<body>
	<br>
	<div style="padding-left: 150px;font-size:16;"></div>
	<br>
	<div class="layui-form-item">
		<label class="layui-form-label">老人姓名：</label>
		<div class="layui-input-inline">
			<input value="${perString}" lay-verify="required" autocomplete="off" class="layui-input"
				readonly="readonly"  >
		</div>
	</div>
	<div class="layui-form-item">
		<label class="layui-form-label">积分：</label>
		<div class="layui-input-inline">
			<input type="text" name="disease" value="${addressAndBuyersExpand.buyers.currentIntegral}"
				required lay-verify="required" autocomplete="off" class="layui-input" readonly="readonly"
				 >
		</div>
	</div>

	<div class="layui-form-item">
		<label class="layui-form-label">历史积分：</label>
		<div class="layui-input-inline">
			<input type="text" name="disease" value="${addressAndBuyersExpand.buyers.historicalIntegral}"
				required lay-verify="required" autocomplete="off" class="layui-input" readonly="readonly"
				 >
		</div>
	</div>

	<div class="layui-form-item">
		<label class="layui-form-label">等级：</label>
		<div class="layui-input-inline">
			<input type="text" name="disease" value="${addressAndBuyersExpand.buyers.tname}"
				lay-verify="required" autocomplete="off" class="layui-input" readonly="readonly"
				 >
		</div>
	</div>

	<!-- 显示地址表信息 -->
	<div class="layui-form-item layui-form-text">
		<label class="layui-form-label">详细地址：</label>
		<div class="layui-input-block">
			<input type="text" value="${address}" lay-verify="required" autocomplete="off"
				class="layui-input" readonly="readonly" style="width:50%" >
		</div>
	</div>
	<div class="layui-form-item">
		<div class="layui-input-block">
			<button class="layui-btn" lay-submit lay-filter="formDemo" onclick="javascript:history.back(-1);">返回</button>
		</div>
	</div>
	</div>
</body>
</html>