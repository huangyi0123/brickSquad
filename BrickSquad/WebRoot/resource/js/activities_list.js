function init(keyword, up, del, query) {
	var table = document
			.querySelector('table[grid-manager="demo-ajaxPageCode"]');
	table
			.GM({
				ajax_url : 'activities/getActivitiesList',
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
							text : '活动名称'
						},
						{
							key : 'tname',
							text : '活动类型'
						},
						{
							key : 'number',
							text : '参会人数'
						},

						{
							key : 'username',
							text : '负责人'
						},
						{
							key : 'centent',
							text : '活动内容'
						},
						{
							key : 'startTime',
							text : '开始时间'
						},
						{
							key : 'endTime',
							text : '结束时间'
						},
						{
							key : "operation",
							text : "操作",
							template : function(noteData, rowData) {
							var s = '<span class="optron">';
							if (up) {
								s = s
										+ '<a href="activities/toAddActivities?id='
										+ rowData.id
										+ '"><i title="修改" class="fa fa-pencil-square-o"></i></a>';
							}
							if (del) {
								if (up) {
									s = s + '&nbsp;|&nbsp; ';
								}
								s = s
										+ '<a href="javascript:;" onclick=deleteById("'
										+ rowData.id
										+ '")><i title="删除" class="fa fa-trash-o"></i></a>';
							}
							
							s = s + "</span>"
							return s;
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
function serach() {
	$("#serach").click(function() {
		var keyword = $("#keyword").val();
		RefreshGridManagerList(keyword);
	});
}
function deleteById(id) {
	layui.use('layer', function() {
		var layer = layui.layer;
		layer.open({
			title : '警告',
			content : '是否删除？',
			btn : [ "确认", "取消" ],
			yes : function(index) {
				$.ajax({
					url : 'activities/deleteActivitiesById?id=' + id,
					success : function(data) {
						RefreshGridManagerList("");
						layer.close(index);
					}
				});
			}
		});
	});
}