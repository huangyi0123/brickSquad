function init(keyword) {
	var table = document.querySelector('table[grid-manager="demo-ajaxPageCode"]');
    table.GM({
        ajax_url: 'shoppingCar/getShoppingCarList',
         ajax_type: 'POST',
        query: { pluginId: 1,'keyword':keyword },
        supportAjaxPage: true,
        supportCheckbox: false,
        columnData: [
             {
                key: 'name',
                text: '买家姓名'
             },
            {
                key: 'aname',
                text: '商品名称'
            },
           
            {
                key: 'number',
                text: '商品数量'
            },
            {
                key: 'date',
                text: '生成时间'
            },
            {
                key: "operation",
                text: "操作",
                template : function(noteData, rowData) {
					return '<a href="shoppingCar/toAddShoppingCar?id='
							+ rowData.id

							+ '"><i title="修改" class="fa fa-pencil-square-o" style="margin-left:85px;"></i></a> &nbsp;|&nbsp; <a onclick=deleteShoppingCar("'

							+ rowData.id
							+ '")><i title="删除" class="fa fa-trash-o" style="margin-right:5px;"></i></a>&nbsp;|&nbsp; <a href="shoppingCar/findShoppingCarAndUserAndPsersonalInformationById?id='

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
function addShoppingCar(id) {

	$("#addShoppingCar").click(function() {
		console.log("id");
		layui.use('layer', function() {
			var layer = layui.layer;
			$.ajax({
				url : "shoppingCar/toAddShoppingCar",
				data : {
					"id" : id
				},
				success : function(data) {
					layer.open({
						btn : [ '添加' ],
						title : '添加购物车信息',
						content : data,
						yes : function(index) {
							$.ajax({
								type : 'post',
								url : 'addShoppingCar',
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
function deleteShoppingCar(id) {
	layui.use('layer', function() {
		var layer = layui.layer;
		layer.open({
			title : '警告',
			content : '是否删除？',
			btn:["确认","取消"],
			yes:function(index){
				$.ajax({
					url:'shoppingCar/deleteShoppingCar?id='+id,
					success:function(data){
						RefreshGridManagerList("");
						layer.close(index);
					}
				});
			}
		});
	});
}
