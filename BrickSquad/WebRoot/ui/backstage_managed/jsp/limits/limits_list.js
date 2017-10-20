function init(keyword) {
	var table = document
			.querySelector('table[grid-manager="demo-ajaxPageCode"]');
	table
			.GM({
				ajax_url : 'limits/getLimitsList',
				ajax_type : 'POST',
				query : {
					pluginId : 1,
					'keyword' : keyword
				},
				supportAjaxPage : true,
				supportCheckbox : false,
				columnData : [
						{
							key : 'tablename',
							text : '表名'
						},
						{
							key : 'roleId',
							text : '角色id'
						},
						,
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
function addLimits(id) {
	$("#addLimits").click(function() {
		layui.use('layer', function() {
			var layer = layui.layer;
			$.ajax({
				url : "limits/addLimits",
				data : {
					"id" : id
				},
				success : function(data) {
					layer.open({
						btn : [ '添加' ],
						title : '添加活动',
						content : data,
						yes : function(index) {
							$.ajax({
								type : 'post',
								url : 'addLimits',
								data : $("form").serialize(),
								success : function() {
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