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
	//线下活动查看详情页面
	 function findInformation(id) {
			$.ajax({
				url:'LeFortServiceController/findInformation?id='+id,
				type: 'post',
				success:function(data){
					 $("#findInformationArtivites").html('');
						data=JSON.parse(data);
						console.log(data);
						$(".offline_course").hide();
						$("#findInformationArtivites").show();
						 $("#findInformationArtivites").append("<h4>"+data[0].name+"</h4><p>"+data[0].centent+
								 "</p><hr style='margin-left:12%;'><span style='margin-left:12%;'>开始时间："+data[0].startTime+"</span><br><hr style='margin-left:12%;'> <span style='margin-left:12%;'>结束时间："+
								 data[0].endTime+"</span> <hr style='margin-left:12%;'><span style='margin-left:12%;'>准预定人数："+data[0].number+
								 "</span><hr style='margin-left:12%;'><h4 style='margin-top:-3px;'><span ><a id='reservation' href='javascript:;' onclick='reservation(\""+data[0].id+"\")' style='color:#43C1B4'>立即预约</a></span> <span style='margin-left:22px;'><a href='javascript:;' onclick='returnIn() ' style='color:#43C1B4'>返回</span></a></h4><hr style='margin-left:12%;'>"+
								 "");
				}
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
					href="javascript:;" onclick="openOnlineParticipation()"
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
								<c:forEach var="movie" items="${topQualityCourselistMovie }">
									<div class="layui-col-xs4 layui-col-sm12 layui-col-md4">
										<a href="common/toVedio_Details?id=${movie.id }"
											class="act_bg"><img alt=""
											src="resource/image/3736651_1426063184096_800x600.jpg">
											<img class="act_play" alt="" src="resource/image/play.png">
										</a><label style="font-size: 18px;">【${movie.name }】</label> <label
											style="margin-left: 210px;margin-top: -15px;"><font
											style="color: #F7A01F;">${movie.clickAmount }</font>人学习</label>
									</div>
								</c:forEach>
							</div>
						</div>

					</div>

					<!---------------------------------- 饮食健康 ------------------------------------>
					<div class="activity_excellent_course">
						<div
							style="width: 96%;height: 1px;border: 1px solid #EAEAEA;margin-top: 10px;margin-left: 28px;"></div>
						<label
							style="font-size: 1.3em;color: #48CFC1;margin-left: 50px;letter-spacing: 5px;">饮食健康</label>
						<a href="#"
							style="color:#6B8299; font-size:1.1em; float: right;margin-right: 20px;">更多</a>
						<div class="act_exce_list">
							<div class="layui-row">
								<c:forEach var="movie" items="${dieteticHealthlistMovie }">
									<div class="layui-col-xs4 layui-col-sm12 layui-col-md4">
										<a href="common/toVedio_Details?id=${movie.id }"
											class="act_bg"><img alt=""
											src="resource/image/3736651_1426063184096_800x600.jpg">
											<img class="act_play" alt="" src="resource/image/play.png">
										</a><label style="font-size: 18px;">【${movie.name }】</label> <label
											style="margin-left: 210px;margin-top: -15px;"><font
											style="color: #F7A01F;">${movie.clickAmount }</font>人学习</label>
									</div>
								</c:forEach>
							</div>
						</div>


					</div>
					<!---------------------------------- 运动健康 ------------------------------------>
					<div class="activity_excellent_course">
						<div
							style="width: 96%;height: 1px;border: 1px solid #EAEAEA;margin-top: 10px;margin-left: 28px;"></div>
						<label
							style="font-size: 1.3em;color: #48CFC1;margin-left: 50px;letter-spacing: 5px;">运动健康</label>
						<a href="#"
							style="color:#6B8299; font-size:1.1em; float: right;margin-right: 20px;">更多</a>
						<div class="act_exce_list">
							<div class="layui-row">
								<c:forEach var="movie" items="${sportsHealthlistMovie }">
									<div class="layui-col-xs4 layui-col-sm12 layui-col-md4">
										<a href="common/toVedio_Details?id=${movie.id }"
											class="act_bg"><img alt=""
											src="resource/image/3736651_1426063184096_800x600.jpg">
											<img class="act_play" alt="" src="resource/image/play.png">
										</a><label style="font-size: 18px;">【${movie.name }】</label> <label
											style="margin-left: 210px;margin-top: -15px;"><font
											style="color: #F7A01F;">${movie.clickAmount }</font>人学习</label>
									</div>
								</c:forEach>
							</div>
						</div>


					</div>
					<!---------------------------------- 修身养性 ------------------------------------>
					<div class="activity_excellent_course">
						<div
							style="width: 96%;height: 1px;border: 1px solid #EAEAEA;margin-top: 10px;margin-left: 28px;"></div>
						<label
							style="font-size: 1.3em;color: #48CFC1;margin-left: 50px;letter-spacing: 5px;">
							修身养性</label> <a href="#"
							style="color:#6B8299; font-size:1.1em; float: right;margin-right: 20px;">更多</a>
						<div class="act_exce_list">
							<div class="layui-row">
								<c:forEach var="movie" items="${selfCultivationlistMovie }">
									<div class="layui-col-xs4 layui-col-sm12 layui-col-md4">
										<a href="common/toVedio_Details?id=${movie.id }"
											class="act_bg"><img alt=""
											src="resource/image/3736651_1426063184096_800x600.jpg">
											<img class="act_play" alt="" src="resource/image/play.png">
										</a><label style="font-size: 18px;">【${movie.name }】</label> <label
											style="margin-left: 210px;margin-top: -15px;"><font
											style="color: #F7A01F;">${movie.clickAmount }</font>人学习</label>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>

				</div>
				<!----------------------------------- 线下活动 ---------------------------------->
				<div class="offline_course">
					<div class=" Lecture">
						<label
							style="font-size: 1.3em;color: #48CFC1;margin-left: 50px;letter-spacing: 5px;">活动中心</label>
						<a href="#"
							style="color:#6B8299; font-size:1.1em; float: right;margin-right: 20px;">更多</a>

						<ul style="margin-left:6%;margin-top:5%">
							<c:forEach var="activites" items="${pageBean.list }">
								<li><span style="font-size:1.2em;"><a
										href="javascript:;"
										onclick="findInformation('${activites.id}')" id="yuyuea"
										style="color:#7C9A60">【${activites.name }】夏日星堡消暑音乐大会</a></span>
									<ul style="margin-top:2%;width:100%">
										<li><span style="width:100%">${activites.centent }
												<span style="width:100%;float:right;"><a
													href="javascript:;" id="xiangqing"
													onclick="findInformation('${activites.id}')"
													style="color:#7C9A60;float:right">查看详情>></a></span>
										</span></li>
									</ul></li>
								<hr>
							</c:forEach>

							<c:if test="${serverWebsiteTemplate=='serverWebsiteTemplate' }">
								<c:if test="${pageBean.totalCount==0}">
									<center>
										<span><a href="javascript:;">< 上一页</a></span> <input
											type="text" value="1"
											style="padding-left:16px;border:none;width:40px;height:18px;background: #EBEBEC
					;margin-left:20px;margin-right:20px;margin-top:20px;"
											readonly="readonly"> <span><a
											href="javascript:;">下一页 ></a></span>
									</center>
								</c:if>
								<c:if test="${pageBean.totalCount!=0}">
									<c:if test="${pageBean.page==1}">
										<center>
											<span><a href="javascript:;">< 上一页</a></span> <input
												type="text" value="1"
												style="padding-left:6px;border:none;width:20px;height:18px;background: #EBEBEC"
												readonly="readonly"> <span><a
												href="${pageContext.request.contextPath }/LeFortServiceController/serverWebsiteTemplate?page=${pageBean.page+1}">下一页
													></a></span>
										</center>
									</c:if>
									<c:if
										test="${pageBean.totalPage!=pageBean.page && pageBean.page!=1}">
										<center>
											<span><a
												href="${pageContext.request.contextPath }/LeFortServiceController/serverWebsiteTemplate?page=${pageBean.page-1}"><
													上一页</a></span> <input type="text" value="1"
												style="padding-left:6px;border:none;width:20px;height:18px;background: #EBEBEC"
												readonly="readonly"> <span><a
												href="${pageContext.request.contextPath }/LeFortServiceController/serverWebsiteTemplate?page=${pageBean.page+1}">下一页
													></a></span>
										</center>
									</c:if>
									<c:if
										test="${pageBean.totalPage==pageBean.page&& pageBean.totalPage!=1}">
										<center>
											<span><a
												href="${pageContext.request.contextPath }/LeFortServiceController/serverWebsiteTemplate?page=${pageBean.page-1}"><
													上一页</a></span> <input type="text" value="1"
												style="padding-left:6px;border:none;width:20px;height:18px;background: #EBEBEC"
												readonly="readonly"> <span><a
												href="javascript:;">下一页 ></a></span>
										</center>
									</c:if>
								</c:if>
							</c:if>
						</ul>
						<div
							style="width: 96%;height: 1px;border: 1px solid #EAEAEA;margin-top: 30px;margin-left: 28px;"></div>
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
										title="与家人在一起" checked="checked"> <input type="radio"
										name="IsLiveAlone" value="与家人不在一起" title="与家人不在一起">
								</div>
							</div>
						</div>
						<div class="layui-form-item">
							<label>性别</label>
							<div class="layui-input-block"
								style="margin-left: 260px; width: 500px;margin-top: -25px;">
								<input type="radio" name="sex" value="男" title="男"
									checked="checked"> <input type="radio" name="sex"
									value="女" title="女">
							</div>
						</div>
						<div class="layui-form-item">
							<label>需要参加什么活动：</label>
							<div class="layui-input-block"
								style="margin-left: 260px; width: 500px;margin-top: -25px;">
								<input type="checkbox" name="activities" lay-skin="primary"
									title="宣传册" checked="" value="宣传册"> <input
									type="checkbox" name="activities" lay-skin="primary"
									title="养生常识" value="养生常识"> <input type="checkbox"
									name="activities" lay-skin="primary" title="乐堡新闻" value="乐堡新闻">
								<input type="checkbox" name="activities" lay-skin="primary"
									title="宣传活动" value="宣传活动"> <input type="checkbox"
									name="activities" lay-skin="primary" title="优惠活动" value="优惠活动">
							</div>
						</div>
						<div class="layui-form-item" style="margin-top: -600px;">
							<label>需要什么样的养老服务：</label>
							<div class="layui-input-block"
								style="margin-left: 260px; width: 500px;margin-top: -25px;">
								<input type="checkbox" name="pensionService" lay-skin="primary"
									value="体检预约" title="体检预约" checked=""> <input
									type="checkbox" name="pensionService" lay-skin="primary"
									title="生活助手" value="生活助手"> <input type="checkbox"
									name="pensionService" lay-skin="primary" title="独立生活"
									value="独立生活"> <input type="checkbox"
									name="pensionService" lay-skin="primary" title="康复协助"
									value="康复协助"> <input type="checkbox"
									name="pensionService" lay-skin="primary" title="其他" value="其他">
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
