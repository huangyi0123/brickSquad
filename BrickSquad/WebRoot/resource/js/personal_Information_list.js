function findRegionByParentId(parent_id, select_id) {

	$.ajax({
		url : 'region/findRegionByParentId',
		data : {
			'parantId' : parent_id
		},
		success : function(data) {
			data = JSON.parse(data);
			console.log(data);
			$(data).each(
					function() {
						$(select_id).append(
								'<option value="' + this.id + '">' + this.name
										+ '</option>');

					});
		}
	});

}
function init(keyword, up, del, query) {
	var table = document
			.querySelector('table[grid-manager="demo-ajaxPageCode"]');
	table
			.GM({
				ajax_url : 'personalInformation/getPersonalInformationList',
				ajax_type : 'POST',
				query : {
					pluginId : 1,
					'keyword' : keyword
				},
				supportAjaxPage : true,
				supportCheckbox : false,
				columnData : [
						{
							key : 'name',
							text : '姓名'

						},
						{
							key : 'nationId',
							text : '民族'
						},
						{
							key : 'birthday',
							text : '出生日期'
						},
						{
							key : 'idCard',
							text : '身份证号码'
						},
						{
							key : 'engagedIndustry',
							text : '从事行业'
						},
						{
							key : 'marriageId',
							text : '婚姻状况'
						},
						{
							key : 'zip',
							text : '邮编'
						},
						{
							key : 'gender',
							text : '性别'
						},
						{
							key : "operation",
							text : "操作",
							template : function(noteData, rowData) {
							var s = '<span class="optron">';
							if (up) {
								s = s
										+ '<a href="personalInformation/toUpdatePersonalInformation?id='
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
										+ '<a href="personalInformation/findAllThereById?id='

										+ rowData.id
										+ '"><i title="查看详情" class="fa fa-eye""></i></a>';
							}
							s = s + "</span>"
							return s;
						}
						
						
						
						
						
						} ]
			});
}
function deleteById(id) {
	layui
			.use(
					'layer',
					function() {
						var layer = layui.layer;
						layer
								.open({
									title : '警告',
									content : '是否删除？',
									btn : [ "确认", "取消" ],
									yes : function(index) {
										$
												.ajax({
													url : 'personalInformation/deletePersonalInformationById?id='
															+ id,
													success : function(data) {
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