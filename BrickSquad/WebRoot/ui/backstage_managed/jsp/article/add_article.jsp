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
<script type="text/javascript">
	layui.use('form', function() {
		var form = layui.form(); //只有执行了这一步，部分表单元素才会修饰成功 
	});
</script>
</head>

<body>
 <br>
	<div style="padding-left: 130px;font-size:16;">添加商品信息</div>
	<br>
	<form class="layui-form" action="article/addArticle" id="form1">
	
		<div class="layui-form-item">
			<label class="layui-form-label">商品序号</label>
			<div class="layui-input-inline">
				<input type="text" name="id" required lay-verify="required"
					placeholder="商品序号" autocomplete="off" class="layui-input">
			</div>
		</div>
		
		
		<div class="layui-form-item">
			<label class="layui-form-label">商品名称</label>
			<div class="layui-input-inline">
				<input type="text" name="aname" required lay-verify="required"
					placeholder="商品名称" autocomplete="off" class="layui-input">
			</div>
		</div>
		
		
		<div class="layui-form-item">
			<label class="layui-form-label">商品类型</label>
			<div class="layui-input-block">
				<select name="typeId" lay-filter="aihao">
					<option value=""></option>
					<option value="秋衣">秋衣</option>
					<option value="裤子">裤子</option>
					<option value="羽绒服">羽绒服</option>
					<option value="鞋子">鞋子</option>
				</select>
			</div>
			</div>
			<div class="layui-form-item">
			<label class="layui-form-label">价格</label>
			<div class="layui-input-inline">
				<input type="text" name="price" required lay-verify="required"
					placeholder="价格" autocomplete="off" class="layui-input">
			</div>
		</div>
		
		<div class="layui-form-item">
			<label class="layui-form-label">库存</label>
			<div class="layui-input-inline">
				<input type="text" name="stock" required lay-verify="required"
					placeholder="库存" autocomplete="off" class="layui-input">
			</div>
		</div>
		
		<div class="layui-form-item">
			<label class="layui-form-label">商品描述</label>
			<div class="layui-input-inline">
				<input type="text" name="describes" required lay-verify="required"
					placeholder="商品描述" autocomplete="off" class="layui-input">
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
