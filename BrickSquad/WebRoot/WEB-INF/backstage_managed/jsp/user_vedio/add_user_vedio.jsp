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

<title>My JSP 'add_type.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link rel="stylesheet" type="text/css" href="resource/plugins/laysui/css/layui.css">

<script type="text/javascript" src="resource/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="resource/plugins/laysui/layui.js"></script>
<script type="text/javascript">
	$(function() {

		layui.use('form', function() {
			var form = layui.form;
		});
	});
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
</script>

</head>

<body>
	<br>
	<div style="padding-left: 150px;font-size:16;">${msg}用户视频</div>
	<br>
	<form class="layui-form" action="userVedio/${url }" id="form1" method="post"
		enctype="multipart/form-data">
		<input type="hidden" name="id" value="${vedio.id }">
		<div class="layui-form-item">
			<label class="layui-form-label">名称</label>
			<div class="layui-input-inline">
				<input type="text" name="title" required lay-verify="required" placeholder="名称"
					autocomplete="off" class="layui-input" value="${vedio.title }">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">视频地址</label>
			<div class="layui-input-inline">
				<input type="text" name="vediopath" required lay-verify="required" placeholder="视频地址"
					autocomplete="off" class="layui-input" value="${vedio.vediopath }">
			</div>
		</div>
		<div class="layui-upload" style="margin-left: 120px">
			<button type="button" class="layui-btn" id="test1">上传图片</button>
			<div class="layui-upload-list">
				<img class="layui-upload-img" id="demo1">
				<p id="demoText"></p>
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
	<script type="text/javascript">
		layui
				.use(
						'upload',
						function() {
							var $ = layui.jquery, upload = layui.upload;
							//普通图片上传
							var uploadInst = upload
									.render({
										elem : '#test1',
										url : 'userVedio/uploadImage',
										before : function(obj) {
											//预读本地文件示例，不支持ie8
											obj
													.preview(function(index,
															file, result) {
														$('#demo1').attr('src',
																result); //图片链接（base64）
													});
										},
										done : function(res) {
											//如果上传失败
											if (res.code > 0) {
												return layer.msg('上传失败');
											}
											console.log(res);
											//上传成功
										},
										error : function() {
											//演示失败状态，并实现重传
											var demoText = $('#demoText');
											demoText
													.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-mini demo-reload">重试</a>');
											demoText.find('.demo-reload').on(
													'click', function() {
														uploadInst.upload();
													});
										}
									});
						});
	</script>
</body>
</html>
