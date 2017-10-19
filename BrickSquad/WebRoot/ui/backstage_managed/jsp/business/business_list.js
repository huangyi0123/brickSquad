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

										+ '"><i title="修改" class="fa fa-pencil-square-o" style="margin-left:85px;"></i></a> &nbsp;|&nbsp; <a href="'

										+ rowData.id
										+ '"><i title="删除" class="fa fa-trash-o" style="margin-right:5px;"></i></a>';
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
		layui.use('layer', function() {
			layer.open({
				title : '添加商家信息',
				type : 2,
				content : 'business/toAddBusiness',
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
