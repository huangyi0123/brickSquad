function main_1(id) {
	console.log(id);
	var myChart = echarts.init(document.getElementById('main_1'));

	$.ajax({
		url : 'echarts/medicalType?typeId=' + id,
		success : function(data) {
			data = JSON.parse(data);
			var num=[];
			var name=[];
			$(data).each(function() {
				num.push(this.n);
				name.push(this.name);
			});

			// 指定图表的配置项和数据
			var option = {
				title : {
					text : '人数'
				},
				tooltip : {},
				legend : {
					data : [ '人数' ]
				},
				xAxis : {
					data : name
				},
				yAxis : {},
				series : [ {
					name : '人数',
					type : 'bar',
					data :num
				} ]
			};

			// 使用刚指定的配置项和数据显示图表。
			myChart.setOption(option);
		}
	});

}