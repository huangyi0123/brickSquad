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
							key : 'aname',
							text : '商品名称'
						},
						{
							key : 'tname',
							text : '商品类型'
						},
						{
							key : 'price',
							text : '价格'
						},
						{
							key : 'stock',
							text : '库存'
						},
						{
							key : 'bname',
							text : '店铺名'
						},					
						{
							key : "operation",
							text : "操作",
							template : function(noteData, rowData) {
								return '<a href="article/toAddArticle?id='
								+ rowData.id

								+ '"><i title="修改" class="fa fa-pencil-square-o" style="margin-left:85px;"></i></a> &nbsp;|&nbsp; <a onclick=deleteById("'

								+ rowData.id
								+ '")><i title="删除" class="fa fa-trash-o" style="margin-right:5px;"></i></a> &nbsp;|&nbsp; <a href="article/findArticleById?id='
								
								+ rowData.id
								+ '"><i title="查看详情" class="fa fa-eye" style="margin-right:5px;"></i></a>';
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
	$("#serach").click(function () {
		var keyword = $("#keyword").val();
		RefreshGridManagerList(keyword);
	});
	
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
function deleteById(id) {
	layui.use('layer', function() {
		var layer = layui.layer;
		layer.open({
			title : '警告',
			content : '是否删除？',
			btn:["确认","取消"],
			yes:function(index){
				$.ajax({
					url:'article/deleteArticleById?id='+id,
					success:function(data){
						console.log(data);
						RefreshGridManagerList("");
						layer.closeAll();
					}
				});
			}
		});
	});
}