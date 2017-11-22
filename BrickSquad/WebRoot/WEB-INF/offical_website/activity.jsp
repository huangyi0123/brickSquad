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

<title>活动界面</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" type="text/css"
	href="resource/plugins/laysui/css/layui.css" media="all">
<link rel="stylesheet" type="text/css" href="resource/css/activity.css">

<script type="text/javascript"
	src="resource/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="resource/plugins/laysui/layui.js"></script>


</head>

<body>
	<div class="activity_body">
		<jsp:include page="official-header.jsp"></jsp:include>
		<div class="activity_main">
			<div class="activity_main_left">
				<ul class="layui-nav layui-nav-tree layui-inline" lay-filter="demo"
					style="margin-right: 10px;" id="menu">
					<li class="layui-nav-item" val="aboutus-intro"><a
						href="javascript:;">线上直播</a></li>
					<div style="width: 100%;height: 1px;background-color: #CCCCCC;"></div>
					<li class="layui-nav-item" val="aboutus-use"><a
						href="javascript:;">线下活动</a></li>
					<div style="width: 100%;height: 1px;background-color: #CCCCCC;"></div>
				</ul>

				<label
					style="width: 90%;height: 50px;letter-spacing:8px; font-size:1.4em;text-align:center;line-height:50px;border-radius:5px; margin: 80px 15px;background-color: #43C1B4;"><a
					href="javascript:;" onclick="openOnlineParticipation()"
					style="color:white;font-stretch: normal;">在线参与</a></label>
			</div>
			<div class="activity_main_right">
				<!----------------------------------- 线上课程 ---------------------------------->
				<div class="online_course">

					<div class="activity_excellent_course">
						<label
							style="font-size: 1.3em;color: #48CFC1;margin-left: 50px;letter-spacing: 5px;">精品课程</label>
						<a href="#"
							style="color:#6B8299; font-size:1.1em; float: right;margin-right: 20px;">更多</a>
						<div class="act_exce_list">
							<div class="layui-row">
								<div class="layui-col-xs6 layui-col-sm6 layui-col-md4">
									<a href="#" class="act_bg" style="display: block;"><img
										alt="" src="resource/image/3736651_1426063184096_800x600.jpg">
										<img class="act_play" alt="" src="resource/image/play.png">
									</a><label>互联网＋与阿里云【贵大软件学院】</label> <span>石立勇</span> <i
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
										<img class="act_play" alt="" src="resource/image/play.png">
									</a><label>互联网＋与阿里云【贵大软件学院】</label> <span>石立勇</span> <i
										class="layui-icon">&#xe613;</i> <label
										style="margin-left: 210px;margin-top: -15px;"><font
										style="color: #F7A01F;">10</font>人学习</label>
								</div>

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

			</div>
		</div>


	</div>




</body>
</html>
