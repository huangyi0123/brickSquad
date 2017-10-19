function init(keyword) {
	var table = document
			.querySelector('table[grid-manager="demo-ajaxPageCode"]');
	table
			.GM({
				ajax_url : 'article/getArticleList',
				ajax_type : 'POST',
				query : {
					pluginId : 1,
					'keyword' : keyword
				},
				supportAjaxPage : true,
				supportCheckbox : false,
				columnData : [
						{
							key : 'id',
							text : '编号'
						},
						{
							key : 'name',
							text : '商品名称'
						},
						{
							key : 'describes',
							text : '描述内容'
						},
						{
							key : "image",
							text : "图片显示",
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
function addArticle(id) {
	$("#addArticle").click(function() {
		layui.use('layer', function() {
			var layer = layui.layer;
			$.ajax({
				url : "artcle/toAddArticle",
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
								url : 'addArticle',
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