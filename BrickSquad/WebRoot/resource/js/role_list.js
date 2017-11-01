function init(keyword) {
	var table = document.querySelector('table[grid-manager="demo-ajaxPageCode"]');
    table.GM({
        ajax_url: 'role/getRoleList',
         ajax_type: 'POST',
        query: { pluginId: 1,'keyword':keyword },
        supportAjaxPage: true,
        supportCheckbox: false,
        columnData: [
            {
                key: 'name',
                text: '角色名称'
            },
            {
            	 key: "operation",
                text: "操作",
                template : function(noteData, rowData) {
					return '<a href="role/toAddRole?id='
							+ rowData.id

							+ '"><i title="修改" class="fa fa-pencil-square-o" style="margin-left:270px;"></i></a> &nbsp;|&nbsp; <a onclick=deleteRole("'

							+ rowData.id
							+ '")><i title="删除" class="fa fa-trash-o" style="margin-right:5px;"></i></a>&nbsp;|&nbsp; <a href="role/findRoleById?id='

							+ rowData.id
							+ '"><i title="查看详情" class="fa fa-eye" style="margin-right:5px;"></i></a>&nbsp;|&nbsp; <a href="common/toLimits?id='

							+ rowData.id
							+ '"><i title="权限分配" class="fa fa-user" style="margin-right:5px;"></i></a>';
				}
            }]
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
function deleteRole(id) {
	layui.use('layer', function() {
		var layer = layui.layer;
		layer.open({
			title : '警告',
			content : '是否删除？',
			btn:["确认","取消"],
			yes:function(index){
				$.ajax({
					url:'role/deleteRole?id='+id,
					success:function(data){
						RefreshGridManagerList("");
						layer.close(index);
					}
				});
			}
		});
	});
}