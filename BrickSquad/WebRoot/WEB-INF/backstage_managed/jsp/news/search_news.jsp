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

<!-- <script type="text/javascript">
	layui.use('form', function() {
		var form = layui.form(); //只有执行了这一步，部分表单元素才会修饰成功 
	});
</script>	 -->


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
		var da = $("#nda").attr('val');
		dat = Format(new Date(da), "yyyy-MM-dd");
		$("#nda").val(dat);
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
		editor.customConfig.uploadImgServer = 'common/uploadImg';
		editor.customConfig.uploadFileName = 'file';
		editor.customConfig.uploadImgHeaders = {

			'Accept' : 'multipart/form-data'

		};
		editor.create();
		var url = '${url}';
		var con=$("#con").html();
		if (url != "insertNews") {
			editor.txt.html(con);
		}

		$("#reset").click(function() {
			if (url != "insertNews") {
				editor.txt.html(con);
			}else {
				editor.txt.html("");
			}
			
		});
		$("#form1").submit(function() {
			var data = editor.txt.html();
			$("#con1").val(data);
		});
	});
</script>
</head>

<body>

	 <br>
	<div style="padding-left: 130px;font-size:20;">新闻详情页</div>
	<br>

		<div class="layui-form-item">
				<label class="layui-form-label">标题</label>
				<div class="layui-input-inline">
					<input type="text" name="title" required lay-verify="required"
						placeholder="标题" autocomplete="off" class="layui-input"
						value="${news.title }">
				</div>
			</div>
			<input type="hidden" name="content" id="con1">
			<div class="layui-form-item layui-form-text">
				<label class="layui-form-label">内容</label>
				<div class="layui-input-block" >${news.content}</div>

			</div>
			
		<div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn" lay-submit lay-filter="formDemo"
					onclick="javascript:history.back(-1);">返回</button>
			</div>
		</div>
		
		
		
</body>
</html>
