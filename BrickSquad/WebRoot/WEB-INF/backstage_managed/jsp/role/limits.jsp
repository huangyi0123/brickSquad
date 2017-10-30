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
	var zNodes = [ {
		name : "用户表",
		tId : "user",
		open : true,
		checked : true,
		children : [ {
			name : "删除",
			id : "user"
		}, {
			name : "修改"
		} ]
	}, {
		name : "老人信息表",
		open : true,
		children : [ {
			name : "删除"
		}, {
			name : "修改"
		} ]
	} ];
	$(document).ready(function() {
		zTreeObj = $.fn.zTree.init($("#treeDemo"), setting, zNodes);

	});
	function test() {
		var checkedNodes = zTreeObj.getCheckedNodes();
		console.log(checkedNodes);
	}
</script>
</head>
<body>
	<ul id="treeDemo" class="ztree"></ul>
	<button onclick="test()">test</button>
</body>