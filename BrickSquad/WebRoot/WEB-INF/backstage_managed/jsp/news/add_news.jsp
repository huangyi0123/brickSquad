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
<script type="text/javascript"
	src="resource/plugins/wang_edit/wangEditor.min.js"></script>
<script type="text/javascript">
	$(function() {
		var newsImgPath = $("#imagePathId").val();
		if (newsImgPath == "") {
			var o = new Date();
			newsImgPath = o.getFullYear() + "" + o.getMonth() + ""
					+ o.getDate() + "" + o.getHours() + o.getMinutes()
					+ o.getSeconds();
			$("#imagePathId").val(newsImgPath);
		}
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
		//添加wangedit
		var E = window.wangEditor;
		var editor = new E('#editor');
		editor.customConfig.showLinkImg = false;
		editor.customConfig.menus = [ 'bold', 'italic', 'underline',
				'strikeThrough', // 删除线
				'foreColor', // 文字颜色
				'backColor', // 背景颜色
				'link', // 插入链接
				'justify', // 对齐方式
				'quote', // 引用
				'image', // 插入图片
				'table', // 表格
				'code', // 插入代码
				'undo', // 撤销
				'redo' // 重复
		];

		editor.customConfig.uploadImgParamsWithUrl = true;
		editor.customConfig.uploadImgServer = 'common/uploadImg?imgPath=news/'
				+ newsImgPath;
		editor.customConfig.uploadFileName = 'file';
		editor.customConfig.uploadImgMaxSize = 100 * 1024 * 1024;
		editor.customConfig.uploadImgTimeout = 39000;
		editor.customConfig.uploadImgHeaders = {

			'Accept' : 'multipart/form-data'

		};

		editor.create();
		//获取type中的新闻类型id
		layui.use('form', function() {
			var form = layui.form(); //只有执行了这一步，部分表单元素才会修饰成功 
			var dataType = '${dataType}';
			dataType = JSON.parse(dataType);
			findAll(dataType, "#typeid");
			form.render('select', 'typeid1');
		});
		var da = $("#nda").attr('val');
		dat = Format(new Date(da), "yyyy-MM-dd");
		$("#nda").val(dat);

		var url = '${url}';
		var con = $("#con").html();
		if (url != "insertNews") {
			editor.txt.html(con);
		}

		$("#reset").click(function() {
			if (url != "insertNews") {
				editor.txt.html(con);
			} else {
				editor.txt.html("");
			}

		});
		$("#form1").submit(function() {
			var data = editor.txt.html();
			$("#con1").val(data);
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
	<div style="padding-left: 70px;">
		<br>
		<div style="padding-left: 120px;font-size:16;font-style: oblique;">${msg}新闻编辑</div>
		<br>
		<form class="layui-form" action="news/${url}" id="form1" method="post"
			onsubmit="submit()">
			<input type="hidden" name="id" value="${news.id }">
			<div class="layui-form-item">
				<label class="layui-form-label">标题</label>
				<div class="layui-input-inline">
					<input type="text" name="title" required lay-verify="required"
						placeholder="标题" autocomplete="off" class="layui-input"
						value="${news.title }">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">新闻类型</label>
				<div class="layui-input-inline" style="z-index: 1">
					<select lay-filter="typeid1" name="typeId" id="typeid"
						val="${news.typeId}">
						<option value="">选择新闻类型</option>
					</select>
				</div>
			</div>
			<div id="con" style="display: none">${news.content}</div>
			<input type="hidden" name="content" id="con1">
			<input type="hidden" name="imagePath" id="imagePathId"
				value="${news.imagePath}">
			<div class="layui-form-item layui-form-text">
				<label class="layui-form-label">编辑内容</label>
				<div style="z-index: 0" class="layui-input-block" id="editor"></div>
			</div>
			<div class="layui-form-item">
				<div class="layui-input-block">
					<button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
					<button type="reset" class="layui-btn layui-btn-primary" id="reset">重置</button>
				</div>
			</div>
		</form>
		<c:forEach items="${errors}" var="error">
			<input class="error" value="${error.defaultMessage}" type="hidden">
		</c:forEach>
	</div>
</body>
</html>
