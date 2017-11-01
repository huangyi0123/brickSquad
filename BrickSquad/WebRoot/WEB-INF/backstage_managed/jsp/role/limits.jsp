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
<link href="resource/plugins/layui/css/layui.css">
<link href="resource/plugins/ztree/zTreeStyle/zTreeStyle.css" rel="stylesheet" />
<script src="resource/plugins/jquery/jquery.min.js"></script>
<script src="resource/plugins/ztree/jquery.ztree.core.min.js"></script>
<script src="resource/plugins/ztree/jquery.ztree.excheck.min.js"></script>
<script>
	var zTreeObj;
	var setting = {
		check : {
			enable : true
		},
	};
	$(function() {
		$.ajax({
			url:'limits/findAllLimitsByRoleId?roleId=${id}',
			success:function(result){
				result=JSON.parse(result);
				zTreeObj = $.fn.zTree.init($("#treeDemo"), setting, result);
			}
		});
	});
	function test() {
		var checkedNodes = zTreeObj.getCheckedNodes();
		var data={};
		$(checkedNodes).each(function() {
			if(this.value!=""){
				var url="id="+this.id+"&"+this.value+"=1";
				console.log(url);
			}
		});
	}
</script>
</head>
<body>
	<ul id="treeDemo" class="ztree"></ul>
	<div class="layui-form-item">
				<div class="layui-input-block">
					<button class="layui-btn" lay-submit lay-filter="formDemo" onclick="test()">立即提交</button>
					<button type="reset" class="layui-btn layui-btn-primary" id="reset">重置</button>
				</div>
			</div>
</body>