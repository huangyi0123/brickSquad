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

<title>My JSP 'ProductDetails.jsp' starting page</title>
<link href="resource/plugins/layui/css/layui.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="resource/plugins/bootstrap/bootstrap.min.css"
	rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" type="text/css"
	href="resource/css/ProductDetails.css">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript"
	src="resource/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="resource/plugins/layui/layui.js"></script>
<script type="text/javascript"
	src="resource/plugins/bootstrap/bootstrap.min.js"></script>
<script>
	//Demo
	layui.use('form', function() {
		var form = layui.form;

		//监听提交
		form.on('submit(formDemo)', function(data) {
			layer.msg(JSON.stringify(data.field));
			return false;
		});
	});
</script>
</head>

<body>
	<div class="Pro_body">
		<!----------------------------------------- 商品详情顶部 ----------------------------------------->
		<div class="Pro_header">
			<img alt="" src="resource/image/2.png"
				style="width:80px;height:50px; margin-left: 100px;margin-top: 15px;">
			<div class="btn-group">
				<button type="button" class="btn btn-default dropdown-toggle"
					style="display:block; line-height:10px;margin-top: 40px;"
					data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
					Action <span class="caret"></span>
				</button>
				<ul class="dropdown-menu" style="width: 320px;height: 400px;">
					<li>
						<ul>
							<li><a href="" style="font-weight: bold;">淘宝发现</a></li>
							<li><a href="">淘宝女人</a></li>
							<li><a href="">淘宝男人</a></li>
							<li><a href="">生活居家</a></li>
							<li><a href="">情侣</a></li>
						</ul>
					</li>
					<li>
						<ul>
							<li><a href="" style="font-weight: bold;">男女服饰</a></li>
							<li><a href="">女装</a></li>
							<li><a href="">新品</a></li>
							<li><a href="">裙子</a></li>
							<li><a href="">男装</a></li>
							<li><a href="">T恤</a></li>
							<li><a href="">休闲</a></li>
						</ul>
					</li>
					<li>
						<ul>
							<li><a href="" style="font-weight: bold;">箱包市场</a></li>
							<li><a href="">女包</a></li>
							<li><a href="">男包</a></li>
							<li><a href="">双肩包</a></li>
							<li><a href="">旅行包</a></li>
							<li><a href="">钱包</a></li>
						</ul>
					</li>
					<li>
						<ul>
							<li><a href="" style="font-weight: bold;">日用百货</a></li>
							<li><a href="">热门</a></li>
							<li><a href="">餐具</a></li>
							<li><a href="">饮具</a></li>
							<li><a href="">收纳</a></li>
							<li><a href="">清洁</a></li>
							<li><a href="">日化</a></li>
						</ul>
					</li>
					<li>
						<ul>
							<li><a href="" style="font-weight: bold;">家居家纺</a></li>
							<li><a href="">四件套</a></li>
							<li><a href="">窗帘</a></li>
							<li><a href="">摆件</a></li>
							<li><a href="">花瓶</a></li>
							<li><a href="">沙发</a></li>
							<li><a href="">床</a></li>
						</ul>
					</li>

				</ul>
			</div>
			<div class="input-group"
				style="width: 400px;margin-left: 900px;margin-top: -40px;">
				<input type="text" class="form-control" placeholder="Search for...">
				<span class="input-group-btn">
					<button class="btn btn-default" type="button">搜淘宝</button>
					<button class="btn btn-default" type="button"
						style="margin-left: 2px;">搜本店</button>
				</span>
			</div>
		</div>

		<div class="Pro_midum">
			<ul class="nav nav-pills" style="margin-left: 200px;">
				<li role="presentation" class="dropdown"><a
					class="dropdown-toggle" data-toggle="dropdown" href="#"
					role="button" aria-haspopup="true" aria-expanded="false">
						Dropdown <span class="caret"></span>
				</a>
					<ul class="dropdown-menu TypeAll">
						<li><a href="#">所有宝贝</a></li>
						<li><a href="#">十月新品</a></li>
						<li><a href="#">九月新品</a></li>
						<li><a href="#">八月新品</a></li>
						<li><a href="#">毛呢外套</a></li>
						<li><a href="#">羽绒棉衣棉服</a></li>
						<li><a href="#">西装风衣外套棒球服</a></li>
						<li><a href="#">针织衫 毛衣</a></li>
						<li><a href="#">上装</a></li>
						<li><a href="#">下装</a></li>
						<li><a href="#">裙装</a></li>
						<li><a href="#">套装</a></li>
						<li><a href="#">牛仔外套</a></li>
						<li><a href="#">马甲 背心</a></li>
					</ul></li>
				<li role="presentation"><a href="#">首页</a></li>
				<li role="presentation"><a href="#">店铺活动</a></li>
			</ul>

		</div>

		<div class="Pro_mainbody">
			<div class="jumbotron"
				style="height:150px; background-color: white;text-align: center;">
				<h2>Hello, world!</h2>
			</div>
			<div class="Pro_info">
				<div class="comm_img">
					<a href="#"><img alt="" src="resource/image/3.png"
						style="width: 350px;height: 420px;margin-left: 20px;margin-top: 20px;"></a>
					<div class="comm_imgs">
						<a href="#"><img alt="" src="resource/image/3.png"></a> <a
							href="#"><img alt="" src="resource/image/3.png"></a> <a
							href="#"><img alt="" src="resource/image/3.png"></a> <a
							href="#"><img alt="" src="resource/image/3.png"></a> <a
							href="#"><img alt="" src="resource/image/3.png"></a>
						<div>
							<div style="float: left;">
								<a href="#"
									style="color: #BAAA99;border: none;margin-left: 30px;margin-top: 40px;">
									<i class="glyphicon glyphicon-share"></i> <label
									style="cursor: pointer;">分享</label>
								</a> <a href="#"
									style="display:block; color: #BAAA99;border: none;margin-left: 30px;margin-top: 40px;">
									<i class="glyphicon glyphicon-star"></i> <label
									style="cursor: pointer;">收藏商品</label>
								</a> <label style="font-size: 0.1px;margin-top: 42px;color:#BAAA99;">（1762人气）</label>
							</div>
							<div style="float: left;">
								<a href="#"
									style="display: block; margin-left:70px;margin-top: 38px;border: none;color: #BAAA99;"><label>举报</label></a>
							</div>
						</div>
					</div>
				</div>
				<div class="comm_info">
					<p
						style="width: 400px;margin-left: 30px;margin-top: 20px;font-size:1.2em; font-weight: bold;">珂卡芙2017新款冬季女鞋韩版圆头粗跟长筒靴女中跟女靴964186621@</p>
					<label
						style="margin-left: 30px;margin-top: -5px;color: red;font-size: 0.8em">全国线下3000家实体店</label>
					<div class="comm_backimg">
						<dl>
							<dd>
								<label>价格</label> <label style="margin-left: 50px;">78</label>
							</dd>
							<dd>
								<label>促销价</label> <label style="margin-left: 36px;">60</label>
							</dd>
							<dd>
								<label>本店活动</label> <label style="margin-left: 22px;">满2件，包邮</label>
							</dd>
						</dl>
					</div>
					<label style="display:block; margin-left:30px;margin-top:15px;">运费</label>
					<label style="display:block; margin-left:110px;margin-top: -25px;">浙江温州
						至 </label>
					<div class="btn-group">
						<button type="button" class="btn btn-default dropdown-toggle"
							style="display:block; border: none;margin-left:190px;margin-top: -32px;font-weight: bold;"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="ture">
							南通 <span class="caret"></span>
						</button>
						<ul class="dropdown-menu" style="width: 280px;">
							<li><ul>
									<li class="layui-this"><a href="#">北京</a></li>
									<li><a href="#">天津</a></li>
									<li><a href="#">上海</a></li>
									<li><a href="#">重庆</a></li>
								</ul></li>
							<li><ul>
									<li class="layui-this"><a href="#">河北</a></li>
									<li><a href="#">山西</a></li>
									<li><a href="#">内蒙古</a></li>
									<li><a href="#">辽宁</a></li>
									<li><a href="#">吉林</a></li>
									<li><a href="#">黑龙江</a></li>
								</ul></li>
							<li><ul>
									<li class="layui-this"><a href="#">江苏</a></li>
									<li><a href="#">浙江</a></li>
									<li><a href="#">安徽</a></li>
									<li><a href="#">福建</a></li>
									<li><a href="#">江西</a></li>
									<li><a href="#">山东</a></li>
								</ul></li>
							<li><ul>
									<li class="layui-this"><a href="#">河南</a></li>
									<li><a href="#">湖北</a></li>
									<li><a href="#">湖南</a></li>
									<li><a href="#">广东</a></li>
									<li><a href="#">广西</a></li>
									<li><a href="#">海南</a></li>
								</ul></li>
							<li><ul>
									<li class="layui-this"><a href="#">四川</a></li>
									<li><a href="#">贵州</a></li>
									<li><a href="#">云南</a></li>
									<li><a href="#">西藏</a></li>
									<li><a href="#">陕西</a></li>
									<li><a href="#">甘肃</a></li>
								</ul></li>
							<li><ul>
									<li class="layui-this"><a href="#">青海</a></li>
									<li><a href="#">宁夏</a></li>
									<li><a href="#">新疆</a></li>
									<li><a href="#">台湾</a></li>
									<li><a href="#">香港</a></li>
									<li><a href="#">澳门</a></li>
								</ul></li>
						</ul>
					</div>
					<div
						style="margin-top:8px;margin-left:20px; width: 100%;height: 2px;border-top: 1px #C9C9C9 dashed;"></div>
					<label style="margin-left: 50px;margin-top: 10px;">月销量</label> <label>1235</label>
					<p style="display:block; margin-top: -26px;margin-left: 180px;">|</p>
					<label style="display:block; margin-left: 220px;margin-top: -29px;">累计评价</label>
					<label style="margin-left: 290px;margin-top: -25px;">235</label>
					<p style="margin-top: -26px;margin-left: 350px;">|</p>
					<label style="display:block; margin-left: 390px;margin-top: -29px;">天猫积分</label>
					<label style="margin-left: 460px;margin-top: -25px;">123</label>
					<div
						style="margin-top:7px;margin-left:20px; width: 100%;height: 2px;border-top: 1px #C9C9C9 dashed;"></div>
					<form class="layui-form" action="">
						<div class="layui-form-item">
							<label class="layui-form-label"
								style="font-weight: bold;margin-top: 12px;margin-left: -5px;">尺码</label>
							<div class="layui-input-block myInput">
								<a href="javascript:;" style="margin-left: -1px;" name="size"
									title="S">S</a> <a href="#" name="size" title="M">M</a> <a
									href="#" name="size" title="L">L</a> <a href="#" name="size"
									title="XL">XL</a>
							</div>
						</div>
					</form>
					<form class="layui-form" action="">
						<div class="layui-form-item">
							<label class="layui-form-label"
								style="width:100px; font-weight: bold;margin-top: -5px;margin-left: 2px;">颜色分类</label>
							<div class="layui-input-block">
								<a><img src="resource/image/2.png"
									style="margin-left: -1px;" name="color" title="红色"></a> <a><img
									src="resource/image/2.png" name="color" title="黄色"></a> <a><img
									src="resource/image/2.png" name="color" title="绿色"></a> <a><img
									src="resource/image/2.png" name="color" title="蓝色"></a>
							</div>
						</div>
					</form>
					<label style="margin-left: 30px;">数量</label>
					<input type="number" class="layui-input"
						style=" width: 70px;margin-left: 100px;margin-top: -35px;">
					<label style="display:block; margin-top: -30px;margin-left: 180px;">件</label>
					<label style="display:block; margin-top: -25px;margin-left: 200px;">库存189件</label>
					<input type="submit" value="立即购买"
						style="width: 120px;height: 40px;background-color: white; margin-top: 30px;margin-left: 100px;">
					<input type="submit" value="加入购物车"
						style="width: 120px;height: 40px;background-color: white;margin-top: 30px;margin-left: 40px;">
				</div>

			</div>
		</div>
	</div>
</body>
</html>
