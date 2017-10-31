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
	$(function() {
		$.ajax({
			url:'limits/findAllLimitsByRoleId?roleId=12',
			success:function(result){
				result=JSON.parse(result);
				zTreeObj = $.fn.zTree.init($("#treeDemo"), setting, result);
			}
		});
	});
	function test() {
		var checkedNodes = zTreeObj.getCheckedNodes();
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
	<button onclick="test()">test</button>
</body>