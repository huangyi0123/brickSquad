function init(keyword) {
	var table = document.querySelector('table[grid-manager="demo-ajaxPageCode"]');
    table.GM({
        ajax_url: 'rapport/getRapportList',
         ajax_type: 'POST',
        query: { pluginId: 1,'keyword':keyword },
        supportAjaxPage: true,
        supportCheckbox: false,
        columnData: [
            {
                key: 'name',
                text: '老人姓名'
            },
            {
                key: 'username',
                text: '客户姓名'
            },
           
            {
                key: 'goal',
                text: '沟通目标'
            },
            {
                key: 'content',
                text: '沟通内容'
            },
            {
                key: 'rapportDate',
                text: '沟通日期'
            },
            {
                key: 'period',
                text: '沟通时长'
            },
           
            {
                key: "operation",
                text: "操作",
                template : function(noteData, rowData) {
					return '<a href="rapport/toAddRapport?id='
							+ rowData.id

							+ '"><i title="修改" class="fa fa-pencil-square-o" style="margin-left:55px;"></i></a> &nbsp;|&nbsp; <a onclick=deleteRapportById("'

							+ rowData.id
							+ '")><i title="删除" class="fa fa-trash-o" style="margin-right:5px;"></i></a>';
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
function addRapport(id) {

	$("#addRapport").click(function() {
		console.log("id");
		layui.use('layer', function() {
			var layer = layui.layer;
			$.ajax({
				url : "rapport/toAddRapport",
				data : {
					"id" : id
				},
				success : function(data) {
					layer.open({
						btn : [ '添加' ],
						title : '添加老人客户沟通信息',
						content : data,
						yes : function(index) {
							$.ajax({
								type : 'post',
								url : 'addRapport',
								data : $("form").serialize(),
								success : function() {
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

function deleteRapportById(id) {
	layui.use('layer', function() {
		var layer = layui.layer;
		layer.open({
			title : '警告',
			content : '是否删除？',
			btn:["确认","取消"],
			yes:function(index){
				$.ajax({
					url:'rapport/deleteRapportById?id='+id,
					success:function(data){
						RefreshGridManagerList("");
						layer.close(index);
					}
				});
			}
		});
	});
}