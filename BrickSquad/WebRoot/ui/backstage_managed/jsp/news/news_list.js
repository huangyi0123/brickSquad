function init(keyword) {
	var table = document.querySelector('table[grid-manager="demo-ajaxPageCode"]');
    table.GM({
        ajax_url: 'news/getNewsList',
         ajax_type: 'POST',
        query: { pluginId: 1,'keyword':keyword },
        supportAjaxPage: true,
        supportCheckbox: false,
        columnData: [
            {
                key: 'id',
                text: '新闻ID'
            },
            {
                key: 'userId',
                text: '编辑用户ID'
            },
            {
                key: 'content',
                text: '编辑内容'
            },
            {
                key: 'imagePath',
                text: '图片路径'
            },
            {
                key: 'postTime',
                text: '提交时间'
            },
            {
                key: "operation",
                text: "操作",
                template : function(noteData, rowData) {
					return '<a href="news/toAddNews?id='
							+ rowData.id

							+ '"><i title="修改" class="fa fa-pencil-square-o" style="margin-left:55px;"></i></a> &nbsp;|&nbsp; <a onclick=deleteNews("'

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
function deleteNews(id) {
	layui.use('layer', function() {
		var layer = layui.layer;
		layer.open({
			title : '警告',
			content : '是否删除？',
			btn:["确认","取消"],
			yes:function(index){
				$.ajax({
					url:'news/deleteNews?id='+id,
					success:function(data){
						RefreshGridManagerList("");
						layer.close(index);
					}
				});
			}
		});
	});
}