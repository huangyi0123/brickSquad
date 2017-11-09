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
<script type="text/javascript"
	src="resource/plugins/layui/layui.js"></script>
<script type="text/javascript"
	src="resource/plugins/layui/lay/modules/laydate.js"></script>
	<script type="text/javascript" src="resource/js/common.js"></script>
		<script type="text/javascript" src="resource/js/add_article.js"></script>
		<script type="text/javascript"
	src="resource/plugins/wang_edit/wangEditor.min.js"></script>
<script type="text/javascript">
$(function() {
	$.ajax({
		url : 'article/findAllTypeAndBusiness',
		success : function(data) {
			data = JSON.parse(data);
			var type = data[0].type;
			var business = data[0].business;
			findAll(type, "#typeId");
			findAll(business, "#businessId");
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
	editor.customConfig.uploadImgServer = 'common/uploadImg?imgPath=article';
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
		if (url != "addArticle") {
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
$(function() {
		var data="";
		$(".error").each(function() {
			data=data+"<br>"+$(this).val();
		});
		if (data!="") {
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
	<div style="padding-left: 130px;font-size:20;">${msg}商品信息</div>
	<br>
	<form class="layui-form" action="article/${url}" id="form1" method="post" enctype="multipart/form-data">


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
				<select name="typeId" id="typeId" val="${article.typeId}" lay-search="" required lay-verify="required">
					<option value="">直接选择或搜索选择</option>
				</select>
			</div>
		</div>
		

			<div class="layui-form-item">
			<label class="layui-form-label">价格</label>
			<div class="layui-input-inline">
			<%-- 	<input type="text" name="price" required lay-verify="required"
					placeholder="价格" autocomplete="off" class="layui-input"
					value="${article.price }"> --%>
					
				<input type='text' name="price"
				onkeyup="(this.v=function(){this.value=this.value.replace(/[^0-9-]+/,'');}).call(this)" onblur="this.v();"
				required lay-verify="required" placeholder="请输入有效价格" autocomplete="off" class="layui-input"
					value="${article.price }" />
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
			<label class="layui-form-label">店铺名</label>
			<div class="layui-input-inline">
				<select name="businessId" id="businessId"
					val="${article.businessId}" lay-search="" required lay-verify="required">
					<option value="">直接选择或搜索选择</option>
				</select>
			</div>
		</div> 
			
			
			<div class="layui-form-item">
			<label class="layui-form-label">商品图片</label>
			<div class="layui-input-inline" style="color:white; display:inline-block;position:relative;width:190px; height:34px; border:1px solid #1AA194;text-align:center;line-height:34px;background-color: #1AA194">
				上传商品图片
				<input  id="inputImg" type="file" name="files" multiple="multiple"  
					placeholder="商品图片" autocomplete="off" class="layui-input" 
						style="position:absolute;z-index:1;left:0px;top:0;opacity:0;filter:alpha(opacity=0);cursor:pointer;"
					>
			</div>
			<div id="showImg">
			<c:forEach var="a" items="${images }">
			<img style="width: 80px" alt="" src="resource/image/articleImg/${ article.image}/${a}">
			</c:forEach>
			</div>
		</div>
			<div class="layui-form-item">
			<label class="layui-form-label">商品描述</label>
			<input type="hidden" name="describes" id="con1">
			<div class="layui-input-block" id="editor"></div>
		</div>
		
			<div class="layui-form-item">
    <div class="layui-input-block">
      <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
      <button type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
  </div>
	<c:forEach items="${errors}" var="error">
   		<input class="error" value="${error.defaultMessage}" type="hidden">
   	</c:forEach>
		</div>
	</form>
</body>
</html>
