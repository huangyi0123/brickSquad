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

<title>My JSP 'add_article.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css" href="resource/plugins/laysui/css/layui.css">

<script type="text/javascript" src="resource/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="resource/plugins/laysui/layui.js"></script>
<script type="text/javascript" src="resource/plugins/layui/lay/modules/laydate.js"></script>
<script type="text/javascript" src="resource/js/common.js"></script>

<script type="text/javascript">
	$(function() {
		$.ajax({
			url : 'activities/findAllTypeAndUser',
			success : function(data) {
				data = JSON.parse(data);
				var type = data[0].type;
				var user = data[0].user;
				findAll(type, "#typeId");
				findAll(user, "#userId");
				layui.use('form', function() {
					var form = layui.form;

				});
				layui.use('form', function() {
					var form = layui.form;
				});
			}
		});

		var url = "${url}" //根据用户点击页面判断是否需要回显
		if (url == 'addActivities') {
		} else {
			var da = $("#startTime").attr('val');//回显时间
			dat = Format(new Date(da), "yyyy-MM-dd hh:mm:ss");
			$("#startTime").val(dat);

			var da = $("#endTime").attr('val');
			dat = Format(new Date(da), "yyyy-MM-dd hh:mm:ss");
			$("#endTime").val(dat);
		}

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
	<div style="padding-left: 130px;font-size:16;">${msg }添加活动信息</div>
	<br>
	<form class="layui-form" action="activities/${url }" id="form1" method="post">
		<input type="hidden" name="id" value="${activities.id}">
		<div class="layui-form-item">
			<label class="layui-form-label">活动名称</label>
			<div class="layui-input-inline">
				<input type="text" name="name" required lay-verify="required" placeholder="活动名称"
					value="${activities.name }" autocomplete="off" class="layui-input">
			</div>
		</div>

		<div class="layui-form-item">
			<label class="layui-form-label">参会人数</label>
			<div class="layui-input-inline">
				<input type="text" name="number" required lay-verify="required" placeholder="参会人数"
					value="${activities.number }" autocomplete="off" class="layui-input">
			</div>
		</div>
		<div class="layui-form-item" style="width: 300px;">
			<label class="layui-form-label">活动类型id</label>
			<div class="layui-input-block">
				<select name="typeId" id="typeId" lay-filter="aihao" val="${activities.typeId}">
					<option value=""></option>
				</select>
			</div>
		</div>



		<div class="layui-form-item">
			<label class="layui-form-label">活动内容</label>
			<div class="layui-input-inline">
				<input name="centent" id="centent" required lay-verify="required" placeholder="本次活动内容"
					value="${activities.centent}" autocomplete="off" class="layui-input">
			</div>
		</div>


		<div class="layui-form-item" style="width: 300px;">
			<label class="layui-form-label">负责人</label>
			<div class="layui-input-block">
				<select name="userId" id="userId" val="${activities.userId}">
					<option value=""></option>
				</select>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">开始时间</label>
			<div class="layui-input-inline logstart_time">
				<input class="layui-input" id="startTime" name="startTime" placeholder="开始时间"
					val="${activities.startTime }"
					onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">结束时间</label>
			<div class="layui-input-inline logstart_time">
				<input class="layui-input" id="endTime" name="endTime" placeholder="结束时间"
					val="${activities.endTime }"
					onclick="layui.laydate({elem: this, istime: true, format: 'YYYY-MM-DD hh:mm:ss'})">
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">视频链接</label>
			<div class="layui-input-inline">
				<input type="text" name="movie" value="${activities.movie }" placeholder="复制视频链接" autocomplete="off" class="layui-input">
			</div>
			<input id="imgpath" type="hidden" name="imgpath" value="${activities.imgpath }">
			<div class="layui-upload" style="margin-left:0px">
				<button type="button" class="layui-btn" id="test1" style="display: block;float: left;">视频预览图</button>
				<div class="layui-upload-list" style="float: left; width: 50px;margin: 0;padding: 0">
					<img style="height: 50px;margin: 0;padding: 0" class="layui-upload-img" id="demo1" src="${activities.imgpath }">
					<p id="demoText"></p>
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
				<button type="reset" class="layui-btn layui-btn-primary">重置</button>
			</div>
		</div>
	</form>

	<c:forEach items="${errors}" var="error">
		<input class="error" value="${error.defaultMessage}" type="hidden">
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
											$('#imgpath').val(res.data.access_url);
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
