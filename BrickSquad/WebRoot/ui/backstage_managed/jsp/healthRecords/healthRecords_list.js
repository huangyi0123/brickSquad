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
function addHealthRecords(id) {

	$("#addHealthRecords").click(function() {
		console.log("id");
		layui.use('layer', function() {
			var layer = layui.layer;
			$.ajax({
				url : "healthRecords/toAddHealthRecords",
				data : {
					"id" : id
				},
				success : function(data) {
					layer.open({
						btn : [ '添加' ],
						title : '添加老人健康档案',
						content : data,
						yes : function(index) {
							$.ajax({
								type : 'post',
								url : 'addHealthRecords',
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
