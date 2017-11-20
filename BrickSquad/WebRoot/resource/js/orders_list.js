function init(keyword, up, del, query) {
	var table = document.querySelector('table[grid-manager="demo-ajaxPageCode"]');
    table.GM({
        ajax_url: 'orders/getOrdersList',
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
    			var s = '<span class="optron">';
    			if (up) {
    				s = s
    						+ '<a href="orders/toAddOrders?id='
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
	$("#serach").click(function () {
		var keyword = $("#keyword").val();
		if (keyword.trim()=='') {
			RefreshGridManagerList('');
		}
		RefreshGridManagerList(keyword);
	});
	
}
function deleteOrders(id) {
	layui.use('layer', function() {
		var layer = layui.layer;
		layer.open({
			title : '警告',
			content : '是否删除？',
			btn:["确认","取消"],
			yes:function(index){
				$.ajax({
					url:'orders/deleteOrders?id='+id,
					success:function(data){
						RefreshGridManagerList("");
						layer.close(index);
					}
				});
			}
		});
	});
}