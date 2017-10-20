function init(keyword) {
	var table = document
			.querySelector('table[grid-manager="demo-ajaxPageCode"]');
	table
			.GM({
				ajax_url : 'medical/getMedicalList',
				ajax_type : 'POST',
				query : {
					pluginId : 1,
					'keyword' : keyword
				},
				supportAjaxPage : true,
				supportCheckbox : false,
				columnData : [
						{
							key : 'hospital',
							text : '检查医院'
						},
						{
							key : 'typeId',
							text : '检查类型'
						},
						{
							key : 'inspectionDate',
							text : '检查日期'
						},
						{
							key : 'attendingSurgeon',
							text : '主治医师'
						},
						{
							key : 'content',
							text : '病历详情'
						},
						{
							key : "operation",
							text : "操作",
							template : function(noteData, rowData) {
								return '<a href="medical/toAddMedical?id='
								+ rowData.id

								+ '"><i title="修改" class="fa fa-pencil-square-o" style="margin-left:85px;"></i></a> &nbsp;|&nbsp; <a onclick=deleteById("'

								+ rowData.id
								+ '")><i title="删除" class="fa fa-trash-o" style="margin-right:5px;"></i></a>';
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
								url:'medical/deleteMedicalById?id='+id,
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
	$("#serach").click(function() {
		var keyword = $("#keyword").val();
		RefreshGridManagerList(keyword);
	});
}