<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<title>活动</title>
<link rel="stylesheet" type="text/css"
	href="resource/plugins/laysui/css/layui.css" media="all">
<link rel="stylesheet" type="text/css" href="resource/css/activity.css">

<script type="text/javascript"
	src="resource/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="resource/plugins/laysui/layui.js"></script>
<script type="text/javascript" src="resource/js/index_activity.js"></script>
<script type="text/javascript">
	$(function() {
		var type = '${type}';
		init(type);
	});
	function openOnlineParticipation() {
		$("#centent").children().hide();
		$("#menu").find('li').each(function() {
			$(this).attr('class', 'layui-nav-item');
		});
		$(".parti-online").show();
		layui.use('form', function() {
			var form = layui.form, layer = layui.layer;
			form.render();
		});
	}
	function toSubmitForm() {
		layui
				.use(
						'layer',
						function() {
							var layer = layui.layer;
							var userName = $("#userName").val();
							var phone = $("#phone").val();
							var age = $("#age").val();
							var email = $("#email").val();
							if (userName == "") {
								layer.msg("姓名不能为空！");
							} else if (!userName.match(/^[\u4e00-\u9fa5]+$/)) {
								layer.msg("名字必须为汉字!");
							} else if (phone == "") {
								layer.msg("手机号码不能为空!");
							} else if ((age != "")
									&& (!(age > 1) || !(age < 255) || (!(age
											.match(/^[0-9]+.?[0-9]*$/))))) {
								layer.msg("年龄格式不符合要求!");
							} else if (age == "") {
								layer.msg("年龄不能为空!");
							} else if (!(phone == "")
									&& (!(phone.match(/^1[34578]\d{9}$/)))) {
								layer.msg("手机号码格式不符合!");
							} else if ((!(email == "") && !(email
									.match(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/)))) {
								layer.msg("邮箱格式不符合!");
							} else {
								var index = layer.load(2, {
									time : 10 * 1000
								}); //又换了种风格，并且设定最长等待10秒
								$
										.ajax({
											url : 'onlineParticipationInfo/userInsertOnlineParticipationInfo',
											type : 'POST',
											data : $("#onlineParticipationInfo")
													.serialize(),
											success : function(result) {
												//关闭
												layer.close(index);
												if (result == "fail") {
													layer.msg("请填写正确的数据格式！");
												} else if (result == "success") {
													layer.msg("提交成功！");
													$("#centent").children()
															.hide();
													$(".aboutus-intro").show();
												} else {
													layer.msg("接口异常，稍后重试！");
												}
											},
											error : function(e) {
												layer.msg("接口异常，稍后重试！");
											}
										});
							}
						});
	}
</script>

</head>

