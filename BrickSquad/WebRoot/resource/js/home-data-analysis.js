function main_1(id) {
	console.log(id);
	var myChart = echarts.init(document.getElementById('main_1'));

	$.ajax({
		url : 'echarts/getPerAge?typeId='+id,
		success : function(data) {
			data = JSON.parse(data);
			console.log(data);
			
			// 指定图表的配置项和数据
			var option = {
				title : {
					text : '老年人人数'
				},
				tooltip : {},
				legend : {
					data : [ '人数' ]
				},
				xAxis : {
					data : [ "50岁以下", "50-59岁", "60-69岁", "70-79岁", "80-89岁",
							"90-99岁", "100岁及以上" ]
				},
				yAxis : {},
				series : [ {
					name : '人数',
					type : 'bar',
					data : [data[0].a,data[0].b,data[0].c,data[0].d,data[0].e,data[0].f,data[0].g]
				} ]
			};

			// 使用刚指定的配置项和数据显示图表。
			myChart.setOption(option);
		}
	});

}