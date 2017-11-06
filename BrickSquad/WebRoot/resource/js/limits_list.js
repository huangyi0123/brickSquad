function init(keyword) {
	var table = document
			.querySelector('table[grid-manager="demo-ajaxPageCode"]');
	table
			.GM({
				ajax_url : 'limits/getLimitsList',
				ajax_type : 'POST',
				query : {
					pluginId : 1,
					'keyword' : keyword
				},
				supportAjaxPage : true,
				supportCheckbox : false,
				columnData : [
						{
							key : 'tablename',
							text : '表名'
						},
						{
							key : 'roleName',
							text : '角色'
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
function serach() {
	$("#serach").click(function () {
		var keyword = $("#keyword").val();
		console.log(keyword)
		RefreshGridManagerList(keyword);
	});
	
}

