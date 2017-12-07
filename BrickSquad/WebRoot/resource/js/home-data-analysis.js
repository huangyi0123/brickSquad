function main_1(id) {
	console.log(id);
	var myChart = echarts.init(document.getElementById('main_1'));

	$.ajax({
		url : 'echarts/getPerAge?typeId=' + id,
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
					data : [ data[0].a, data[0].b, data[0].c, data[0].d,
							data[0].e, data[0].f, data[0].g ]
				} ]
			};

			// 使用刚指定的配置项和数据显示图表。
			myChart.setOption(option);
		}
	});

}
function main_2(id) {
	// 基于准备好的dom，初始化echarts实例
	var myChart = echarts.init(document.getElementById('main_2'));
	$.ajax({
		url : 'echarts/consumptionSituation?id=' + id,
		success : function(data) {
			data = JSON.parse(data);
			// 指定图表的配置项和数据
			option = {
				    title: {
				        text: '人数'
				    },
				    tooltip : {
				        trigger: 'axis',
				        axisPointer: {
				            type: 'cross',
				            label: {
				                backgroundColor: '#6a7985'
				            }
				        }
				    },
				    toolbox: {
				        feature: {
				            saveAsImage: {}
				        }
				    },
				    grid: {
				        left: '3%',
				        right: '4%',
				        bottom: '3%',
				        containLabel: true
				    },
				    xAxis : [
				        {
				            type : 'category',
				            boundaryGap : false,
				            data : [ "500元以下", "500-999元", "1000-2999元", "3000-5000元",
										"5000-9999元", "10000元及以上" ]
				        }
				    ],
				    yAxis : [
				        {
				            type : 'value'
				        }
				    ],
				    series : [
				        {
				            name:'人数',
				            type:'line',
				            areaStyle: {normal: {}},
				            data:[ data[0].a, data[0].b, data[0].c, data[0].d,
									data[0].e, data[0].f ]
				        }
				    ]
				};

			// 使用刚指定的配置项和数据显示图表。
			myChart.setOption(option);
		}
	});

}
function main_3(typeId, bid) {
	console.log(typeId);
	// 基于准备好的dom，初始化echarts实例
	var myChart = echarts.init(document.getElementById('main_3'));
	$.ajax({
		url : 'echarts/findEchartsAreac?typeId=' + typeId + '&bid=' + bid,
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
					text : '产品销售总数量'
				},
				tooltip : {
					trigger : 'axis'
				},
				legend : {
					data : [ '销售量' ]
				},
				grid : {
					left : '3%',
					right : '4%',
					bottom : '3%',
					containLabel : true
				},
				toolbox : {
					feature : {
						saveAsImage : {}
					}
				},
				xAxis : {
					type : 'category',
					boundaryGap : false,
					data :name
				},
				yAxis : {
					type : 'value'
				},
				series : [ {
					name : '产品销售量',
					type : 'line',
					stack : '总量',
					data : num
				} ]
			};
			// 使用刚指定的配置项和数据显示图表。
			myChart.setOption(option);
		}
	});

}