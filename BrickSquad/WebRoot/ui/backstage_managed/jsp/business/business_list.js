function init(keyword) {
	var table = document
			.querySelector('table[grid-manager="demo-ajaxPageCode"]');
	table
			.GM({
				ajax_url : 'business/getBusinessList',
				ajax_type : 'POST',
				query : {
					pluginId : 1,
					'keyword' : keyword
				},
				supportAjaxPage : true,
				supportCheckbox : false,
				columnData : [
						{
							key : 'name',
							text : '商家姓名'
						},
						{
							key : 'idcard',
							text : '商家信息id'
						},
						{
							key : 'shopname',
							text : '商家店铺名称'
						},
						{
							key : 'shopMaterialPath',
							text : '商家材料来源'
						},
						{
							key : "operation",
							text : "操作",
							template : function(noteData, rowData) {
								return '<a href="'
										+ rowData.id
										+ '"><i  class="fa fa-pencil-square-o" style="margin-right:5px;margin-left:10px"></i>修改</a> &nbsp;|&nbsp; <a href="'
										+ rowData.id
										+ '"><i class="fa fa-trash-o" style="margin-right:5px;"></i>删除</a>';
							}
						} ]
			});
}
function RefreshGridManagerList(keyword) {
	$(".table-div").remove();
	$(".page-toolbar").remove();
	$(".cls").append('<table grid-manager="demo-ajaxPageCode"></table>');
	init(keyword);
}
function addBusiness(id) {
	
	$("#addBusiness").click(function() {
		console.log("id");
		layui.use('layer', function() {
			var layer = layui.layer;
			$.ajax({
				url : "business/toAddBusiness",
				data:{"id":id},
				success : function(data) {
					layer.open({
						btn : [ '添加'],
						title : '添加商家',
						content : data,
						yes : function(index) {
							$.ajax({
								type : 'post',
								url : 'addBusiness',
								data : $("form").serialize(),
								success:function(){
									layer.close(index);
									RefreshGridManagerList("");
								}
							});
						}
					});
				}
			});
		});
	});
}
function serach() {
	$("#serach").click(function() {
		var keyword = $("#keyword").val();
		RefreshGridManagerList(keyword);
	});
}
