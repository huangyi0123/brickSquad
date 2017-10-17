function init(keyword) {
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
			key : 'registrDate',
			text : '登记时间'
		}, {
			key : 'userId',
			text : '登记人ID'
		}, {
			key : 'diseaseId',
			text : '所患疾病ID'
		}, {
			key : 'shape',
			text : '身体状况'
		}, {
			key : 'dietSituation',
			text : '饮食情况'
		}, {
			key : 'sportsSituation',
			text : '运动情况'
		}, {
			key : 'emotionControl',
			text : '情绪控制'
		}, {
			key : 'thrombus',
			text : '血栓检测'
		}, {
			key : 'bloodPressure',
			text : '血压'
		}, {
			key : 'healthAssessment',
			text : '健康评估'
		}, {
			key : 'dangerousTips',
			text : '危险提示'
		}, {
			key : 'conclusionSuggestion',
			text : '结论建议'
		}, {
			key : 'evaluate',
			text : '治疗效果评价'
		},

		{
			key : "operation",
			text : "操作",
			template : function(noteData, rowData) {
				return '<a href="' + rowData.id + '">修改</a>';
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
function addUser(id) {
	$("#addUser").click(function() {
		layui.use('layer', function() {
			var layer = layui.layer;
			$.ajax({
				url : "toAddUser",
				data : {
					"id" : id
				},
				success : function(data) {
					layer.open({
						btn : [ '添加' ],
						title : '添加用户',
						content : data,
						yes : function(index) {
							$.ajax({
								type : 'post',
								url : 'addUser',
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
		var keyword = $("#keyword").val();
		RefreshGridManagerList(keyword);
	});
}