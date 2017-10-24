function init(keyword) {
	var table = document.querySelector('table[grid-manager="demo-ajaxPageCode"]');
    table.GM({
        ajax_url: 'activities/getActivitiesList',
         ajax_type: 'POST',
        query: { pluginId: 1,'keyword':keyword },
        supportAjaxPage: true,
        supportCheckbox: false,
        columnData: [
                     {
                         key: 'name',
                         text: '活动名称'
                     },
                    {
                         key: 'tname',
                         text: '活动类型'
                     },
            {
                key: 'number',
                text: '参会人数'
            },
            
            {
                key: 'username',
                text: '负责人'
            },
            {
                key: 'centent',
                text: '活动内容'
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
					return '<a href="activities/toAddActivities?id='
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
function addActivities(id) {
	$("#addActivities").click(function() {
		layui.use('layer', function() {
			var layer = layui.layer;
			$.ajax({
				url : "activities/toAddActivities",
				data:{"id":id},
				success : function(data) {
					layer.open({
						btn : [ '添加'],
						title : '添加活动',
						content : data,
						yes : function(index) {
							$.ajax({
								type : 'post',
								url : 'addActivities',
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
function deleteById(id) {
	layui.use('layer', function() {
		var layer = layui.layer;
		layer.open({
			title : '警告',
			content : '是否删除？',
			btn:["确认","取消"],
			yes:function(index){
				$.ajax({
					url:'activities/deleteActivitiesById?id='+id,
					success:function(data){
						RefreshGridManagerList("");
						layer.close(index);
					}
				});
			}
		});
	});
}