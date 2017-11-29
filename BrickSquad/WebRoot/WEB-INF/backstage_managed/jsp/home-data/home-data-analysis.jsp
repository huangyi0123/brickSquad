<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<script type="text/javascript" src="resource/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="resource/js/home-data-analysis.js"></script>
<script src="resource/plugins/laysui/layui.js"></script>
<script type="text/javascript">
	$(function() {
		$(".deploy").click(function() {
			var cal = $(this).attr('val');
			$(cal).slideToggle();
		});
		$(".myclose").click(function() {
			var cal = $(this).attr('val');
			$(cal).hide();
		});

		main_1('');
		main_2('');
		layui.use('form', function() {
			var form = layui.form;
			form.on('select(region)', function(data) {
				main_1(data.value);
			});
			form.on('select(regioncos)', function(data) {
				main_2(data.value);
			});
		});
	});
</script>
</head>

<body style="width: 96%;margin: auto;margin-top: 20px;">

	<div class="home_body">
		<div class="home1 row">
			<div class="col-md-6 perAge">
				<div class="panel_header_1 title-icon">
					<b>老年人年龄结构分析图</b>
					<ul class="icon_lists clear">
						<li class="deploy" val=".home_1">
							<i class="icon iconfont icon-gobottom"></i>
						</li>
						<li class="myclose" val=".perAge">
							<i class="icon iconfont icon-guanbi"></i>
						</li>
					</ul>
				</div>
				<div class="home_1">
					<form action="" class="layui-form">
						<div class="layui-inline">

							<div class="layui-inline">
								<label class="layui-form-label" style="display: block;width: 100px">区域范围：</label>
								<div class="layui-input-inline " style="width: 150px">
									<select lay-filter="region" name="city" lay-verify="required">
										<option value="">所有分店</option>
										<c:forEach items="${region }" var="a">
											<option value="${a.id }">${a.name }</option>
										</c:forEach>
									</select>
								</div>
							</div>
						</div>
					</form>
					<div id="main_1"></div>
					<script type="text/javascript">
						
					</script>
				</div>
			</div>

			<!-- P2SP子系统封堵量模块 -->
			<div class="col-md-6 perxiaofei">
				<div class="panel_header_2 title-icon">
					<b>老年人消费结构分析图</b>
					<ul class="icon_lists clear">
						<li class="deploy" val=".home_2" title="展开/收缩">
							<i class="icon iconfont icon-gobottom"></i>
						</li>
						<li class="myclose" val=".perxiaofei" title="关闭">
							<i class="icon iconfont icon-guanbi"></i>
						</li>
					</ul>
				</div>
				<div class="home_2">
					<form action="" class="layui-form">
						<div class="layui-inline">
							<!-- <div class="layui-inline">
								<label class="layui-form-label" style="display: block;width: 100px">时间范围：</label>
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
							</div> -->
							<div class="layui-inline">
								<label class="layui-form-label" style="display: block;width: 100px">区域范围：</label>
								<div class="layui-inline" style="width: 150px">
									<select lay-filter="regioncos" name="city" lay-verify="required">
										<option value="">所有分店</option>
										<c:forEach items="${region }" var="a">
											<option value="${a.id }">${a.name }</option>
										</c:forEach>
									</select>
								</div>
							</div>
						</div>
					</form>
					<div id="main_2" style="width: 600px;height:300px;"></div>
					<script type="text/javascript">
						
					</script>
				</div>
			</div>
		</div>
		<!-- 配置日志总数量模块 -->
		<div class="row">
			<div class="col-md-12 cpxs">
				<div class="panel_header_3 title-icon">
					<b>产品销售总数量</b>
					<ul class="icon_lists clear">
						<li class="deploy" val=".home_3" title="展开/收缩">
							<i class="icon iconfont icon-gobottom"></i>
						</li>
						<li class="myclose" val=".cpxs" title="关闭">
							<i class="icon iconfont icon-guanbi"></i>
						</li>
					</ul>
				</div>
				<div class="home_3">
					<form action="" class="layui-form">
						<div class="layui-inline">
							<div class="layui-inline">
								<label class="layui-form-label" style="display: block;width: 100px">时间范围：</label>
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
								<label class="layui-form-label" style="display: block;width: 100px">区域范围：</label>
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
							} ]
						};
						// 使用刚指定的配置项和数据显示图表。
						myChart.setOption(option);
					</script>
				</div>
			</div>
		</div>
	</div>

	</script>
</body>
</html>
