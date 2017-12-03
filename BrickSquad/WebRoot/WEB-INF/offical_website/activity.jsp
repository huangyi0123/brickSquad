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
<script type="text/javascript" src="resource/js/common.js"></script>
<script type="text/javascript">
	$(function() {
		var type = '${type}';
		init(type);
		$.ajax({
			url : 'type/findTypeByParentId?parentId=lrhd',
			success : function(result) {
				result = JSON.parse(result);
				console.log(result);
				findAll(result, "#parentid");
			}
		});
		getTopQualityCourselistMovieByPagination(1, 6);
		getdieteticHealthlistMovieByPagination(1, 6);
		getsportsHealthlistMovieByPagination(1, 6);
		getselfCultivationlistMovieByPagination(1, 6);
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
						$(".offline_course").hide();
						$("#findInformationArtivites").show();
						 $("#findInformationArtivites").append("<hr style='margin-left:12%;'><span style='margin-left:12%;color:#43C1B4'>活动名称：</span>"+data[0].name+"<br><hr style='margin-left:12%;'> <span style='margin-left:12%;color:#43C1B4'>活动内容：</span>"+data[0].centent+
								 "<hr style='margin-left:12%;'><span style='margin-left:12%;color:#43C1B4'>开始时间：</span>"+data[0].startTime+"<br><hr style='margin-left:12%;'> <span style='margin-left:12%;color:#43C1B4'>结束时间：</span>"+
								 data[0].endTime+"<hr style='margin-left:12%;'><span style='margin-left:12%;color:#43C1B4'>准预定人数：</span>"+data[0].number+
								 "<hr style='margin-left:12%;'><h4 style='margin-top:-3px;'><span ><a id='reservation' href='javascript:;' onclick='reservation(\""+data[0].id+"\")' style='margin-left:12%;color:#43C1B4'>立即预约</a></span> <span style='margin-left:22px;'><a href='javascript:;' onclick='returnIn() ' style='color:#43C1B4'>返回</span></a></h4><hr style='margin-left:12%;'>"+
								 "");
				}
			});
		} 
	//预约成功信息添加
	
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
<script type="text/javascript">
//判断预约登没登陆
function reservation(id) {
	var user='${user}';
	if(user ==''){
		alert("你还没有登录，请先去登录！");
	}else{
			$.ajax({
			url:'LeFortServiceController/insertArtivitesInformation',
			data:{"activitiesId":id},
			success:function(data){
				if(data=="success"){
					alert("报名成功");
				}else{
					alert("报名失败，请再次报名");
				}
			}
		});
		
	}
}
//返回关闭标签
function returnIn() {
	$("#findInformationArtivites").hide();
	$(".offline_course").show();
} 
/* layui.use('from',function(){
	var form = layui.form;
	form.on('select(parent)',function(data){
		console.log(data.id);
		 $(".offline_course").html('');
		$(".offline_course").show(); 
		$.ajax({
			url:'common/toActivity_carousel',
			data:{"pageBean.typeId":data.id}
	});
});	
}); */

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
						<div class="act_exce_list">
							<div class="layui-row" id="topQualityCourselistMovie"><label>数据加载中。。。。。</label></div>
							<div id="topQualityCourselistMoviepager"
								style="text-align: center;"></div>
						</div>

					</div>

					<!---------------------------------- 饮食健康 ------------------------------------>
					<div class="activity_excellent_course">
						<div
							style="width: 96%;height: 1px;border: 1px solid #EAEAEA;margin-top: 10px;margin-left: 28px;"></div>
						<label
							style="font-size: 1.3em;color: #48CFC1;margin-left: 50px;letter-spacing: 5px;">饮食健康</label>
						<div class="act_exce_list">
							<div class="layui-row" id="dieteticHealthlistMovie">
							<label>数据加载中。。。。。</label>
							</div>
							<div id="dieteticHealthlistMoviepager"
								style="text-align: center;"></div>
						</div>


					</div>
					<!---------------------------------- 运动健康 ------------------------------------>
					<div class="activity_excellent_course">
						<div
							style="width: 96%;height: 1px;border: 1px solid #EAEAEA;margin-top: 10px;margin-left: 28px;"></div>
						<label
							style="font-size: 1.3em;color: #48CFC1;margin-left: 50px;letter-spacing: 5px;">运动健康</label>
						<div class="act_exce_list">
							<div class="layui-row" id="sportsHealthlistMovie"><label>数据加载中。。。。。</label></div>
							<div id="sportsHealthlistMoviepager" style="text-align: center;"></div>
						</div>


					</div>
					<!---------------------------------- 修身养性 ------------------------------------>
					<div class="activity_excellent_course">
						<div
							style="width: 96%;height: 1px;border: 1px solid #EAEAEA;margin-top: 10px;margin-left: 28px;"></div>
						<label
							style="font-size: 1.3em;color: #48CFC1;margin-left: 50px;letter-spacing: 5px;">
							修身养性</label>
						<div class="act_exce_list">
							<div class="layui-row" id="selfCultivationlistMovie"><label>数据加载中。。。。。</label></div>
							<div id="selfCultivationlistMoviepager" style="text-align: center;"></div>
						</div>
					</div>

				</div>
				<!----------------------------------- 线下跳舞活动 ---------------------------------->
				<div class="offline_course">
					<div class=" Lecture">
						<label
							style="font-size: 1.3em;color: #48CFC1;margin-left: 50px;letter-spacing: 5px;">跳舞活动中心</label>
						<!-- <a href="#"
							style="color:#6B8299; font-size:1.1em; float: right;margin-right: 20px;">更多</a> -->
						

						<ul style="margin-left:6%;margin-top:5%">
							<c:forEach var="activites" items="${pageBean.list }">
								<li><span style="font-size:1.2em;"><a
										href="javascript:;"
										onclick="findInformation('${activites.id}')" id="yuyuea"
										style="color:#7C9A60">【${activites.name }】</a></span>
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
					<center style="padding-top:12px;">
					<span style="font-size:1.1em">第${ pageBean.page}/${ pageBean.totalPage} 页</span>
					<c:if test="${ pageBean.page !=1}">
					<a href="${pageContext.request.contextPath }/common/toActivity_carousel?type=aboutus-intro&page=1" style="font-size:1.1em">首页</a>
					<a href="${pageContext.request.contextPath }/common/toActivity_carousel?type=aboutus-intro&page=${ pageBean.page-1}" style="font-size:1.1em">&nbsp;上一页</a>
					</c:if>
					<c:forEach var="i" begin="1" end="${pageBean.totalPage }">
					<c:if test="${pageBean.page!=i }">
					<a href="${pageContext.request.contextPath }/common/toActivity_carousel?type=aboutus-intro&page=${i}" style="font-size:1.1em;">${i }</a>
					</c:if>
					<c:if test="${pageBean.page==i }">
					<span style="font-size:1.1em">${i }</span>
					</c:if>
					</c:forEach>
					<c:if test="${pageBean.page!=pageBean.totalPage }">
					<a href="${pageContext.request.contextPath }/common/toActivity_carousel?type=aboutus-intro&page=${pageBean.page+1}" style="font-size:1.1em">下一页</a>
					<a href="${pageContext.request.contextPath }/common/toActivity_carousel?type=aboutus-intro&page=${pageBean.totalPage}" style="font-size:1.1em">尾页</a>
				</c:if>
				</center>
						</ul>
						<div
							style="width: 96%;height: 1px;border: 1px solid #EAEAEA;margin-top: 30px;margin-left: 28px;"></div>
					</div>
				</div>
				<!----------------------------------- 线下麻将活动 ---------------------------------->
				<div class="offline_course">
					<div class=" Lecture">
						<label
							style="font-size: 1.3em;color: #48CFC1;margin-left: 50px;letter-spacing: 5px;">麻将活动中心</label>
						<!-- <a href="#"
							style="color:#6B8299; font-size:1.1em; float: right;margin-right: 20px;">更多</a> -->
						

						<ul style="margin-left:6%;margin-top:5%">
							<c:forEach var="activites" items="${pageBean1.list}">
								<li><span style="font-size:1.2em;"><a
										href="javascript:;"
										onclick="findInformation('${activites.id}')" id="yuyuea"
										style="color:#7C9A60">【${activites.name }】</a></span>
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
							<center style="padding-top:12px;">
					<span style="font-size:1.1em">第${ pageBean1.page1}/${ pageBean1.totalPage1} 页</span>
					<c:if test="${ pageBean1.page1 !=1}">
					<a href="${pageContext.request.contextPath }/common/toActivity_carousel?type=aboutus-intro&page1=1" style="font-size:1.1em">首页</a>
					<a href="${pageContext.request.contextPath }/common/toActivity_carousel?type=aboutus-intro&page1=${ pageBean1.page1-1}" style="font-size:1.1em">&nbsp;上一页</a>
					</c:if>
					<c:forEach var="i" begin="1" end="${pageBean1.totalPage1 }">
					<c:if test="${pageBean1.page1!=i }">
					<a href="${pageContext.request.contextPath }/common/toActivity_carousel?type=aboutus-intro&page1=${i}" style="font-size:1.1em;">${i }</a>
					</c:if>
					<c:if test="${pageBean1.page1==i }">
					<span style="font-size:1.1em">${i }</span>
					</c:if>
					</c:forEach>
					<c:if test="${pageBean1.page1!=pageBean1.totalPage1 }">
					<a href="${pageContext.request.contextPath }/common/toActivity_carousel?type=aboutus-intro&page1=${pageBean1.page1+1}" style="font-size:1.1em">下一页</a>
					<a href="${pageContext.request.contextPath }/common/toActivity_carousel?type=aboutus-intro&page1=${pageBean1.totalPage1}" style="font-size:1.1em">尾页</a>
				</c:if>
				</center>
						</ul>
						<div
							style="width: 96%;height: 1px;border: 1px solid #EAEAEA;margin-top: 30px;margin-left: 28px;"></div>
					</div>
				</div>
				<!----------------------------------- 线下棋牌活动 ---------------------------------->
					<div class="offline_course">
					<div class=" Lecture">
						<label
							style="font-size: 1.3em;color: #48CFC1;margin-left: 50px;letter-spacing: 5px;">棋牌活动中心</label>
						<!-- <a href="#"
							style="color:#6B8299; font-size:1.1em; float: right;margin-right: 20px;">更多</a> -->
						

						<ul style="margin-left:6%;margin-top:5%">
							<c:forEach var="activites" items="${pageBean3.list}">
								<li><span style="font-size:1.2em;"><a
										href="javascript:;"
										onclick="findInformation('${activites.id}')" id="yuyuea"
										style="color:#7C9A60">【${activites.name }】</a></span>
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
					<center style="padding-top:12px;">
					<span style="font-size:1.1em">第${ pageBean3.page3}/${ pageBean3.totalPage3} 页</span>
					<c:if test="${ pageBean3.page3 !=1}">
					<a href="${pageContext.request.contextPath }/common/toActivity_carousel?type=aboutus-intro&page3=1" style="font-size:1.1em">首页</a>
					<a href="${pageContext.request.contextPath }/common/toActivity_carousel?type=aboutus-intro&page3=${ pageBean3.page3-1}" style="font-size:1.1em">&nbsp;上一页</a>
					</c:if>
					<c:forEach var="i" begin="1" end="${pageBean3.totalPage3 }">
					<c:if test="${pageBean3.page3!=i }">
					<a href="${pageContext.request.contextPath }/common/toActivity_carousel?type=aboutus-intro&page3=${i}" style="font-size:1.1em;">${i }</a>
					</c:if>
					<c:if test="${pageBean3.page3==i }">
					<span style="font-size:1.1em">${i }</span>
					</c:if>
					</c:forEach>
					<c:if test="${pageBean3.page3!=pageBean3.totalPage3 }">
					<a href="${pageContext.request.contextPath }/common/toActivity_carousel?type=aboutus-intro&page3=${pageBean3.page3+1}" style="font-size:1.1em">下一页</a>
					<a href="${pageContext.request.contextPath }/common/toActivity_carousel?type=aboutus-intro&page3=${pageBean3.totalPage3}" style="font-size:1.1em">尾页</a>
				</c:if>
				</center>
						</ul>
						<div
							style="width: 96%;height: 1px;border: 1px solid #EAEAEA;margin-top: 30px;margin-left: 28px;"></div>
					</div>
				</div>
				<div id="findInformationArtivites"></div>
				
				
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
			<div class="clearfix"></div>

			<jsp:include page="official-footer.jsp"></jsp:include>
	</div>
</body>
</html>
