<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'home-data-analysis.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="resource/css/Home.css" rel="stylesheet" type="text/css" />
<link href="resource/css/hui.css" rel="stylesheet" type="text/css" />
<link href="resource/css/iconfont.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="resource/plugins/laysui/css/layui.css">
<link href="resource/plugins/bootstrap/bootstrap.css" rel="stylesheet" type="text/css" />
<script src="resource/plugins/ECharts/echarts.min.js"></script>
</head>

<body>

	<div class="home_body">
		<!-- <p style="margin-top: 5px;margin-left: 2px;">
			<font size="1px" style="font-weight: bold;">音视频子系统封堵量</font>
		</p> -->
		<!-- 音视频子系统封堵量模块 -->
		<div class="home1 row">
			<div class="col-md-6">
				<div class="panel_header_1 title-icon">
					<b>老年人年龄结构分析图</b>
					<ul class="icon_lists clear">
						<li><i class="icon iconfont icon-gobottom"></i></li>
						<li><i class="icon iconfont icon-guanbi"></i></li>
					</ul>
				</div>
				<div class="home_1">
					<form action="" class="layui-form">
						<div class="layui-inline">
							<div class="layui-inline">
								<label class="layui-form-label"
									style="display: block;width: 100px">时间范围：</label>
								<div class="layui-input-inline " style="width: 150px">
									<select name="city" lay-verify="required">
										<option value=""></option>
										<option value="0">不限时间</option>
										<option value="1">春季</option>
										<option value="2">夏季</option>
										<option value="3">秋季</option>
										<option value="4">冬季</option>
									</select>
								</div>
							</div>
							<div class="layui-inline">
								<label class="layui-form-label"
									style="display: block;width: 100px">区域范围：</label>
								<div class="layui-input-inline " style="width: 150px">
									<select name="city" lay-verify="required">
										<option value=""></option>
										<option value="0">所有区域</option>
										<option value="1">一公里内</option>
										<option value="2">五公里内</option>
										<option value="3">十公里内</option>
									</select>
								</div>
							</div>
						</div>
					</form>
					<div id="main_1"></div>
					<script type="text/javascript">
						// 基于准备好的dom，初始化echarts实例
						var myChart = echarts.init(document
								.getElementById('main_1'));

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
								data : [ "50-59岁", "60-69岁", "70-79岁", "80-89岁", "90-99岁", "100岁及以上" ]
							},
							yAxis : {},
							series : [ {
								name : '人数',
								type : 'bar',
								data : [ 5, 20, 36, 10, 10, 20 ]
							} ]
						};

						// 使用刚指定的配置项和数据显示图表。
						myChart.setOption(option);
					</script>
				</div>
			</div>

			<!-- P2SP子系统封堵量模块 -->
			<div class="col-md-6">
				<div class="panel_header_2 title-icon">
					<b>老年人消费结构分析图</b>
					<ul class="icon_lists clear">
						<li><i class="icon iconfont icon-gobottom"></i></li>
						<li><i class="icon iconfont icon-guanbi"></i></li>
					</ul>
				</div>
				<div class="home_2">
					<form action="" class="layui-form">
						<div class="layui-inline">
							<div class="layui-inline">
								<label class="layui-form-label"
									style="display: block;width: 100px">时间范围：</label>
								<div class="layui-inline" style="width: 150px">
									<select name="city" lay-verify="required">
										<option value=""></option>
										<option value=""></option>
										<option value="0">不限时间</option>
										<option value="1">春季</option>
										<option value="2">夏季</option>
										<option value="3">秋季</option>
										<option value="4">冬季</option>
									</select>
								</div>
							</div>
							<div class="layui-inline">
								<label class="layui-form-label"
									style="display: block;width: 100px">区域范围：</label>
								<div class="layui-inline" style="width: 150px">
									<select name="city" lay-verify="required">
										<option value=""></option>
										<option value="0">所有区域</option>
										<option value="1">一公里内</option>
										<option value="2">五公里内</option>
										<option value="3">十公里内</option>
									</select>
								</div>
							</div>
						</div>
					</form>
					<div id="main_2" style="width: 600px;height:300px;"></div>
					<script type="text/javascript">
						// 基于准备好的dom，初始化echarts实例
						var myChart = echarts.init(document
								.getElementById('main_2'));

						// 指定图表的配置项和数据
						var option = {
							title : {
								text : '消费量'
							},
							tooltip : {},
							legend : {
								data : [ '消费量' ]
							},
							xAxis : {
								data : [ "500元以下", "500-999元", "1000-2999元", "3000-5000元", "5000-9999元", "10000元及以上" ]
							},
							yAxis : {},
							series : [ {
								name : '消费量',
								type : 'bar',
								data : [ 5, 20, 36, 10, 10, 20 ]
							} ]
						};

						// 使用刚指定的配置项和数据显示图表。
						myChart.setOption(option);
					</script>
				</div>
			</div>
		</div>

		<!-- <p style="margin-top: 430px;margin-left: 2px;">
			<font size="1px" style="font-weight: bold;">配置日志总数量</font>
		</p> -->
		<!-- 配置日志总数量模块 -->
		<div class="row">
			<div class="col-md-12">
				<div class="panel_header_3 title-icon">
					<b>产品销售总数量</b>
					<ul class="icon_lists clear">
						<li><i class="icon iconfont icon-gobottom"></i></li>
						<li><i class="icon iconfont icon-guanbi"></i></li>
					</ul>
				</div>
				<div class="home_3">
					<form action="" class="layui-form">
						<div class="layui-inline">
							<div class="layui-inline">
								<label class="layui-form-label"
									style="display: block;width: 100px">时间范围：</label>
								<div class="layui-input-inline " style="width: 150px">
									<select name="city" lay-verify="required">
										<option value=""></option>
										<option value="0">不限时间</option>
										<option value="1">春季</option>
										<option value="2">夏季</option>
										<option value="3">秋季</option>
										<option value="4">冬季</option>
									</select>
								</div>
							</div>
							<div class="layui-inline">
								<label class="layui-form-label"
									style="display: block;width: 100px">区域范围：</label>
								<div class="layui-input-inline" style="width: 150px">
									<select name="city" lay-verify="required">
										<option value=""></option>
										<option value="0">所有区域</option>
										<option value="1">一公里内</option>
										<option value="2">五公里内</option>
										<option value="3">十公里内</option>
									</select>
								</div>
							</div>
						</div>
					</form>
					<div id="main_3"></div>
					<script type="text/javascript">
						// 基于准备好的dom，初始化echarts实例
						var myChart = echarts.init(document
								.getElementById('main_3'));

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
								data : [ '保健品', '药品', '衣服', '运动器械', '配饰', '周六',
										'周日' ]
							},
							yAxis : {
								type : 'value'
							},
							series : [ {
								name : '产品销售量',
								type : 'line',
								stack : '总量',
								data : [ 120, 132, 101, 134, 90, 230, 210 ]
							},
							/* {
							    name:'联盟广告',
							    type:'line',
							    stack: '总量',
							    data:[220, 182, 191, 234, 290, 330, 310]
							},
							{
							    name:'视频广告',
							    type:'line',
							    stack: '总量',
							    data:[150, 232, 201, 154, 190, 330, 410]
							},
							{
							    name:'直接访问',
							    type:'line',
							    stack: '总量',
							    data:[320, 332, 301, 334, 390, 330, 320]
							},
							{
							    name:'搜索引擎',
							    type:'line',
							    stack: '总量',
							    data:[820, 932, 901, 934, 1290, 1330, 1320]
							} */
							]
						};
						// 使用刚指定的配置项和数据显示图表。
						myChart.setOption(option);
					</script>
				</div>
			</div>
		</div>
	</div>
	<script src="resource/plugins/laysui/layui.js"></script>
	<!-- <script type="text/javascript">
		layui.use('form', function() {
			var form = layui.form(); //只有执行了这一步，部分表单元素才会修饰成功

			//……
		});
	</script> -->
	<script src="resource/js/Home.js">
	
	</script>
</body>
</html>
