function init(keyword, up, del, query) {
	var table = document.querySelector('table[grid-manager="demo-ajaxPageCode"]');
    table.GM({
        ajax_url: 'reply/getReplyList',
         ajax_type: 'POST',
        query: { pluginId: 1,'keyword':keyword },
        supportAjaxPage: true,
        supportCheckbox: false,
        columnData: [
                     {
                         key: 'ratedId',
                         text: '评论用户'
                     },
            {
                key: 'replyDate',
                text: '回复时间'
            },
            {
                key: 'centent',
                text: '回复内容'
            },
            {
                key: "operation",
                text: "操作",
                template: function(noteData,rowData)  {
        			var s = '<span class="optron">';
        			
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
            }
        ]
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
					url:'reply/deleteReplyById?id='+id,
					success:function(data){
						RefreshGridManagerList("");
						layer.close(index);
					}
				});
			}
		});
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