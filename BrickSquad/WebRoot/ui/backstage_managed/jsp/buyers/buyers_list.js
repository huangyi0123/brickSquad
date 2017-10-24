function init(keyword) {
	var table = document.querySelector('table[grid-manager="demo-ajaxPageCode"]');
    table.GM({
        ajax_url: 'buyers/getBuyersList',
         ajax_type: 'POST',
        query: { pluginId: 1,'keyword':keyword },
        supportAjaxPage: true,
        supportCheckbox: false,
        columnData: [
            {
                key: 'currentIntegral',
                text: '当前积分'
            },
            {
                key: 'historicalIntegral',
                text: '历史积分'
            },
            {
                key: 'grade',
                text: '等级'
            },
            {
            	key: 'deliveryAddressId',
                text: '详细地址'
            },
            {
                key: "operation",
                text: "操作",
                template: function(noteData,rowData)  {
					return '<a href="'
					+ rowData.id

					+ '"><i title="修改" class="fa fa-pencil-square-o" style="margin-left:85px;"></i></a> &nbsp;|&nbsp; <a onclick=deleteById("'

					+ rowData.id
					+ '")><i title="删除" class="fa fa-trash-o" style="margin-right:5px;"></i></a>';
		}
            }
        ]
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
		var keyword=$("#keyword").val();
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
					url:'buyers/deleteBuyersById?id='+id,
					success:function(data){
						RefreshGridManagerList("");
						layer.close(index);
					}
				});
			}
		});
	});
}