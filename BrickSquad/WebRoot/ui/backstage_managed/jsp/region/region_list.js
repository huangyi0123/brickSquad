function init(keyword) {
	var table = document.querySelector('table[grid-manager="demo-ajaxPageCode"]');
    table.GM({
        ajax_url: 'region/getRegionList',
         ajax_type: 'POST',
        query: { pluginId: 1,'keyword':keyword },
        supportAjaxPage: true,
        supportCheckbox: false,
        columnData: [
            {
                key: 'name',
                text: '名称'
            },
            {
                key: "operation",
                text: "操作",
                template: function(noteData,rowData)  {
					return '<a href="'
					+ rowData.id

					+ '"><i title="修改" class="fa fa-pencil-square-o" style="margin-left:85px;"></i></a> &nbsp;|&nbsp; <a href="'

					+ rowData.id
					+ '"><i title="删除" class="fa fa-trash-o" style="margin-right:5px;"></i></a>';
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
function addRegion(id) {
	$("#addRegion").click(function() {
		console.log("id");
		layui.use('layer', function() {
			var layer = layui.layer;
			$.ajax({
				url : "region/toAddRegion",
				data:{"id":id},
				success : function(data) {
					layer.open({
						btn : [ '添加'],
						title : '添加区域',
						content : data,
						yes : function(index) {
							$.ajax({
								type : 'post',
								url : 'addRegion',
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