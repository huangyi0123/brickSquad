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
$(function() {
	$.ajax({
		url : 'article/findAllTypeAndBusiness',
		success : function(data) {
			data = JSON.parse(data);
			console.log(data[0].type[0]);
			var type = data[0].type;
			var business = data[0].business;
			findAll(type, "#typeId");
			findAll(business, "#businessId");
			layui.use('form', function() {
				var form = layui.form();
			});
		}
	});
	
});
</script>
</head>

<body>

 <br>
	<div style="padding-left: 130px;font-size:20;">${msg}商品信息</div>
	<br>
	<form class="layui-form" action="article/${url}" id="form1" method="post">
<input type="hidden" name="id"  value="${article.id}">
		<div class="layui-form-item">
			<label class="layui-form-label">商品名称</label>
			<div class="layui-input-inline">
				<input type="text" name="aname" required lay-verify="required"
					placeholder="商品名称" autocomplete="off" class="layui-input"
					value="${article.aname }">
			</div>
		</div>
		
		
		<div class="layui-form-item">
			<label class="layui-form-label">商品类型</label>
			<div class="layui-input-inline">
				<select name="typeId" id="typeId" val="${article.typeId}" lay-search="">
					<option value="">直接选择或搜索选择</option>
				</select>
			</div>
		</div>
		

			<div class="layui-form-item">
			<label class="layui-form-label">价格</label>
			<div class="layui-input-inline">
				<input type="text" name="price" required lay-verify="required"
					placeholder="价格" autocomplete="off" class="layui-input"
					value="${article.price }">
			</div>
		</div>
		
		<div class="layui-form-item">
			<label class="layui-form-label">库存</label>
			<div class="layui-input-inline">
				<input type="text" name="stock" required lay-verify="required"
					placeholder="库存" autocomplete="off" class="layui-input"
					value="${article.stock }">
			</div>
		</div>
		
		<div class="layui-form-item">
			<label class="layui-form-label">商品描述</label>
			<div class="layui-input-inline">
				<input type="text" name="describes" required lay-verify="required"
					placeholder="商品描述" autocomplete="off" class="layui-input"
					value="${article.describes}">
			</div>
		</div>
		
		
	
		
		
			<div class="layui-form-item">
			<label class="layui-form-label">店铺名</label>
			<div class="layui-input-inline">
				<select name="businessId" id="businessId"
					val="${article.businessId}" lay-search="">
					<option value="">直接选择或搜索选择</option>
				</select>
			</div>
		</div>
			
			
			<div class="layui-form-item">
			<label class="layui-form-label">商品图片</label>
			<div class="layui-input-inline">
				<input type="text" name="image" required lay-verify="required"
					placeholder="商品图片" autocomplete="off" class="layui-input">
			</div>
		</div>
		
		
			<div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
  </div>
			
			
			
		</div>
	</form>
</body>
</html>
