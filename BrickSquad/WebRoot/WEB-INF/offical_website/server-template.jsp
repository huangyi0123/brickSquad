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
<script type="text/javascript">
	$(function() {
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
						 "</span><hr style='margin-left:12%;'><h4 style='margin-top:-3px;'><span ><a href='javascript:;' onclick='reservation()' style='color:#43C1B4'>立即预约</a></span> <span style='margin-left:22px;'><a href='javascript:;' onclick='returnIn() ' style='color:#43C1B4'>返回</span></a></h4><hr style='margin-left:12%;'>"+
						 "");
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
						<li ><span style="width:100%"><a href="">${activites.centent }
						<span style="width:100%;float:right;"><a href="javascript:;" id="xiangqing" onclick="findInformation('${activites.id}')" style="color:#7C9A60">查看详情>></a></span></a></span></li>
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
					<span><a href="${pageContext.request.contextPath }/activities/findActivitesName?search=${pageBean.search }&page=${pageBean.page+1}" >下一页 ></a></span>
					</center>
					</c:if>
					<c:if test="${pageBean.totalPage!=pageBean.page && pageBean.page!=1}">
					<center>
					<span><a href="${pageContext.request.contextPath }/activities/findActivitesName?search=${pageBean.search }&page=${pageBean.page-1}" >< 上一页</a></span>
					<input type="text" value="1" style="padding-left:6px;border:none;width:20px;height:18px;background: #EBEBEC" readonly="readonly">
					<span><a href="${pageContext.request.contextPath }/activities/findActivitesName?search=${pageBean.search }&page=${pageBean.page+1}" >下一页  ></a></span>
					</center>
					</c:if>
					<c:if test="${pageBean.totalPage==pageBean.page&& pageBean.totalPage!=1}">
					<center>
					<span><a href="${pageContext.request.contextPath }/activities/findActivitesName?search=${pageBean.search }&page=${pageBean.page-1}" >< 上一页</a></span>
					<input type="text" value="1" style="padding-left:6px;border:none;width:20px;height:18px;background: #EBEBEC" readonly="readonly">
					<span><a href="javascript:;" >下一页  ></a></span>
					</center>
					</c:if>
					</c:if> 
					</c:if>
				</ul>
				
			
				</div>
				<div id="findInformationArtivites"></div>
				
				<c:if test="${user ne null }">
	<!-- Dth -->
	<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<section>
					<div class="wizard">
						<div class="wizard-inner">
							<ul class="nav nav-tabs" role="tablist">
								<li role="presentation" class="active"><a href="#step6"
									data-toggle="tab" aria-controls="step6" role="tab"
									title="Step 6"> <span class="round-tab"> <i
											class="glyphicon glyphicon-folder-open"></i>
									</span>
								</a></li>
								<li role="presentation" class="disabled"><a href="#step7"
									data-toggle="tab" aria-controls="step7" role="tab"
									title="Step 7"> <span class="round-tab"> <i
											class="glyphicon glyphicon-pencil"></i>
									</span>
								</a></li>
								<li role="presentation" class="disabled"><a href="#step8"
									data-toggle="tab" aria-controls="step8" role="tab"
									title="Step 8"> <span class="round-tab"> <i
											class="glyphicon glyphicon-picture"></i>
									</span>
								</a></li>

							</ul>
						</div>
						<!-- 我要去报名 -->
							<form role="form" method="post" onsubmit="return check1()"
							action="activityRegistration/insertActivitiesInformation">
							<div class="tab-content">
								<div class="tab-pane active" role="tabpanel" id="step12">
									<div class="mobile-grids">
										<label
											style="color: #48CFC1;font-size: 1.5em;margin-left:210px;letter-spacing: 10px;"
											>我要报名</label> <label
											style="display: block;color: #48CFC1; margin-left: 122px;margin-top:40px;font-stretch: normal;">联系人</label>
										<input type="text" value="${user.username }" name="pname" id="name3"
											style="width:250px;height:35px;padding-left:10px; margin-left:200px;margin-top:-30px; color:#C5C5C5;border:1px solid #48CFC1;  "
											onfocus="onfus3()"><br>
											<span id="nameText3" style="margin-left:44%"></span>
										<label
											style="display: block;color: #48CFC1;margin-left: 90px;margin-top:40px;font-stretch: normal;">联系人电话</label>
										<input type="text" value="${user.telephone }" id="telephone4"
											name="telephone" 
											style="width:250px;height:35px;padding-left:10px;margin-left:200px;margin-top:-30px; color:#C5C5C5;border:1px solid #48CFC1; "
											onfocus="onfus4()"
											onblur="if (value=='') {value='请输入联系人电话'}"><br>
											<span id="telephoneText4" style="margin-left:44%"></span>
											<label
											style="display: block;color: #48CFC1;margin-left: 90px;margin-top:40px;font-stretch: normal;">活动名称</label>
											<div class="layui-form-item">
											<div class="layui-inline">
												<div class="layui-input-inline">
													<select name="activitiesId" lay-verify="required" lay-search="" 
													id="findActivitiesNameId" 
														style="padding-left:10px;width:250px;height:35px;font-size:16px; margin-left:200px;margin-top:-30px; color:#C5C5C5;border:1px solid #48CFC1; ">
														<option value="">请选择</option>
														
													</select>
												</div>
											</div>
										</div>
										<label
											style="display: block;color: #48CFC1;margin-left: 106px;margin-top:40px;font-stretch: normal;">预约时间</label>
										<form class="layui-form" action="">
											<div class="layui-input-inline">
												<input type="text" name="reservationDate" id="date"
													lay-verify="date" autocomplete="off" class="layui-input"
													value="请输入预约时间"
													style="width:250px;height:35px;margin-left:200px;margin-top:-30px; color:#C5C5C5;"
													onfocus="onfus5()"
													onblur="if (value=='') {value='请输入预约时间'}"><br>
											<span id="dateText5" style="margin-left:44%"></span>
											</div>
										</form>
										<label
											style="display: block;color: #48CFC1;margin-left: 138px;margin-top:40px;font-stretch: normal;">社区</label>
										<div class="layui-form-item">
											<div class="layui-inline">
												<div class="layui-input-inline">
													<select name="branchId" lay-verify="required" lay-search="" id="branchsecondid"
														style="padding-left:10px;width:250px;height:35px;font-size:16px; margin-left:200px;margin-top:-30px; color:#C5C5C5;border:1px solid #48CFC1; ">
														<option value="">请选择</option>
														
													</select>
												</div>
											</div>
										</div>
										<p
											style="width: 260px;margin-left: 200px;font-size: 10px;color: #A2A2A2;">您提交成功后，我们的客服人员会在24小时内与您取得联系，确认参观事宜，感谢您的支持！</p>
										<label
											style="display: block;color: #48CFC1;margin-left: 138px;margin-top:40px;font-stretch: normal;">备注</label>
										<div class="layui-form-item layui-form-text">
											<div class="layui-input-block"
												style="width: 250px;margin-left: 200px;margin-top: -30px;">
												<textarea value="" class="layui-textarea" name="remarks"></textarea>
											</div>
										</div>
									</div>
									<input value="提交" type="submit"
										style="width: 100px;height:35px;text-align:center; color:#17877B; border: 1px solid #48CFC1;border-radius:5px;background-color: #48CFC1;margin-left: 150px;margin-top: 30px;">
									<input value="重置" type="reset"
										style="width: 100px;height:35px;text-align:center; color:#5784D5; border: 1px solid #83A7E9;border-radius:5px;background-color: #83A7E9; margin-left: 50px;margin-top: 30px;">

								</div>
							</div>
						</form>
					</div>
					</section>
				</div>
			</div>
		</div>
	</div>
	</c:if>
				
				
				
				
				
				
				<div class="aboutus-use">
				
				<center><h4>生活助手信息品台</h4></center>
				<ul style="margin-left:6%;margin-top:5%">
					<li ><span style="font-size:1.2em;"><a href="" id="yuyuea">【通州湾老人体检区】</a></span>
					<ul style="margin-top:2%;width:100%">
						<li ><span style="width:100%"><a href="">通州湾老人体检区，主要是针对于50岁以上的高龄老年人，高血压等
						通州湾老人体检区，主要是针对于50岁以上的高龄老年人，高血压等
						通州湾老人体检区，主要是针对于50岁以上的高龄老年人，高血压等。
						<span style="width:100%;float:right;"><a href="" id="xiangqing" style="color:#7C9A60">查看详情>></a></span></a></span></li>
					</ul>
				</li>
				<hr>
					<li><span style="font-size:1.2em;"><a href="">【通州湾老人体检区】</a></span>
					<ul  style="margin-top:2%">
						<li><span style="width:100%"><a href="">通州湾老人体检区，主要是针对于50岁以上的高龄老年人，高血压等
						通州湾老人体检区，主要是针对于50岁以上的高龄老年人，高血压等
						通州湾老人体检区，主要是针对于50岁以上的高龄老年人，高血压等。
						<span style="width:100%;float:right;"><a href=""  style="color:#7C9A60">查看详情>></a></span></a></span></li>
					</ul>
				</li>
				<hr>
				<li><span style="font-size:1.2em;"><a href="">【通州湾老人体检区】</a></span>
					<ul  style="margin-top:2%">
						<li><span style="width:100%"><a href="">通州湾老人体检区，主要是针对于50岁以上的高龄老年人，高血压等
						通州湾老人体检区，主要是针对于50岁以上的高龄老年人，高血压等
						通州湾老人体检区，主要是针对于50岁以上的高龄老年人，高血压等。
						<span style="width:100%;float:right;"><a href=""  style="color:#7C9A60">查看详情>></a></span></a></span></li>
					</ul>
				</li>
				<hr>
				<c:if test="${findActivitesName=='findActivitesName' }">
					<c:if test="${pageBean.totalCount==0}">
					<center>
					<span><a href="javascript:;" >< 上一页</a></span>
					<input type="text" value="1" style="padding-left:16px;border:none;width:40px;height:18px;background: #EBEBEC
					;margin-left:20px;margin-right:20px;margin-top:20px;" readonly="readonly">
					<span><a href="javascript:;" >下一页 ></a></span>
					</center>
					</c:if>
				</div>
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
						<div class="aboutus-intro">
				<center><h4>康复协助信息品台</h4></center>
				<ul style="margin-left:6%;margin-top:5%">
					<li ><span style="font-size:1.2em;"><a href="" id="yuyuea">【通州湾老人体检区】</a></span>
					<ul style="margin-top:2%;width:100%">
						<li ><span style="width:100%"><a href="">通州湾老人体检区，主要是针对于50岁以上的高龄老年人，高血压等
						通州湾老人体检区，主要是针对于50岁以上的高龄老年人，高血压等
						通州湾老人体检区，主要是针对于50岁以上的高龄老年人，高血压等。
						<span style="width:100%;float:right;"><a href="" id="xiangqing" style="color:#7C9A60">查看详情>></a></span></a></span></li>
					</ul>
				</li>
				<hr>
					<li><span style="font-size:1.2em;"><a href="">【通州湾老人体检区】</a></span>
					<ul  style="margin-top:2%">
						<li><span style="width:100%"><a href="">通州湾老人体检区，主要是针对于50岁以上的高龄老年人，高血压等
						通州湾老人体检区，主要是针对于50岁以上的高龄老年人，高血压等
						通州湾老人体检区，主要是针对于50岁以上的高龄老年人，高血压等。
						<span style="width:100%;float:right;"><a href=""  style="color:#7C9A60">查看详情>></a></span></a></span></li>
					</ul>
				</li>
				<hr>
				<li><span style="font-size:1.2em;"><a href="">【通州湾老人体检区】</a></span>
					<ul  style="margin-top:2%">
						<li><span style="width:100%"><a href="">通州湾老人体检区，主要是针对于50岁以上的高龄老年人，高血压等
						通州湾老人体检区，主要是针对于50岁以上的高龄老年人，高血压等
						通州湾老人体检区，主要是针对于50岁以上的高龄老年人，高血压等。
						<span style="width:100%;float:right;"><a href=""  style="color:#7C9A60">查看详情>></a></span></a></span></li>
					</ul>
				</li>
				<hr>
				<c:if test="${findActivitesName=='findActivitesName' }">
					<c:if test="${pageBean.totalCount==0}">
					<center>
					<span><a href="javascript:;" >< 上一页</a></span>
					<input type="text" value="1" style="padding-left:16px;border:none;width:40px;height:18px;background: #EBEBEC
					;margin-left:20px;margin-right:20px;margin-top:20px;" readonly="readonly">
					<span><a href="javascript:;" >下一页 ></a></span>
					</center>
					</c:if>
				</div>
				</c:if>
				</ul>
		
			</div>
				</div>

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
