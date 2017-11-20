function init(keyword, up, del, query) {
	var table = document
			.querySelector('table[grid-manager="demo-ajaxPageCode"]');
	table.GM({
		ajax_url : 'healthRecords/getHealthRecordsList',
		ajax_type : 'POST',
		query : {
			pluginId : 1,
			'keyword' : keyword
		},
		supportAjaxPage : true,
		supportCheckbox : false,
		columnData : [ {
			key : 'pname',
			text : '老人姓名'
		},
		{
			key : 'pgender',
			text : '性别'
		},{
			key : 'username',
			text : '登记人'
		},{
			key : 'registrDate',
			text : '登记时间'
		}, {

			key : 'diseaseId',
			text : '所患疾病'
		}, {
			key : 'shape',
			text : '身体状况'
		},  {
			key : 'conclusionSuggestion',
			text : '结论建议'
		},

		{
			key : "operation",
			text : "操作",
			template : function(noteData, rowData)  {
			var s = '<span class="optron">';
			if (up) {
				s = s
						+ '<a href="healthRecords/toAddHealthRecords?id='
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
			if (query) {
				if (up || del) {
					s = s + '&nbsp;|&nbsp; ';
				}
				s = s
						+ '<a href="healthRecords/serachHealthRecords?id='

						+ rowData.id
						+ '"><i title="查看详情" class="fa fa-eye""></i></a>';
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
function deleteHealthRecordsById(id) {
	layui.use('layer', function() {
		var layer = layui.layer;
		layer.open({
			title : '警告',
			content : '是否删除？',
			btn:["确认","取消"],
			yes:function(index){
				$.ajax({
					url:'healthRecords/deleteHealthRecordsById?id='+id,
					success:function(data){
						RefreshGridManagerList("");
						layer.close(index);
					}
				});
			}
		});
	});
}

