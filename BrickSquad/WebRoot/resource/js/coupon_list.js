function init(keyword) {
	var table = document
			.querySelector('table[grid-manager="demo-ajaxPageCode"]');
	table.GM({
		ajax_url : 'coupon/getCouponList',
		ajax_type : 'POST',
		query : {
			pluginId : 1,
			'keyword' : keyword
		},
		supportAjaxPage : true,
		supportCheckbox : false,
		columnData : [ {
			key : 'bName',
			text : '商家店铺名'
		},{
			key : 'tName',
			text : '优惠券类型'
		}, {
			key : 'total',
			text : '总量'
		},{
			key : 'surplus',
			text : '余量'
		},{
			key : 'startTime',
			text : '开始时间'
		}, {
			key : 'endTime',
			text : '结束时间'
		},  {
			key : "operation",
			text : "操作",
			template : function(noteData, rowData)   {
				return '<a href="coupon/toAddCoupon?id='
				+ rowData.id

				+ '"><i title="修改" class="fa fa-pencil-square-o" style="margin-left:85px;"></i></a> &nbsp;|&nbsp; <a onclick=deleteById("'

				+ rowData.id
				+ '")><i title="删除" class="fa fa-trash-o" style="margin-right:5px;"></i></a>&nbsp;|&nbsp; <a href="coupon/searchCoupon?id='

				+ rowData.id
				+ '"><i title="查看详情" class="fa fa-eye" style="margin-right:5px;"></i></a>';
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
					url:'coupon/deleteCouponById?id='+id,
					success:function(data){
						RefreshGridManagerList("");
						layer.close(index);
					}
				});
			}
		});
	});
}