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

<link href="resource/plugins/ztree/zTreeStyle/zTreeStyle.css" rel="stylesheet" />
<link href="resource/plugins/laysui/css/layui.css">
<script src="resource/plugins/jquery/jquery.min.js"></script>
<script src="resource/plugins/ztree/jquery.ztree.core.min.js"></script>
<script src="resource/plugins/ztree/jquery.ztree.excheck.min.js"></script>
<script src="resource/plugins/laysui/layui.js"></script>
<script>
layui.use('layer', function() {
	layer.load(1, {shade: [0.8, '#393D49']});
});

	var zTreeObj;
	var setting = {
		check : {
			enable : true
		},
	};
	
	$(function() {
		var id=$("#id").val();
		$.ajax({
			url : 'limits/findAllLimitsByRoleId?roleId='+id,
			success : function(result) {
				result = JSON.parse(result);
				zTreeObj = $.fn.zTree.init($("#treeDemo"), setting, result);
				layui.use('layer', function() {
					var layer = layui.layer;
					layer.closeAll();
				});
			}
		});
	});
	function test() {
		layui.use('layer', function() {
			layer.load(3, {shade: [0.8, '#393D49']});
		});
		var nodes = zTreeObj.getNodes();
		var data='';
		$(nodes).each(
				function() {
					var da = this.children;
					data = data + 'id:' + this.id + ',query:' + da[0].checked
							+ ',dl:' + da[1].checked + ',up:' + da[2].checked
							+ ',ad:' + da[3].checked+';';

				});
		var id=$("#id").val();
		jsonData={'limits':data,roleId:id};
		 $.ajax({
			url : "role/updateLimitsByRoleId",
			type : "post",
			data :jsonData,
			success : function(result) {
				layui.use('layer', function() {
					var layer = layui.layer;
					layer.closeAll();
				});
				window.location.href=result;
			}
		});

	}
</script>
</head>
<body>
	<ul id="treeDemo" class="ztree"></ul>
	<div class="layui-form-item">
		<div class="layui-input-block">
			<button class="layui-btn" lay-submit lay-filter="formDemo" onclick="test()">修改</button>
		</div>
	</div>
	<input type="hidden" id="id" value="<%=request.getParameter("id")%>">
</body>