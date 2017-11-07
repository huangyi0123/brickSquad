function init(keyword) {
	var table = document
			.querySelector('table[grid-manager="demo-ajaxPageCode"]');
	table
			.GM({
				ajax_url : 'orderDetails/getOrderDetailsList',
				ajax_type : 'POST',
				query : {
					pluginId : 1,
					'keyword' : keyword
				},
				supportAjaxPage : true,
				supportCheckbox : false,
				columnData : [
						{
							key : 'articleAname',

							text : '商品'
						},
						{
							key : 'number',
							text : '商品数量'
						},
						{
							key : 'subtotal',
							text : '小计'
						},
						{
							key : "operation",
							text : "操作",
							template : function(noteData, rowData) {
								return '<span class="optron"><a href="orderDetails/findOrdersDetailsById?id='


							+ rowData.id
							+ '")><i title="删除" class="fa fa-trash-o" style="margin-right:5px;"></i></a>&nbsp;';
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
		if (keyword.trim() == '') {
			RefreshGridManagerList('');
		}
		RefreshGridManagerList(keyword);
	});

}
function deleteOrdersDetails(id) {
	layui.use('layer', function() {
		var layer = layui.layer;
		layer.open({
			title : '警告',
			content : '是否删除？',
			btn : [ "确认", "取消" ],
			yes : function(index) {
				$.ajax({
					url : 'orderDetails/deleteOrdersDetails?id=' + id,
					success : function(data) {
						RefreshGridManagerList("");
						layer.close(index);
					}
				});
			}
		});
	});
}
