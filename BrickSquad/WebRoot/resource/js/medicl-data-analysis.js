function main_1(id) {
	var myChart = echarts.init(document.getElementById('main_1'));

	$.ajax({
		url : 'echarts/medicalType?typeId=' + id,
		success : function(data) {
			data = JSON.parse(data);
			console.log(data);
			var d = [];
			var name = [];
			$(data).each(function() {
				var a = {
					'value' : this.n,
					'name' : this.name
				};
				d.push(a);
				name.push(this.name);
			});
			option = {
				tooltip : {
					trigger : 'item',
					formatter : "{b}: {c} ({d}%)"
				},
				legend : {
					orient : 'vertical',
					x : 'left',
					data : name
				},
				series : [ {
					name : '访问来源',
					type : 'pie',
					radius : [ '30%', '70%' ],
					avoidLabelOverlap : false,
					label : {
						normal : {
							show : false,
							position : 'center'
						},
						emphasis : {
							show : true,
							textStyle : {
								fontSize : '30',
								fontWeight : 'bold'
							}
						}
					},
					labelLine : {
						normal : {
							show : false
						}
					},
					data : d
				} ]
			};

			myChart.setOption(option);
		}
	});

}