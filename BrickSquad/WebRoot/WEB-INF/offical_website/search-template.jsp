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
		var type='${type}';
		$("#centent").find('div').hide();
		$("."+type).show();
		$("#menu").find('li').each(function() {
			var val=$(this).attr('val');
			if(val==type){
				$(this).attr('class','layui-nav-item layui-this');
			}
		});
		$("#menu").find('li').click(function() {
			var cls="."+$(this).attr('val');
			$("#centent").find('div').hide();
			$(cls).show();
		});
	});
	function openOnlineParticipation() {
		$("#centent").find('div').hide();
		$("#menu").find('li').each(function() {
				$(this).attr('class','layui-nav-item');
		});
		$(".parti-online").show();
	}
</script>
</head>

<body>
	<div class="template_body">
		<jsp:include page="official-header.jsp"></jsp:include>
		<div class="template_main">
			<div class="tem_main_left">
				<ul class="layui-nav layui-nav-tree layui-inline" lay-filter="demo"
					style="margin-right: 10px;" id="menu">
					<li class="layui-nav-item" val="aboutus-intro"><a href="javascript:;" >社区</a></li>
					 <div style="width: 100%;height: 1px;background-color: #CCCCCC;" ></div>
				</ul>

				<label
					style="width: 90%;height: 50px;letter-spacing:8px; font-size:1.4em;text-align:center;line-height:50px;border-radius:5px; margin: 80px 15px;background-color: #43C1B4;margin-top:180px;"><a
					href="common/toWebsiteTemplate?type=aboutus-intro" onclick="openOnlineParticipation()" style="color:white;font-stretch: normal;">乐宝简介</a></label>
					<label
					style="width: 90%;height: 50px;letter-spacing:8px; font-size:1.4em;text-align:center;line-height:50px;border-radius:5px; margin: 80px 15px;background-color: #C2D468;margin-top:-30px;"><a
					href="common/toWebsiteTemplate?type=aboutus-cont" onclick="openOnlineParticipation()" style="color:white;font-stretch: normal;">联系我们</a></label>
			</div>
			<!-- <div class="clearfix"></div> -->
			<div class="tem_main_right" id="centent">
			
				<div class="aboutus-intro">
					<h4>搜索到的结果</h4>
					<ul style="margin-left:3%;line-height:32px;margin-top:22px;">
					<li><a href><span>花溪区</span><span style="margin-left:86%">点击详情</span></a></li>
					<hr style="margin-top:-4px;">
					<li><a href><span>花溪区</span><span style="margin-left:86%">点击详情</span></a></li>
					<hr style="margin-top:-4px;">
					<li><a href><span>花溪区</span><span style="margin-left:86%">点击详情</span></a></li>
					<hr style="margin-top:-4px;">
					<center>
					<a href="" ><span> < 上一页</span></a>
					<input type="text" value="1" style="padding-left:6px;border:none;width:20px;height:18px;background: #EBEBEC" readonly="readonly">
					<a href="" ><span>下一页  ></span></a>
					</center>
					</ul>
				</div>
				 <div class="parti-online">
					<h4>欢迎来到星堡大家庭！我们将给您发送社区相关信息和活动更新，包括宣传册、优惠券和健康小贴士等。</h4>
					<label>* 姓名：</label>
					<div class="layui-input-inline">
						<input type="tel" name="phone" lay-verify="required|phone"
							autocomplete="off" class="layui-input">
					</div>
					<label>* 联系方式：</label>
					<div class="layui-input-inline">
						<input type="tel" name="phone" lay-verify="required|phone"
							autocomplete="off" class="layui-input">
					</div>
					<label>* 邮箱：</label>
					<div class="layui-input-inline">
						<input type="tel" name="phone" lay-verify="required|phone"
							autocomplete="off" class="layui-input">
					</div>
					<label>年龄：</label>
					<div class="layui-input-inline">
						<input type="tel" name="phone" lay-verify="required|phone"
							autocomplete="off" class="layui-input">
					</div>
					<form class="layui-form" action="">
						<div class="layui-form-item">
							<label>是否与家人一起住：</label>
							<div class="layui-input-block"
								style="margin-left: 260px;margin-top: -30px;">
								<input type="radio" name="sex" value="在一起" title="在一起"
									checked="">
								<input type="radio" name="sex" value="不在一起" title="不在一起">
							</div>
						</div>
					</form>

					<form class="layui-form" action="">
						<div class="layui-form-item" pane="">
							<label>需要参加什么活动：</label>
							<div class="layui-input-block" style="margin-left: 260px;margin-top: -26px;">
								<input type="checkbox" name="like1[write]" lay-skin="primary"
									title="宣传册" checked="">
								<input type="checkbox" name="like1[read]" lay-skin="primary"
									title="养生常识">
								<input type="checkbox" name="like1[game]" lay-skin="primary"
									title="乐堡新闻">
								<input type="checkbox" name="like1[activity]" lay-skin="primary"
									title="宣传活动">
								<input type="checkbox" name="like1[deal]" lay-skin="primary"
									title="优惠活动">
							</div>
						</div>
					</form>

					<form class="layui-form" action="" style="position:relative; margin-top: -500px;">
						<div class="layui-form-item" pane="">
							<label>需要什么样的养老服务：</label>
							<div class="layui-input-block" style="margin-left: 260px;margin-top: -26px;">
								<input type="checkbox" name="like1[write]" lay-skin="primary"
									title="体检预约" checked="">
								<input type="checkbox" name="like1[read]" lay-skin="primary"
									title="生活助手">
								<input type="checkbox" name="like1[write]" lay-skin="primary"
									title="独立生活">
								<input type="checkbox" name="like1[read]" lay-skin="primary"
									title="康复协助">
								<input type="checkbox" name="like1[read]" lay-skin="primary"
									title="其他">

							</div>
						</div>
					</form>
					<input value="提交信息"
						style="display:block; text-align:center;font-size:1.2em;color:white; width: 150px;height: 35px;background-color: #A6F1E9;border: 1px solid #A6F1E9;border-radius:5px;margin-left: 210px;margin-top: -500px;">
					<input value="重置"
						style="text-align:center;font-size:1.2em;color:white; width: 150px;height: 35px;background-color: #D5D5D6;border: 1px solid #D5D5D6;border-radius:5px;margin-left: 440px;margin-top: -35px;">
				</div>

			</div>
			<div class="clearfix"></div> 

			<jsp:include page="official-footer.jsp"></jsp:include>

		</div>
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
			});
		});
		layui.use('form', function() {
			var form = layui.form;
		});
	</script>
</body>
</html>
