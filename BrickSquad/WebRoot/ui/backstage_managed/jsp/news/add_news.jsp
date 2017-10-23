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
<script type="text/javascript">
$(function() {
	$.ajax({
		url : 'news/findUser',
		success : function(data) {
			data = JSON.parse(data);
			var id = $("#userId").attr('val');
			
			$(data).each(
					function() {
						if (id == this.id) {
							$("#userId").append(
									'<option value="'+this.id+'"  selected="selected">'
											+ this.username + '</option>');
						} else {
							$("#userId").append(
									'<option value="'+this.id+'">'
											+ this.username + '</option>');
						}

					});
			layui.use('form', function() {
				var form = layui.form();
			});
		}
	});
	var da = $("#rda").attr('val');
	dat = Format(new Date(da), "yyyy-MM-dd");
	$("#rda").val(dat);
	var centent=$("#centent").attr('val');
	console.log(centent);
	$("#centent").val(centent);
});
</script>
</head>
<body>
<div style="padding-left: 70px;">
	<br>
	<div style="padding-left: 120px;font-size:16;font-style: oblique;">${msg}新闻编辑</div>
	<br>
	<form class="layui-form" action="news/${url}" id="form1"
		method="post">
		<div class="layui-form-item">
			<label class="layui-form-label">新闻ID</label>
			<div class="layui-input-inline">
				<input type="text" name="id" required lay-verify="required"
					placeholder="新闻ID" autocomplete="off" class="layui-input"
					value="${news.id }">
			</div>
		</div>
		 <div class="layui-form-item">
			<label class="layui-form-label">编辑用户ID</label>
			<div class="layui-input-inline">
				<select name="userId" id="userId" val="${news.userId }" lay-search="">
					<option value="">直接选择或搜索选择</option>
				</select>
			</div>
		</div> 
		<div class="layui-form-item">
			<label class="layui-form-label">图片路径</label>
			<div class="layui-input-inline">
				<input type="text" name="imagePath" required lay-verify="required"
					placeholder="图片路径" autocomplete="off" class="layui-input"
					value="${news.imagePath }">
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">提交时间</label>
				<div class="layui-input-inline">
					<input type="date" class="layui-input" name="postTime"
						placeholder="yyyy-MM-dd"
						value="${news.postTime }" id="rda">
				</div>
			</div>
		</div>
		<div class="layui-form-item layui-form-text">
			<label class="layui-form-label">编辑内容</label>
			<div class="layui-input-block">
				<textarea name="content" placeholder="请输入内容" class="layui-textarea" 
				val="${news.content }" id="content"></textarea>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
				<button type="reset" class="layui-btn layui-btn-primary">重置</button>
			</div>
		</div>
	</form>
	</div>
</body>
</html>
