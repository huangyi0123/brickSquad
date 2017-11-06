function init(keyword) {
	var table = document.querySelector('table[grid-manager="demo-ajaxPageCode"]');
    table.GM({
        ajax_url: 'collection/getCollectionList',
         ajax_type: 'POST',
        query: { pluginId: 1,'keyword':keyword },
        supportAjaxPage: true,
        supportCheckbox: false,
        columnData: [
            {
                key: 'personalInformationName',
                text: '买家名称'
            },
            {
                key: 'articleAname',
                text: '商品名称'
            },
            {
                key: 'colDate',
                text: '收藏日期'
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
	$("#serach").click(function () {
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
					url : 'collection/deleteCollectionById?id=' + id,
					success : function(data) {
						RefreshGridManagerList("");
						layer.close(index);
					}
				});
			}
		});
	});
}