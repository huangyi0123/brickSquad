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

<title>乐堡生活</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<!-- <link href='https://fonts.googleapis.com/css?family=Varela+Round' rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'> -->
<link href="resource/plugins/bootstrap/bootstrap.css" rel="stylesheet">
<link href="resource/plugins/laysui/css/layui.css" rel="stylesheet">
<link href="resource/css/website-template.css" rel="stylesheet">
<script type="text/javascript" src="resource/js/common.js"></script>
<script type="text/javascript"
	src="resource/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="resource/plugins/laysui/layui.js"></script>
<script type="text/javascript" src="resource/js/life.js"></script>
<script type="text/javascript">
	$(function() {
		var type = '${type}';
		$("#centent").children().hide();
		$("." + type).show();
		if (type == 'nutritive-diet' || type == 'user-video') {
			$(".pager").show();
			if (type == "nutritive-diet") {
				NutritionalDiet(1, 6);
			}
			if (type == "user-video") {
				userVedioList(1, 4);
			}
		}
		$("#menu").find('li[val="' + type + '"]').attr('class',
				'layui-nav-item layui-this');
		$("#menu").find('li').click(function() {
			var cls = "." + $(this).attr('val');
			$("#centent").children().hide();
			$(cls).show();
			if (cls == ".nutritive-diet" || cls == ".user-video") {
				$(".pager").show();
				if (cls == ".nutritive-diet") {
					NutritionalDiet(1, 6);
				}
				if (cls == ".user-video") {
					userVedioList(1, 4);
				}
			}
		});
	});
</script>
<style type="text/css">
.pager ul li {
	padding: 10px;
}

.pager ul li:HOVER {
	background-color: #888;
	cursor: pointer;
}

.tltie {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	width: 80%;
}

.tesat {
	font-size: 20px;
	border-bottom: 1px solid #E6E6E6;
	padding-bottom: 10px;
	margin-top: 20px;
	line-height: 40px;
}

#yyss_content p {
	margin-left: 0px;
	width: 100%;
}

.user-video>ul>li {
	border-bottom: 1px solid #E6E6E6;
	display: block;
	height: 100px;
	margin: 10px
}

.user-video>ul>li>a>img {
	height: 70px;
	display: block;
	float: left;
}

.user-video>ul>li>a>h1 {
	float: left;
	margin-left: 40px;
	line-height: 70px;
	font-size: 20px;
}
</style>
</head>

