function main_1(id) {
	var myChart = echarts.init(document.getElementById('main_1'));

	$.ajax({
		url : 'echarts/activleType?typeId=' + id,
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
					text : '参与人数'
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
function main_2() {
	var myChart = echarts.init(document.getElementById('main_2'));

	$.ajax({
		url : 'echarts/findActiveEchartsN',
		success : function(data) {
			data = JSON.parse(data);
			console.log(data);
			var d=[];
			var name=[];
			$(data).each(function() {
				var a={
						'value':this.n,
						'name':this.name
				};
				d.push(a);
				name.push(this.name);
			});
			console.log(d);
			// 指定图表的配置项和数据
			option = {
				    title : {
				        text: '活动数量统计',
				        x:'center'
				    },
				    tooltip : {
				        trigger: 'item',
				        formatter: "{a} <br/>{b} : {c} ({d}%)"
				    },
				    legend: {
				        orient: 'vertical',
				        left: 'left',
				        data: name
				    },
				    series : [
				        {
				            name: '访问来源',
				            type: 'pie',
				            radius : '55%',
				            center: ['50%', '60%'],
				            data:d,
				            itemStyle: {
				                emphasis: {
				                    shadowBlur: 10,
				                    shadowOffsetX: 0,
				                    shadowColor: 'rgba(0, 0, 0, 0.5)'
				                }
				            }
				        }
				    ]
				};
			myChart.setOption(option);
		}
	});

}