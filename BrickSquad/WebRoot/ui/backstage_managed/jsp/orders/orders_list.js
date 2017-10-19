function init(keyword) {
	var table = document.querySelector('table[grid-manager="demo-ajaxPageCode"]');
    table.GM({
        ajax_url: 'orders/getOrdersList',
         ajax_type: 'POST',
        query: { pluginId: 1,'keyword':keyword },
        supportAjaxPage: true,
        supportCheckbox: false,
        columnData: [
            {
                key: 'no',
                text: '运单号'
            },
            {
                key: 'stateId',
                text: '状态'
            },
            {
                key: 'productionDate',
                text: '订单生产日期'
            },
            {
                key: 'number',
                text: '数量'
            },
            {
                key: 'money',
                text: '总额'
            },
            {
                key: "operation",
                text: "操作",
                template : function(noteData, rowData) {
					return '<a href="'
							+ rowData.id

							+ '"><i title="修改" class="fa fa-pencil-square-o" style="margin-left:70px;"></i></a> &nbsp;|&nbsp; <a href="'

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
function addOrders(id) {

	$("#addOrders").click(function() {
		console.log("id");
		layui.use('layer', function() {
			var layer = layui.layer;
			$.ajax({
				url : "orders/toAddOrders",
				data : {
					"id" : id
				},
				success : function(data) {
					layer.open({
						btn : [ '添加' ],
						title : '添加订单',
						content : data,
						yes : function(index) {
							$.ajax({
								type : 'post',
								url : 'addOrders',
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
		var keyword=$("#keyword").val();
		RefreshGridManagerList(keyword);
	});
}