<body>
	<div class="template_body">
		<jsp:include page="official-header.jsp"></jsp:include>
		<div class="template_main">
			<div class="tem_main_left">
				<ul class="layui-nav layui-nav-tree layui-inline" lay-filter="demo"
					style="margin-right: 10px;" id="menu">
					<li class="layui-nav-item" val="nutritive-diet"><a
						href="javascript:;">营养膳食</a></li>
					<div style="width: 100%;height: 1px;background-color: #CCCCCC;"></div>
					<li class="layui-nav-item" val="user-video"><a
						href="javascript:;">用户视频</a></li>
					<div style="width: 100%;height: 1px;background-color: #CCCCCC;"></div>
					<li class="layui-nav-item" val="user-feedback"><a
						href="javascript:;">用户反馈</a></li>
					<div style="width: 100%;height: 1px;background-color: #CCCCCC;"></div>
				</ul>

				<label
					style="width: 90%;height: 50px;letter-spacing:8px; font-size:1.4em;text-align:center;line-height:50px;border-radius:5px; margin: 80px 15px;background-color: #43C1B4;"><a
					href="javascript:;" onclick="openOnlineParticipation()"
					style="color:white;font-stretch: normal;">在线参与</a></label>
			</div>
			<!-- <div class="clearfix"></div> -->
			<div class="tem_main_right" id="centent">

				<div class="nutritive-diet">
					<ul id="NutritionalDiet" style="width:70%; margin: 80px auto; ">
						数据加载中。。。。。
					</ul>

				</div>
				<div class="user-video">
					<ul style="width: 70%;margin: 80px auto;" id="userVedio">
						数据加载中。。。。
					</ul>
				</div>
				<div class="pager" style="width: 70%;margin: auto;margin-top: -30px">
					<ul id="pager" style="margin-top:-20px">
					</ul>
				</div>
				<div class="user-feedback">
					<div style="width: 70%; margin: 70px auto;">
						<h1
							style="font-size: 30px;text-align: center; margin-bottom: 30px">用户反馈</h1>
						<c:if test="${user ne null }">
							<form action="" class="layui-form" style="margin-top: 30px;">
								<div class="layui-form-item layui-form-text">
									<label class="layui-form-label">文本域</label>
									<div class="layui-input-block">
										<textarea id="yhfk_content" placeholder="请输入内容"
											class="layui-textarea" rows="9"></textarea>
									</div>
								</div>
								<div class="layui-form-item">
									<div class="layui-input-block">
										<button class="layui-btn" onclick="Feedback()" type="button"
											lay-submit="" lay-filter="demo1">立即提交</button>
										<button type="reset" class="layui-btn layui-btn-primary">重置</button>
									</div>
								</div>
							</form>
						</c:if>
						<c:if test="${user eq null }">
							<h1>请先登录</h1>
						</c:if>
					</div>
				</div>

				<div class="parti-online" style="display: none;">
					<h4>欢迎来到乐堡大家庭！我们将给您发送社区相关信息和活动更新，包括宣传册、优惠券和健康小贴士等。</h4>
					<form class="layui-form" id="onlineParticipationInfo" method="post">
						<label>* 姓名：</label>
						<div class="layui-input-inline">
							<input id="userName" type="tel" name="userName"
								lay-verify="required" autocomplete="off" class="layui-input">
						</div>
						<label>* 联系方式：</label>
						<div class="layui-input-inline">
							<input id="phone" type="tel" name="phone"
								lay-verify="required|phone" autocomplete="off"
								class="layui-input">
						</div>
						<label>邮箱(选填)：</label>
						<div class="layui-input-inline">
							<input type="tel" id="email" name="email" autocomplete="off"
								class="layui-input">
						</div>
						<label>*年龄：</label>
						<div class="layui-input-inline">
							<input id="age" type="tel" name="age" lay-verify="required"
								autocomplete="off" class="layui-input">
						</div>
						<div class="layui-form-item">
							<label>是否与家人一起住：</label>
							<div class="layui-form-item">
								<div class="layui-input-block"
									style="margin-left: 260px; width: 500px;margin-top: -25px;">
									<input type="radio" name="IsLiveAlone" value="与家人在一起"
										title="与家人在一起" checked="checked">
									<input type="radio" name="IsLiveAlone" value="与家人不在一起"
										title="与家人不在一起">
								</div>
							</div>
						</div>
						<div class="layui-form-item">
							<label>性别</label>
							<div class="layui-input-block"
								style="margin-left: 260px; width: 500px;margin-top: -25px;">
								<input type="radio" name="sex" value="男" title="男"
									checked="checked">
								<input type="radio" name="sex" value="女" title="女">
							</div>
						</div>
						<div class="layui-form-item">
							<label>需要参加什么活动：</label>
							<div class="layui-input-block"
								style="margin-left: 260px; width: 500px;margin-top: -25px;">
								<input type="checkbox" name="activities" lay-skin="primary"
									title="宣传册" checked="" value="宣传册">
								<input type="checkbox" name="activities" lay-skin="primary"
									title="养生常识" value="养生常识">
								<input type="checkbox" name="activities" lay-skin="primary"
									title="乐堡新闻" value="乐堡新闻">
								<input type="checkbox" name="activities" lay-skin="primary"
									title="宣传活动" value="宣传活动">
								<input type="checkbox" name="activities" lay-skin="primary"
									title="优惠活动" value="优惠活动">
							</div>
						</div>
						<div class="layui-form-item" style="margin-top: -600px;">
							<label>需要什么样的养老服务：</label>
							<div class="layui-input-block"
								style="margin-left: 260px; width: 500px;margin-top: -25px;">
								<input type="checkbox" name="pensionService" lay-skin="primary"
									value="体检预约" title="体检预约" checked="">
								<input type="checkbox" name="pensionService" lay-skin="primary"
									title="生活助手" value="生活助手">
								<input type="checkbox" name="pensionService" lay-skin="primary"
									title="独立生活" value="独立生活">
								<input type="checkbox" name="pensionService" lay-skin="primary"
									title="康复协助" value="康复协助">
								<input type="checkbox" name="pensionService" lay-skin="primary"
									title="其他" value="其他">
							</div>
						</div>
						<div class="layui-form-item"
							style="margin-top: -600px;text-align: center;">
							<div class="layui-input-block">
								<button type="button" class="layui-btn" onclick="toSubmitForm()">立即提交</button>
								<button type="reset" class="layui-btn">重置</button>
							</div>
						</div>
					</form>
				</div>
				<div class="yyss" style="width:80%; margin: 60px auto;">
					<h1 style="text-align: center; font-size: 25px;" id="yyss_title"></h1>
					<span style="margin-top:20px; display: block;"> <span
						id="yyss_name"></span>
					</span>
					<div id="yyss_content" style="margin-top: 20px"></div>
					<span style="display:block; margin-top:20px; text-align: right"
						id="yyss_date"></span>
				</div>
				<div class="yhsp" style="width:80%; margin: 60px auto;">
					<h1 style="text-align: center; font-size: 25px;" id="yhsp_title"></h1>
					<span style="margin-top:20px; display: block;"> 视频来源： <span
						id="yhsp_user"></span>
					</span>
					<div id="yhsp_vedio"></div>
					<span style="display:block; margin-top:20px; text-align: right"
						id="yhsp_postTime"></span>
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
	</script>
</body>
</html>
