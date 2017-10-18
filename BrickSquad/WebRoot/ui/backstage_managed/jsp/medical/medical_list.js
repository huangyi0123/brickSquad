function init(keyword) {
	var table = document
			.querySelector('table[grid-manager="demo-ajaxPageCode"]');
	table
			.GM({
				ajax_url : 'medical/getMedicalList',
				ajax_type : 'POST',
				query : {
					pluginId : 1,
					'keyword' : keyword
				},
				supportAjaxPage : true,
				supportCheckbox : false,
				columnData : [
						{
							key : 'hospital',
							text : '检查医院'
						},
						{
							key : 'typeId',
							text : '检查类型'
						},
						{
							key : 'inspectionDate',
							text : '检查日期'
						},
						{
							key : 'attendingSurgeon',
							text : '主治医师'
						},
						{
							key : 'content',
							text : '病历详情'
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
function addMedical(id) {
	$("#addMedical").click(function() {
		console.log("id");
		layui.use('layer', function() {
			var layer = layui.layer;
			$.ajax({
				url : "medical/toAddMedical",
				data : {
					"id" : id
				},
				success : function(data) {
					layer.open({
						btn : [ '添加' ],
						title : '添加病历',
						content : data,
						yes : function(index) {
							$.ajax({
								type : 'post',
								url : 'addMedical',
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