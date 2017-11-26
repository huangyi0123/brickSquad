<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
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

<title>关于我们</title>

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
	<script type="text/javascript"
	src="resource/js/common.js"></script>

<script type="text/javascript">
function setContent(str) {
	str = str.replace(/<\/?[^>]*>/g,''); //去除HTML tag
	str.value = str.replace(/[ | ]*\n/g,'\n'); //去除行尾空白
	//str = str.replace(/\n[\s| | ]*\r/g,'\n'); //去除多余空行
	return str;
	}
</script>
<script type="text/javascript">
	$(function() {
		var da=$(".inspectionDate").html();
		da=Format(new Date(da), "yyyy-MM-dd hh:mm:ss");
		$(".inspectionDate").html(da);
		
		
		var str=$(".newsContent").text();
		var newsc=setContent(str);
		$(".newsContent").html(newsc);
	
	
		var type = '${type}';
		$("#centent").children().hide();
		$("." + type).show();
		if (type == "parti-online") {
			layui.use('form', function() {
				var form = layui.form, layer = layui.layer;
				form.render();
			});
		}
		$("#menu").find('li').each(function() {
			var val = $(this).attr('val');
			if (val == type) {
				$(this).attr('class', 'layui-nav-item layui-this');
			} else {
				$(".parti-online").show();
			}
		});
		$("#menu").find('li').click(function() {
			var cls = "." + $(this).attr('val');
			$("#centent").children().hide();
			$(cls).show();

		});
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
<script type="text/javascript">
 function findInformation(id) {
	$.ajax({
		url:'LeFortServiceController/findInformation?type=aboutus-intro&id='+id,
		type: 'post',
		success:function(data){
			 $("#findInformationArtivites").html('');
				data=JSON.parse(data);
				console.log(data);
				$(".aboutus-intro").hide();
				$("#findInformationArtivites").show();
				 $("#findInformationArtivites").append("<h4>"+data[0].name+"</h4><p>"+data[0].centent+
						 "</p><hr style='margin-left:12%;'><span style='margin-left:12%;'>开始时间："+data[0].startTime+"</span><br><hr style='margin-left:12%;'> <span style='margin-left:12%;'>结束时间："+
						 data[0].endTime+"</span> <hr style='margin-left:12%;'><span style='margin-left:12%;'>准预定人数："+data[0].number+
						 "</span><hr style='margin-left:12%;'><h4 style='margin-top:-3px;'><span ><a id='reservation' href='javascript:;' onclick='reservation(\""+data[0].id+"\")' style='color:#43C1B4'>立即预约</a></span> <span style='margin-left:22px;'><a href='javascript:;' onclick='returnIn() ' style='color:#43C1B4'>返回</span></a></h4><hr style='margin-left:12%;'>"+
						 "");
		}
	});
}

 function findViewInformation(id) {
		$.ajax({
			url:'LeFortServiceController/findViewInformation?type=aboutus-intro&id='+id,
			type: 'post',
			success:function(data){
				 $("#findViewInformationArtivites").html('');
					data=JSON.parse(data);
					console.log(data);
					$(".aboutus-cont").hide();
					$("#findViewInformationArtivites").show();
					 $("#findViewInformationArtivites").append("<h4>个人病历详情单</h4><hr style='width:80%;margin-left:100px;'><div style='margin-left:100px;margin-top:20px;width:80%;'><span><span style='font-size:1.1em;margin-left:8px;'>姓名：</span>"+${user.username}+"</span><hr><span><span style='font-size:1.1em;margin-left:8px;'>检查病类：</span>"+data[0].name+"</span><hr>"+
							 "<span><span style='font-size:1.1em;margin-left:8px;'>病历详情：</span>"+data[0].content+"</span><hr><span><span style='font-size:1.1em;margin-left:8px;'>检查时间：</span>"+data[0].inspectionDate+"</span><hr>"+
							 "<span><span style='font-size:1.1em;margin-left:8px;'>主治医生：</span>"+data[0].attendingSurgeon+"</span><hr><span><span style='font-size:1.1em;margin-left:8px;'>检查医院：</span>"+data[0].hospital+"</span><hr>"+
							 "<a href='javascript:;' onclick='returnViewIn() ' style='color:#43C1B4;font-size:1.3em;margin-left:2%;'>返回</span></a></div><hr style='margin-top:-1px;width:1000px'>");
							 
			}
		});
	}
 
</script>
<script type="text/javascript">
function returnIn() {
	$("#findInformationArtivites").hide();
	$(".aboutus-intro").show();
	$("#menu").find('li').each(function() {
		var val = $(this).attr('val');
		if (val == "aboutus-intro") {
			$(this).attr('class', 'layui-nav-item layui-this');
		} else {
			$(this).attr('class', 'layui-nav-item');
		}
	});
} 

function returnViewIn() {
	$("#findViewInformationArtivites").hide();
	$(".aboutus-cont").show();
	$("#menu").find('li').each(function() {
		var val = $(this).attr('val');
		if (val == "aboutus-cont") {
			$(this).attr('class', 'layui-nav-item layui-this');
		} else {
			$(this).attr('class', 'layui-nav-item');
		}
	});
} 

</script>
<script type="text/javascript">
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
</script>
</head>

<body>
	<div class="template_body">
		<jsp:include page="official-header.jsp"></jsp:include>
		<div class="template_main">
			<div class="tem_main_left">
				<ul class="layui-nav layui-nav-tree layui-inline" lay-filter="demo"
					style="margin-right: 10px;" id="menu">
					<li class="layui-nav-item" val="aboutus-intro"><a
						href="javascript:;">体检预约</a></li>
					<div style="width: 100%;height: 1px;background-color: #CCCCCC;"></div>
					<li class="layui-nav-item" val="aboutus-use"><a
						href="javascript:;">生活助手</a></li>
					<div style="width: 100%;height: 1px;background-color: #CCCCCC;"></div>
					<li class="layui-nav-item" val="aboutus-join"><a
						href="javascript:;">独立生活</a></li>
					<div style="width: 100%;height: 1px;background-color: #CCCCCC;"></div>
					<li class="layui-nav-item" val="aboutus-cont"><a
						href="javascript:;">康复协助</a></li>
					<div style="width: 100%;height: 1px;background-color: #CCCCCC;"></div>
				</ul>

				 <label
					style="width: 90%;height: 50px;letter-spacing:8px; font-size:1.4em;text-align:center;line-height:50px;border-radius:5px; margin: 80px 15px;background-color: #43C1B4;"><a
					href="javascript:;" onclick="openOnlineParticipation()"
					style="color:white;font-stretch: normal;">在线参与</a></label>
			</div>
			<!-- <div class="clearfix"></div> -->
			<div class="tem_main_right" id="centent">

				<div class="aboutus-intro" >
				<center><h4>体检预约信息平台</h4></center>
				<ul style="margin-left:6%;margin-top:5%">
				<c:forEach var="activites" items="${pageBean.list }">
					<li ><span style="font-size:1.2em;"><a href="javascript:;" onclick="findInformation('${activites.id}')" id="yuyuea" style="color:#7C9A60">【${activites.name }】</a></span>
					<ul style="margin-top:2%;width:100%">
						<li ><span style="width:100%">${activites.centent }
						<span style="width:100%;float:right;"><a href="javascript:;" id="xiangqing" onclick="findInformation('${activites.id}')" style="color:#7C9A60;float:right">查看详情>></a></span></span></li>
					</ul>
				</li>
				<hr>
				</c:forEach>
					
				<c:if test="${serverWebsiteTemplate=='serverWebsiteTemplate' }">
					<c:if test="${pageBean.totalCount==0}">
					<center>
					<span><a href="javascript:;" >< 上一页</a></span>
					<input type="text" value="1" style="padding-left:16px;border:none;width:40px;height:18px;background: #EBEBEC
					;margin-left:20px;margin-right:20px;margin-top:20px;" readonly="readonly">
					<span><a href="javascript:;" >下一页 ></a></span>
					</center>
					</c:if>
					<c:if test="${pageBean.totalCount!=0}">
					<c:if test="${pageBean.page==1}">
					<center>
					<span><a href="javascript:;" >< 上一页</a></span>
					<input type="text" value="1" style="padding-left:6px;border:none;width:20px;height:18px;background: #EBEBEC" readonly="readonly">
					<span><a href="${pageContext.request.contextPath }/activities/findActivitesName?page=${pageBean.page+1}" >下一页 ></a></span>
					</center>
					</c:if>
					<c:if test="${pageBean.totalPage!=pageBean.page && pageBean.page!=1}">
					<center>
					<span><a href="${pageContext.request.contextPath }/activities/findActivitesName?page=${pageBean.page-1}" >< 上一页</a></span>
					<input type="text" value="1" style="padding-left:6px;border:none;width:20px;height:18px;background: #EBEBEC" readonly="readonly">
					<span><a href="${pageContext.request.contextPath }/activities/findActivitesName?page=${pageBean.page+1}" >下一页  ></a></span>
					</center>
					</c:if>
					<c:if test="${pageBean.totalPage==pageBean.page&& pageBean.totalPage!=1}">
					<center>
					<span><a href="${pageContext.request.contextPath }/activities/findActivitesName?page=${pageBean.page-1}" >< 上一页</a></span>
					<input type="text" value="1" style="padding-left:6px;border:none;width:20px;height:18px;background: #EBEBEC" readonly="readonly">
					<span><a href="javascript:;" >下一页  ></a></span>
					</center>
					</c:if>
					</c:if> 
					</c:if>
				</ul>
				
			
				</div>
				<div id="findInformationArtivites"></div>
				
				<div class="aboutus-use">
				
				<center><h4>生活助手信息品台</h4></center>
				<ul style="margin-left:6%;margin-top:5%">
				<c:forEach var="news" items="${pageBean3.list }">
				<li style="widht:40px;">
				<ul>
				<li style="float:left;width:80px;margin-right:20px;"><a href=""><image src="resource/image/news.jpg" style="width:80px;height:70px;"></image></a></li>
				<li style=""><span style="margin-left:40px;margin-left:20px;"><a href=""><h3><span style="font-size:1.2em;margin-left:20px;color:#7C9A60">
				【${news.title }】</span></h3><br>
						<span style="margin-left:28px;">
						<div  class="newsContent" style="overflow: hidden; white-space: nowrap; text-overflow: ellipsis;width:85%;margin-top:10px;margin-left:125px;">
						${news.content }
						</div></span>
						</a>
						<a href=""><span style="float:right;margin-right:12px;color:#7C9A60;margin-top:15px;">查看更多>></span></a>
						</span>
				</li>
				</ul>
				</li>
				<hr style="margin-top:2%;">
				</c:forEach>
				
			
				
				
				
				
					<c:if test="${serverWebsiteTemplate=='serverWebsiteTemplate' }">
					<c:if test="${pageBean.totalCount==0}">
					<center style="margin-top:-20px;margin-bottom:20px;">
					<span><a href="javascript:;" >< 上一页</a></span>
					<input type="text" value="1" style="padding-left:16px;border:none;width:40px;height:18px;background: #EBEBEC
					;margin-left:20px;margin-right:20px;margin-top:20px;" readonly="readonly">
					<span><a href="javascript:;" >下一页 ></a></span>
					</center>
					</c:if>
					<c:if test="${pageBean.totalCount!=0}">
					<c:if test="${pageBean.page==1}">
					<center>
					<span><a href="javascript:;" >< 上一页</a></span>
					<input type="text" value="1" style="padding-left:6px;border:none;width:20px;height:18px;background: #EBEBEC" readonly="readonly">
					<span><a href="${pageContext.request.contextPath }/activities/findActivitesName?page=${pageBean.page+1}" >下一页 ></a></span>
					</center>
					</c:if>
					<c:if test="${pageBean.totalPage!=pageBean.page && pageBean.page!=1}">
					<center>
					<span><a href="${pageContext.request.contextPath }/activities/findActivitesName?page=${pageBean.page-1}" >< 上一页</a></span>
					<input type="text" value="1" style="padding-left:6px;border:none;width:20px;height:18px;background: #EBEBEC" readonly="readonly">
					<span><a href="${pageContext.request.contextPath }/activities/findActivitesName?page=${pageBean.page+1}" >下一页  ></a></span>
					</center>
					</c:if>
					<c:if test="${pageBean.totalPage==pageBean.page&& pageBean.totalPage!=1}">
					<center>
					<span><a href="${pageContext.request.contextPath }/activities/findActivitesName?page=${pageBean.page-1}" >< 上一页</a></span>
					<input type="text" value="1" style="padding-left:6px;border:none;width:20px;height:18px;background: #EBEBEC" readonly="readonly">
					<span><a href="javascript:;" >下一页  ></a></span>
					</center>
					</c:if>
					</c:if> 
					</c:if>
				</ul>
				</div>

				
				
				<div class="aboutus-join">
				
				<center><h4>安心托付与自在生活</h4></center>
					<p style="font-size:1.1em">星堡致力于将寻求精彩、与时代接轨的活力长者们从家务、琐事和照顾另一半的压力中释放出来。优雅充
					实的老年生活离不开一个健康的体魄，良好的机体与认知功能以及积极地从事参与社会群体和有创造性、
					有意义的各项活动。星堡，致力于改善中国老年的生活方式，在充分尊重各位长者的个人爱好、意愿、权
					利的前提下，为长者举办丰富多彩的日常活动，营造一个充满活力的社区环境。</p>
					<p style="font-size:1.1em">星堡悉心为每位长者营造独立而舒适的生活空间，为社区里的每一位住户提供完善的设施和细致的服务</p>
 					<p style="font-size:1.1em;"><img alt="" src="resource/image/lamian.jpg" style="width:20px;height:20px;margin-top:-8px;margin-left:-8px;margin-right:2px;">均衡膳食，吃出健康；人性化的就餐服务，灵活的就餐时间</p>
  					<p style="font-size:1.1em"><img alt="" src="resource/image/secai.jpg" style="width:20px;height:20px;margin-top:-8px;margin-left:-8px;margin-right:2px;">社区活动丰富多彩，充实乐活每一天；定期外出活动，与时代接轨</p>
  					<p style="font-size:1.1em"><img alt="" src="resource/image/fucai.jpg" style="width:20px;height:20px;margin-top:-8px;margin-left:-8px;margin-right:2px;">家庭医生制度，为您提供24小时健康陪伴；三甲医院医师坐诊，建立专属健康档案；代配药系统，人性化专业服务</p>
				       <p style="font-size:1.1em"> <img alt="" src="resource/image/jiaoji.jpg" style="width:20px;height:20px;margin-top:-8px;margin-left:-8px;margin-right:2px;"> 老年大学充实精神、趣味交流小组形式丰富，结识好友享受生活</p>
				       <p style="font-size:1.1em"><img alt="" src="resource/image/paizhao.jpg" style="width:20px;height:20px;margin-top:-8px;margin-left:-8px;margin-right:2px;"> 定期房间深度清洁，免去家务劳顿之忧</p>

					<p style="font-size:1.1em">为了更好地为自理型长者提供服务，我们还额外提供上门补充护理服务；在长者身体需要额外照料的时候，适当提供付费护理服务，使长者生活更加安心。</p>
				</div>
				
				
				<div class="aboutus-cont">
						<!-- <div class="aboutus-intro"> -->
				<center><h4>健康检查病历史</h4></center>
				
				<c:if test="${user ne  null}">
				<ul style="margin-left:6%;margin-top:5%">
					<c:forEach var="medical" items="${pageBean1.list }">
					<li ><span style="font-size:1.1em;"><a href="" id="yuyuea">姓名：${user.username }</a></span>
					<ul style="margin-top:2%;width:100%;margin-top:-1px;">
						<li ><span style=""><span style="font-size:1.1em">检查病类：</span>${medical.name }</span><br>
						<span style="width:100%"><span style="font-size:1.1em">检查内容：</span>${medical.content } 
						<br><span style=""><span style="font-size:1.1em">检查时间：</span><span class="inspectionDate"> ${medical.inspectionDate }</span></span>
						<span style="float:right;"><a href="javascript:;" id="tijian" onclick="findViewInformation('${medical.id }')" style="color:#7C9A60">查看详情>></a></span>
						</span></li>
					</ul>
				</li>
				<hr>
				</c:forEach>
					
					
				<c:if test="${serverWebsiteTemplate=='serverWebsiteTemplate' }">
					<c:if test="${pageBean1.totalCount==0}">
					<center>
					<span><a href="javascript:;" >< 上一页</a></span>
					<input type="text" value="1" style="padding-left:16px;border:none;width:40px;height:18px;background: #EBEBEC
					;margin-left:20px;margin-right:20px;margin-top:20px;" readonly="readonly">
					<span><a href="javascript:;" >下一页 ></a></span>
					</center>
					</c:if>
					<c:if test="${pageBean1.totalCount!=0}">
					<c:if test="${pageBean1.page==1}">
					<center>
					<span><a href="javascript:;" >< 上一页</a></span>
					<input type="text" value="1" style="padding-left:6px;border:none;width:20px;height:18px;background: #EBEBEC" readonly="readonly">
					<span><a href="${pageContext.request.contextPath }/LeFortServiceController/serverWebsiteTemplate?page=${pageBean1.page+1}" >下一页 ></a></span>
					</center>
					</c:if>
					<c:if test="${pageBean1.totalPage!=pageBean.page && pageBean1.page!=1}">
					<center>
					<span><a href="${pageContext.request.contextPath }/LeFortServiceControllers/serverWebsiteTemplate?page=${pageBean1.page-1}" >< 上一页</a></span>
					<input type="text" value="1" style="padding-left:6px;border:none;width:20px;height:18px;background: #EBEBEC" readonly="readonly">
					<span><a href="${pageContext.request.contextPath }/LeFortServiceController/serverWebsiteTemplate?page=${pageBean1.page+1}" >下一页  ></a></span>
					</center>
					</c:if>
					<c:if test="${pageBean1.totalPage==pageBean1.page&& pageBean1.totalPage!=1}">
					<center>
					<span><a href="${pageContext.request.contextPath }/LeFortServiceController/serverWebsiteTemplate?page=${pageBean1.page-1}" >< 上一页</a></span>
					<input type="text" value="1" style="padding-left:6px;border:none;width:20px;height:18px;background: #EBEBEC" readonly="readonly">
					<span><a href="javascript:;" >下一页  ></a></span>
					</center>
					</c:if>
					</c:if> 
					</c:if>
				
				
					</c:if>
					<c:if test="${user eq null }">
					<h5 style="color:gray;margin-top:62px;">你还没有登录，请先去登录......</h5>
					</c:if>
				</ul>
			
			<!-- </div> -->
				
			
				</div>
				<div id="findViewInformationArtivites"></div>

				<!-- <div class="parti-online">
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
				</div> -->
</div>
			</div>
			<div class="clearfix"></div>

			<jsp:include page="official-footer.jsp"></jsp:include>

	
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
