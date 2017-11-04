function init(keyword) {
	var table = document
			.querySelector('table[grid-manager="demo-ajaxPageCode"]');
	table.GM({
		ajax_url : 'relatives/usergetRelativesList',
		ajax_type : 'POST',
		query : {
			pluginId : 1,
			'keyword' : keyword
		},
		supportAjaxPage : true,
		supportCheckbox : false,
		columnData : [ {
			key : 'relativesPeopleName',
			text : '亲属姓名'
		}, {
			key : 'relativesName',
			text : '与本人关系'
		},{
			key : 'relativesTelephone',
			text : '亲属电话号码'
		},
		 {
			key : 'relativesPeopleAddressName',
			text : '家庭住址'
		}, 
		{
			key : "operation",
			text : "操作",
			template : function(noteData, rowData)   {
				return '<a href="relatives/userToAddRelatives?id='
				+ rowData.relativesId

				+ '"><i title="修改" class="fa fa-pencil-square-o" style="margin-left:85px;"></i></a> &nbsp;|&nbsp; <a onclick=deleteById("'

				+ rowData.relativesId
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
function deleteById(id) {
	layui.use('layer', function() {
		var layer = layui.layer;
		layer.open({
			title : '警告',
			content : '是否删除？',
			btn:["确认","取消"],
			yes:function(index){
				$.ajax({
					url:'relatives/userDeleteRelativesById?id='+id,
					success:function(data){
						RefreshGridManagerList("");
						layer.close(index);
					}
				});
			}
		});
	});
}