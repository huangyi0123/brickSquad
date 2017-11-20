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

<title>官网模板</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href='https://fonts.googleapis.com/css?family=Varela+Round'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
<link href="resource/plugins/bootstrap/bootstrap.css" rel="stylesheet">
<link href="resource/plugins/laysui/css/layui.css" rel="stylesheet">
<link href="resource/css/website-template.css" rel="stylesheet">
<script type="text/javascript"
	src="resource/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="resource/plugins/laysui/layui.js"></script>
<script type="text/javascript">
	$(function() {
		$("#menu").find("li").click(function() {
			$(".tem_main_right").html($(this).html());
		});
	});
</script>
</head>

<body>
	<div class="template_body">
		<jsp:include page="official-header.jsp"></jsp:include>
		<div class="template_img">
			<img alt="" src="resource/image/3_2.png">
		</div>
		<div class="template_main">
			<div class="tem_main_left">
				<ul class="layui-nav layui-nav-tree layui-inline" lay-filter="demo"
					style="margin-right: 10px;" id="menu">
					<li class="layui-nav-item layui-this"><a href="javascript:;">乐堡简介</a></li>
					<div style="width: 100%;height: 1px;background-color: #CCCCCC;"></div>
					<li class="layui-nav-item"><a href="javascript:;">快速上手</a></li>
					<div style="width: 100%;height: 1px;background-color: #CCCCCC;"></div>
					<li class="layui-nav-item"><a href="javascript:;">加入我们</a></li>
					<div style="width: 100%;height: 1px;background-color: #CCCCCC;"></div>
					<li class="layui-nav-item"><a href="javascript:;">联系我们</a></li>
					<div style="width: 100%;height: 1px;background-color: #CCCCCC;"></div>
				</ul>

				<label
					style="width: 90%;height: 50px;letter-spacing:8px; font-size:1.4em;text-align:center;line-height:50px;border-radius:5px; margin: 80px 15px;background-color: #43C1B4;"><a
					href="#" style="color:white;font-stretch: normal;">在线参与</a></label>
			</div>
			<!-- <div class="clearfix"></div> -->
			<div class="tem_main_right">
				<div class="aboutus-intro">
					<h4>乐堡 —— 持续全程照料型养老社区</h4>
					<p>星堡，即星堡（上海）投资咨询有限公司，由复星集团和美国峰堡集团于2012年合资成立，以“改善中国老年生活方式”为己任，立志于成为中国养老服务行业的领导者，为中国长者提供最好的养老服务！星堡也是上海现代服务业联合会养老服务专业委员会副主任单位。
					</p>
					<p>星堡拥有丰富的养老运营经验，将为您提供完善的配套设施、丰富的文娱活动，专业的医疗服务，让您的晚年生活变得丰富多彩。我们的一站式全程服务与训练有素的24小时服务团队，随时为您待命。我们有由高级营养师与特聘厨师组成的膳食团队，采用新鲜、天然的原料为您准备营养美味的一日三餐。在星堡，您将感受前所未有的健康与活力！</p>
				<h4>养老机构</h4>
				<p>上海第一家同时拥有外商投资许可、工商企业法人执照和民政局颁发的养老机构许可证的养老机构。</p>
				<p>星堡中环养老社区（一期）</p>
				<p>2013年5月正式开业，位于宝山大场镇区域，是星堡在上海的第一个持续照料退休社区（CCRC社区），即从独立居住、协助护理到临终关怀的一站式服务社区。总面积18,000平方米，共有189个独立居住房间，30个双人居住的协助护理床位，目前已有超过300位长者成功入住星堡，97%的超高入住率。</p>
				<p>星堡中环养老社区（二期）</p>
				<p>新建90,000平方米的老年公寓社区，可容纳约900户长者。紧邻已成功营运并有数百名长者入住的星堡中环一期项目，根据一期经验改进的宜老设施，并将保持一贯高品质的服务水准。</p>
				<p>星堡浦江养老社区</p>
				<p>位于闵行浦江镇中心位置，地铁8号线联航路直达。社区总建筑面积约60,000平方米，周边生活娱乐设施一应俱全，三公里内可达仁济医院南院、家乐福、红星美凯龙，是星堡在上海的第三个持续照料型退休社区（CCRC社区），已于2016年3月底正式交房，并于2016年6月6日正式开业。</p>
				<h4>管理咨询</h4>
				<p>众多长者入住星堡社区或接受星堡居家服务后，明显体验到健康状况与生活质量的提升，这让我们对星堡模式更有信心。为造福更多中国长者，我们愿与其他有志于养老产业的企业分享我们在养老事业道路上的经验与优势。星堡已为国内多个养老地产投资与开发商提供了专业的养老咨询顾问服务和第三方管理服务，遍布北京、天津、上海、大连、宁波、杭州等城市。</p>
				<h4>居家护理</h4>
				<p>位于上海市浦东新区博山东路20弄28号的“星堡居家”，是为广大长者推出的又一优质养老服务品牌。</p>
				<p>围绕构建“9073”养老服务格局，星堡通过开拓居家养老服务，强调家庭的养老功能，使长者在熟悉的环境中接受高质量，全方位的护理服务。通过专业评估，为长者度身定制个性化，多元化的照护服务方案，并开发智能化应用软件，提供网络跟踪平台，使儿女能实时掌控父母的身体照护情况，保证我们的服务安心到家。</p>
				<h4>股东方介绍：</h4>
				<p>美国峰堡集团(Fortress)是一家全球领先的投资管理集团（纽交所股票代码：FIG），培育了三家美国最大的养老产业运营商： Brookdale Living（自理、护理全程服务）， Holiday Retirement（自理）和Blue Harbor（护理），他们在北美拥有1500多家养老社区，目前有十几万会员入住，拥有30多年丰富的养老服务经验。</p>
				<p>复星集团是中国最大的民营综合集团之一（股票代码00656. HK），在房地产、卫生保健和医药行业拥有丰富的资源，旗下有中国最大医药集团之一复星医药,著名连锁药店品牌复美大药房，并投资美中互利等高端医疗品牌（和睦家医院）。</p>
				</div>
			</div>
			<div class="aboutus-use">
			
			</div>
		</div>
		<div class="clearfix"></div>

		<jsp:include page="official-footer.jsp"></jsp:include>

	</div>
	<script>
		$("span.menu").click(function() {
			$("ul.nav1").slideToggle(300, function() {
				// Animation complete.
			});
		});
	</script>
	<script src="resource/plugins/bootstrap/bootstrap.js"></script>
	<script>
		layui.use('element', function() {
			var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块

			//监听导航点击
			element.on('nav(demo)', function(elem) {
				//console.log(elem)
				layer.msg(elem.text());
			});
		});
	</script>
</body>
</html>
