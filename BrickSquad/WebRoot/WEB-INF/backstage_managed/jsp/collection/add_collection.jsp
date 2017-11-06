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
		$(function() {
		var da = '${collectionData}';
		console.log(da);
		da=JSON.parse(da);
		findAll(da, "#JB");
		form.render('select', 'JB1');
	});
	});
</script>
<script>
	layui.use('laydate', function() {
		var laydate = layui.laydate;

		//执行一个laydate实例
		laydate.render({
			elem : '#test1' //指定元素
		});
	});
</script>
</head>

<body>
 <br>
	<div style="padding-left: 150px;font-size:16;">${msg }商品收藏信息</div>
	<br>
	<form class="layui-form" action="collection/${url }" id="form1" method="post">
		<input type="hidden" name="id" value="${collection.id }">
		<div class="layui-form-item">
			<label class="layui-form-label" style="width: 100px;">买家姓名：</label>
			<div class="layui-input-inline">
				<%-- <input type="text" name="perId" required lay-verify="required"
					placeholder="老人姓名" autocomplete="off" class="layui-input"
					value="${collection.perId }"> --%>
					
				<select name="perId"  id="JB" lay-search=""
					lay-filter="JB1">
					<option value="">直接选择或搜索选择</option>
				</select>
			</div>
		</div>
		
		<!-- <div class="layui-form-item">
			<label class="layui-form-label" style="width: 100px;">买家姓名：</label>
			<div class="layui-input-inline">
				<select name="diseaseId" id="JB" lay-search=""
					lay-filter="JB1">
					<option value="">直接选择或搜索选择</option>
				</select>
			</div>
		</div> -->
		<div class="layui-form-item" style="width: 450px;">
			<label class="layui-form-label" style="width: 100px;">收藏商品：</label>
			<div class="layui-input-inline">
				<input type="text" name="articleId" required lay-verify="required"
					placeholder="收藏商品" autocomplete="off" class="layui-input"
					value="${collection. articleId}">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label" style="width: 100px;">收藏日期：</label>
			<div class="layui-input-inline logstart_time">
				<input class="layui-input" name="colDate" placeholder="收藏日期"
					value="${collection.colDate }"
					onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
			</div>
		</div>
			<div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" lay-submit lay-filter="formDemo" >立即提交</button>
      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
  </div>
	</form>
</body>
</html>
