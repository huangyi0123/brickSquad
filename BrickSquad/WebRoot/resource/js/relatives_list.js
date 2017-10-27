function init(keyword) {
	var table = document
			.querySelector('table[grid-manager="demo-ajaxPageCode"]');
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
			text : '姓名'
		}, {
			key : 'telephone',
			text : '联系方式'
		}, {
			key : 'addressId',
			text : '地址'
		}, {
			key : 'relationshipId',
			text : '亲属关系'
		},  {
			key : "operation",
			text : "操作",
			template : function(noteData, rowData)  {
				return '<a href="'
				+ rowData.id

				+ '"><i title="修改" class="fa fa-pencil-square-o" style="margin-left:85px;"></i></a> &nbsp;|&nbsp; <a href="'

				+ rowData.id
				+ '"><i title="删除" class="fa fa-trash-o" style="margin-right:5px;"></i></a>';
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