<body>
	<div class="activity_body">
		<jsp:include page="official-header.jsp"></jsp:include>
		<div class="activity_main">
			<div class="activity_main_left">
				<ul class="layui-nav layui-nav-tree layui-inline" lay-filter="demo"
					style="margin-right: 10px;" id="menu">
					<li class="layui-nav-item" val="online_course"><a
						href="javascript:;">线上课程</a></li>
					<div style="width: 100%;height: 1px;background-color: #CCCCCC;"></div>
					<li class="layui-nav-item" val="offline_course"><a
						href="javascript:;">线下活动</a></li>
					<div style="width: 100%;height: 1px;background-color: #CCCCCC;"></div>
				</ul>

				<label
					style="width: 90%;height: 50px;letter-spacing:8px; font-size:1.4em;text-align:center;line-height:50px;border-radius:5px; margin: 80px 15px;background-color: #43C1B4;"><a
					href="javascript:;"onclick="openOnlineParticipation()"
					style="color:white;font-stretch: normal;">在线参与</a></label>
			</div>
			<div class="activity_main_right" id="centent">
				<!----------------------------------- 线上课程 ---------------------------------->
				<div class="online_course">

					<div class="activity_excellent_course">
						<label
							style="font-size: 1.3em;color: #48CFC1;margin-left: 50px;letter-spacing: 5px;">精品课程</label>
						<a href="#"
							style="color:#6B8299; font-size:1.1em; float: right;margin-right: 20px;">更多</a>
						<div class="act_exce_list">
							<div class="layui-row">
								<c:forEach var="movie" items="${tiaowulistMovie }">
									<div class="layui-col-xs4 layui-col-sm12 layui-col-md4">
										<a href="common/toVedio_Details?id=${movie.id }&typeId=${movie.typeId }" class="act_bg"><img alt=""
											src="resource/image/3736651_1426063184096_800x600.jpg">
											<img class="act_play" alt="" src="resource/image/play.png">
										</a><label style="font-size: 18px;">【${movie.name }】</label> <span>石立勇</span> <i
											class="layui-icon">&#xe613;</i> <label
											style="margin-left: 210px;margin-top: -15px;"><font
											style="color: #F7A01F;">10</font>人学习</label>
									</div>
								</c:forEach>
								<!-- 		<div class="layui-col-xs6 layui-col-sm6 layui-col-md4">
									<a href="#"><img class="act_bg" alt=""

										src="resource/image/3736651_1426063184096_800x600.jpg">
										<img class="act_play" alt="" src="resource/image/play.png"></a><label>互联网＋与阿里云【贵大软件学院】</label>
									<span>石立勇</span> <i class="layui-icon">&#xe613;</i> <label
										style="margin-left: 210px;margin-top: -15px;"><font
										style="color: #F7A01F;">10</font>人学习</label>
								</div>
								<div class="layui-col-xs4 layui-col-sm12 layui-col-md4">
									<a href="#" class="act_bg"><img alt=""
										src="resource/image/3736651_1426063184096_800x600.jpg">
										<img class="act_play" alt="" src="resource/image/play.png">
									</a><label>【${movie.name }】</label> <span>石立勇</span> <i
										class="layui-icon">&#xe613;</i> <label
										style="margin-left: 210px;margin-top: -15px;"><font
										style="color: #F7A01F;">10</font>人学习</label>
								</div> -->

							</div>
						</div>
						<div
							style="width: 96%;height: 1px;border: 1px solid #EAEAEA;margin-top: 10px;margin-left: 28px;"></div>

					</div>
					<!---------------------------------- 饮食健康 ------------------------------------>
					<div class="activity_excellent_course">
						<label
							style="font-size: 1.3em;color: #48CFC1;margin-left: 50px;letter-spacing: 5px;">饮食健康</label>
						<a href="#"
							style="color:#6B8299; font-size:1.1em; float: right;margin-right: 20px;">更多</a>
						<div class="act_exce_list">
							<div class="layui-row">
								<div class="layui-col-xs6 layui-col-sm6 layui-col-md4">
									<a href="#" class="act_bg"><img alt=""
										src="resource/image/3736651_1426063184096_800x600.jpg">
										<img class="act_play" alt="" src="resource/image/play.png"></a>
									<label>互联网＋与阿里云【贵大软件学院】</label> <span>石立勇</span> <i
										class="layui-icon">&#xe613;</i> <label
										style="margin-left: 210px;margin-top: -15px;"><font
										style="color: #F7A01F;">10</font>人学习</label>
								</div>
								<div class="layui-col-xs6 layui-col-sm6 layui-col-md4">
									<a href="#" class="act_bg"><img alt=""
										src="resource/image/3736651_1426063184096_800x600.jpg">
										<img class="act_play" alt="" src="resource/image/play.png">
									</a><label>互联网＋与阿里云【贵大软件学院】</label> <span>石立勇</span> <i
										class="layui-icon">&#xe613;</i> <label
										style="margin-left: 210px;margin-top: -15px;"><font
										style="color: #F7A01F;">10</font>人学习</label>
								</div>
								<div class="layui-col-xs4 layui-col-sm12 layui-col-md4">
									<a href="#" class="act_bg"><img alt=""
										src="resource/image/3736651_1426063184096_800x600.jpg">
										<img class="act_play" alt="" src="resource/image/play.png"></a><label>互联网＋与阿里云【贵大软件学院】</label>
									<span>石立勇</span> <i class="layui-icon">&#xe613;</i> <label
										style="margin-left: 210px;margin-top: -15px;"><font
										style="color: #F7A01F;">10</font>人学习</label>
								</div>

							</div>
						</div>
						<div
							style="width: 96%;height: 1px;border: 1px solid #EAEAEA;margin-top: 10px;margin-left: 28px;"></div>

					</div>
					<!---------------------------------- 运动健康 ------------------------------------>
					<div class="activity_excellent_course">
						<label
							style="font-size: 1.3em;color: #48CFC1;margin-left: 50px;letter-spacing: 5px;">饮食健康</label>
						<a href="#"
							style="color:#6B8299; font-size:1.1em; float: right;margin-right: 20px;">更多</a>
						<div class="act_exce_list">
							<div class="layui-row">
								<div class="layui-col-xs6 layui-col-sm6 layui-col-md4">
									<a href="#" class="act_bg"><img alt=""
										src="resource/image/3736651_1426063184096_800x600.jpg">
										<img class="act_play" alt="" src="resource/image/play.png"></a>
									<label>互联网＋与阿里云【贵大软件学院】</label> <span>石立勇</span> <i
										class="layui-icon">&#xe613;</i> <label
										style="margin-left: 210px;margin-top: -15px;"><font
										style="color: #F7A01F;">10</font>人学习</label>
								</div>
								<div class="layui-col-xs6 layui-col-sm6 layui-col-md4">
									<a href="#" class="act_bg"><img alt=""
										src="resource/image/3736651_1426063184096_800x600.jpg">
										<img class="act_play" alt="" src="resource/image/play.png"></a><label>互联网＋与阿里云【贵大软件学院】</label>
									<span>石立勇</span> <i class="layui-icon">&#xe613;</i> <label
										style="margin-left: 210px;margin-top: -15px;"><font
										style="color: #F7A01F;">10</font>人学习</label>
								</div>
								<div class="layui-col-xs4 layui-col-sm12 layui-col-md4">
									<a href="#" class="act_bg"><img alt=""
										src="resource/image/3736651_1426063184096_800x600.jpg">
										<img class="act_play" alt="" src="resource/image/play.png"></a><label>互联网＋与阿里云【贵大软件学院】</label>
									<span>石立勇</span> <i class="layui-icon">&#xe613;</i> <label
										style="margin-left: 210px;margin-top: -15px;"><font
										style="color: #F7A01F;">10</font>人学习</label>
								</div>

							</div>
						</div>
						<div
							style="width: 96%;height: 1px;border: 1px solid #EAEAEA;margin-top: 10px;margin-left: 28px;"></div>

					</div>
					<!---------------------------------- 修身养性 ------------------------------------>
					<div class="activity_excellent_course">
						<label
							style="font-size: 1.3em;color: #48CFC1;margin-left: 50px;letter-spacing: 5px;">饮食健康</label>
						<a href="#"
							style="color:#6B8299; font-size:1.1em; float: right;margin-right: 20px;">更多</a>
						<div class="act_exce_list">
							<div class="layui-row">
								<div class="layui-col-xs6 layui-col-sm6 layui-col-md4">
									<a href="#" class="act_bg"><img alt=""
										src="resource/image/3736651_1426063184096_800x600.jpg">
										<img class="act_play" alt="" src="resource/image/play.png"></a><label>互联网＋与阿里云【贵大软件学院】</label>
									<span>石立勇</span> <i class="layui-icon">&#xe613;</i> <label
										style="margin-left: 210px;margin-top: -15px;"><font
										style="color: #F7A01F;">10</font>人学习</label>
								</div>
								<div class="layui-col-xs6 layui-col-sm6 layui-col-md4">
									<a href="#" class="act_bg"><img alt=""
										src="resource/image/3736651_1426063184096_800x600.jpg">
										<img class="act_play" alt="" src="resource/image/play.png"></a>
									<label>互联网＋与阿里云【贵大软件学院】</label> <span>石立勇</span> <i
										class="layui-icon">&#xe613;</i> <label
										style="margin-left: 210px;margin-top: -15px;"><font
										style="color: #F7A01F;">10</font>人学习</label>
								</div>
								<div class="layui-col-xs4 layui-col-sm12 layui-col-md4">
									<a href="#" class="act_bg"><img alt=""
										src="resource/image/3736651_1426063184096_800x600.jpg">
										<img class="act_play" alt="" src="resource/image/play.png"></a><label>互联网＋与阿里云【贵大软件学院】</label>
									<span>石立勇</span> <i class="layui-icon">&#xe613;</i> <label
										style="margin-left: 210px;margin-top: -15px;"><font
										style="color: #F7A01F;">10</font>人学习</label>
								</div>

							</div>
						</div>
						<div
							style="width: 96%;height: 1px;border: 1px solid #EAEAEA;margin-top: 10px;margin-left: 28px;"></div>

					</div>

				</div>
				<!----------------------------------- 线下活动 ---------------------------------->
				<div class="offline_course">
					<div class=" Lecture">
						<label
							style="font-size: 1.3em;color: #48CFC1;margin-left: 50px;letter-spacing: 5px;">讲座中心</label>
						<a href="#"
							style="color:#6B8299; font-size:1.1em; float: right;margin-right: 20px;">更多</a>
						<div class="offline_list">
							<a href="#"><img alt=""
								src="resource/image/3736651_1426063184096_800x600.jpg"></a> <label><a
								href="#" class="titles"> 【乐活在星堡】夏日好心情 走近星堡消暑音乐会</a></label>
							<p>2017年仲夏八月，在星堡浦江老年社区的活动中心展开了一场别开生面的生快派对和消暑音乐节。这次演唱会邀请了来自各个社区的热爱音乐的长者。对于热爱..</p>
							<label style="margin-left: 20px;"><a href="#"
								class="details">查看详情 ></a></label>
						</div>
						<div class="offline_list" style="margin-top: 30px;">
							<a href="#"><img alt=""
								src="resource/image/3736651_1426063184096_800x600.jpg"></a> <label><a
								href="#" class="titles"> 【乐活在星堡】夏日好心情 走近星堡消暑音乐会</a></label>
							<p>2017年仲夏八月，在星堡浦江老年社区的活动中心展开了一场别开生面的生快派对和消暑音乐节。这次演唱会邀请了来自各个社区的热爱音乐的长者。对于热爱..</p>
							<label style="margin-left: 20px;"><a href="#"
								class="details">查看详情 ></a></label>
						</div>
						<div
							style="width: 96%;height: 1px;border: 1px solid #EAEAEA;margin-top: 30px;margin-left: 28px;"></div>
					</div>

					<div class=" Lecture">
						<label
							style="font-size: 1.3em;color: #48CFC1;margin-left: 50px;letter-spacing: 5px;">讲座中心</label>
						<a href="#"
							style="color:#6B8299; font-size:1.1em; float: right;margin-right: 20px;">更多</a>
						<div class="offline_list">
							<a href="#"><img alt=""
								src="resource/image/3736651_1426063184096_800x600.jpg"></a> <label><a
								href="#" class="titles"> 【乐活在星堡】夏日好心情 走近星堡消暑音乐会</a></label>
							<p>2017年仲夏八月，在星堡浦江老年社区的活动中心展开了一场别开生面的生快派对和消暑音乐节。这次演唱会邀请了来自各个社区的热爱音乐的长者。对于热爱..</p>
							<label style="margin-left: 20px;"><a href="#"
								class="details">查看详情 ></a></label>
						</div>
					</div>
				</div>
				<div class="parti-online">
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
			</div>
		</div>
	</div>
</body>
</html>
