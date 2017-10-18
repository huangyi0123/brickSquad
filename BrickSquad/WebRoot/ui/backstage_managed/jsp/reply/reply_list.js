function init(keyword) {
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
                         text: '评论ID'
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
                template: function(noteData,rowData) {
					return '<a href="'+rowData.id+'">修改</a>';
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
function addUser(id) {
	$("#addUser").click(function() {
		layui.use('layer', function() {
			var layer = layui.layer;
			$.ajax({
				url : "toAddUser",
				data:{"id":id},
				success : function(data) {
					layer.open({
						btn : [ '添加'],
						title : '添加用户',
						content : data,
						yes : function(index) {
							$.ajax({
								type : 'post',
								url : 'addUser',
								data : $("form").serialize(),
								success:function(){
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