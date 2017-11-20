function init(keyword, up, del, query) {
	var table = document.querySelector('table[grid-manager="demo-ajaxPageCode"]');
	table.GM({
		ajax_url : 'relatives/getRelativesList',
		ajax_type : 'POST',
		query : {
			pluginId : 1,
			'keyword' : keyword
		},
		supportAjaxPage : true,
		supportCheckbox : false,
		columnData : [ {
			key : 'name',
			text : '亲属姓名'
		}, {
			key : 'perId',
			text : '老人姓名'
		}, {
			key : 'relationshipId',
			text : '亲属关系'
		}, {
			key : 'telephone',
			text : '亲属电话号码'
		},  {
			key : "operation",
			text : "操作",
			template : function(noteData, rowData)	{
			var s = '<span class="optron">';
			if (up) {
				s = s
						+ '<a href="relatives/toAddRelatives?id='
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
						+ '<a href="relatives/searchRelatives?id='

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
function deleteById(id) {
	layui.use('layer', function() {
		var layer = layui.layer;
		layer.open({
			title : '警告',
			content : '是否删除？',
			btn:["确认","取消"],
			yes:function(index){
				$.ajax({
					url:'relatives/deleteRelativesById?id='+id,
					success:function(data){
						RefreshGridManagerList("");
						layer.close(index);
					}
				});
			}
		});
	});
}