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
$(function() {
	$.ajax({
		url : 'shoppingCar/findArticleAndPersonalInformation',
		success : function(data) {
			data = JSON.parse(data);
			/* console.log(data[0].article[0]);浏览器打印 */
			var article = data[0].article;
			var personalinformation = data[0].personalInformation;
			findAll(article, "#articleId");
			findAll(personalinformation, "#personalInformationId");
			layui.use('form', function() {
				var form = layui.form();
			});
		}
	});
	var da = $("#sda").attr('val');
	dat = Format(new Date(da), "yyyy-MM-dd");
	$("#sda").val(dat);
	var la=$("#personalInformationId").attr('val');
	console.log(la);
	$("#personalInformationId").val(la);
});
	function findAll(data, id) {
		$(data).each(
				function() {
					console.log(this);
					$(id).append(
							'<option value="'+this.id+'">' + this.name
									+ '</option>');
				});
	}
</script>
</head>

<body>
<br>
<div style="padding-left: 120px;font-size:16;font-style: oblique;">${msg}购物车信息</div>
<br>
	<form class="layui-form" action="shoppingCar/${url}" id="form1" method="post">
		<input type="hidden" name="id" value="${shoppingCar.id }"> 
		<%-- <div class="layui-form-item">
			<label class="layui-form-label">ID</label>
			<div class="layui-input-inline">
				<input type="text" name="id" required lay-verify="required"
					placeholder="ID" autocomplete="off" class="layui-input"
					value="${shoppingCar.id }">
			</div>
		</div> --%>
		<div class="layui-form-item">
			<label class="layui-form-label">买家姓名</label>
			<div class="layui-input-inline">
				<select name="perId" id="personalInformationId" val="${shoppingCar.perId}" lay-search="">
					<option value="">直接选择或搜索选择</option>
				</select>
			</div>
		</div>
		
		<div class="layui-form-item">
			<label class="layui-form-label">商品名称</label>
			<div class="layui-input-inline">
				<select name="articleId" id="articleId" val="${shoppingCar.articleId}" lay-search="">
					<option value="">直接选择或搜索选择</option>
				</select>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">商品数量</label>
			<div class="layui-input-inline">
				<input type="text" name="number" required lay-verify="required"
					placeholder="商品数量" autocomplete="off" class="layui-input"
					value="${ shoppingCar.number}">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">生成时间</label>
			<div class="layui-input-inline">
				<input type="date" name="date" required lay-verify="required"
					placeholder="生成时间" autocomplete="off" class="layui-input"
					val="${shoppingCar.date }" id="sda">
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
