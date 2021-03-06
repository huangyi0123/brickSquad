function init(keyword, up, del, query) {
	var table = document
			.querySelector('table[grid-manager="demo-ajaxPageCode"]');
	table
			.GM({
				ajax_url : 'userVedio/getUserVedioList',
				ajax_type : 'POST',
				query : {
					pluginId : 1,
					'keyword' : keyword
				},
				supportAjaxPage : true,
				supportCheckbox : false,
				columnData : [

						{
							key : 'title',
							text : '标题'
						},

						{
							key : 'posttime',
							text : '上传时间'
						},
						{
							key : "operation",
							text : "操作",
							template : function(noteData, rowData) {
								var s = '<span class="optron">';
								if (up) {
									s = s
											+ '<a href="type/toAddType?id='
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
function serach() {
	$("#serach").click(function() {
		var keyword = $("#keyword").val();
		console.log(keyword);
		if (keyword.trim() == '') {
			RefreshGridManagerList('');
		}
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
					url : 'type/deleteTypeById?id=' + id,
					success : function(data) {
						RefreshGridManagerList("");
						layer.close(index);
					}
				});
			}
		});
	});
}
