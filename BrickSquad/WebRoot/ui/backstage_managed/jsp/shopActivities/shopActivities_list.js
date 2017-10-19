function init(keyword) {
	var table = document.querySelector('table[grid-manager="demo-ajaxPageCode"]');
    table.GM({
        ajax_url: 'shopActivities/getShopActivitiesList',
         ajax_type: 'POST',
        query: { pluginId: 1,'keyword':keyword },
        supportAjaxPage: true,
        supportCheckbox: false,
        columnData: [
					{
					    key: 'id',
					    text: '序号'
					},
                     {
                         key: 'typeId',
                         text: '活动类型'
                     },
            {
                key: 'startTime',
                text: '开始时间'
            },
            {
                key: 'endTime',
                text: '结束时间'
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
function addShopActivities(id) {
	$("#addShopActivities").click(function() {
		layui.use('layer', function() {
			var layer = layui.layer;
			$.ajax({
				url : "shopActivities/toAddShopActivities",
				data:{"id":id},
				success : function(data) {
					layer.open({
						btn : [ '添加'],
						title : '添加用户',
						content : data,
						yes : function(index) {
							$.ajax({
								type : 'post',
								url : 'addShopActivities',
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