<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<title>My JSP 'vedio-details.jsp' starting page</title>

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
<link rel="stylesheet" type="text/css"
	href="resource/css/vedio-details.css">
<link rel="stylesheet" type="text/css"
	href="resource/plugins/fonts/font-awesome.min.css">
<script type="text/javascript"
	src="resource/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="resource/plugins/laysui/layui.js"></script>
<script type="text/javascript" src="resource/js/vedio-details.js"></script>
<script type="text/javascript">
	$(function() {
		//加载评论
		getVideoCommentByPagination(1, 1);
		//
		$("#playitem").find('a').hover(function() {
			var p = $(this).find('p');
			p.css('z-index', 100);
			p.slideToggle();
		});
		$(".vedio_list").find('a').hover(function() {
			var p = $(this).find('p');

			p.slideToggle();
		});
		$(".vedio_related").find('a').hover(function() {
			var p = $(this).find('p');
			p.slideToggle();
		});
		/* 	$("#playitem").find('a').click(
					function() {
						var p = $(this).find('p');
						var src = $(p).attr('src');
						var html = '<embed  src="' + src
								+ '" style="width:100%;height: 100%">'
						$(".vedio_play").html(html);
					}); */
	});
</script>
</head>

<body>
	<div class="vedio_body">
		<jsp:include page="official-header.jsp"></jsp:include>
		<div class="vedio_main">
			<div class="layui-row">
				<div class="layui-col-xs12 layui-col-md9">
					<div class="vedio_play_main">
						<div class="vedio_play">
							<input type="hidden" id="beCommentedId"
								value="${activitiesMoviePAth.id }">
							<embed src="${activitiesMoviePAth.movie }"
								style="width:100%;height: 100%">
						</div>
					</div>
				</div>
				<div class="layui-col-xs6 layui-col-md3">
					<div class="vedio_recom" id="playitem">
						<label>热播推荐</label> <a
							href="common/toVedio_Details?id=${listacActivitiesClickAmount[0].id }"
							style="display: block;" class="vedio_bg"> <img alt=""
							class="vedio_bg" style="margin-top: 10px;"
							src="resource/image/3736651_1426063184096_800x600.jpg"> <img
							class="vedio_plays" alt="" src="resource/image/play.png">
							<p src="${listacActivitiesClickAmount[0].movie }"
								style="display: none;color:#000; height:30px;width:220px; background-color:#999;opacity:0.4; position:absolute; top: 140px">${listacActivitiesClickAmount[0].centent }</p>
						</a> <a
							href="common/toVedio_Details?id=${listacActivitiesClickAmount[1].id }"
							class="vedio_bg"> <img alt="" class="vedio_bg"
							src="resource/image/3736651_1426063184096_800x600.jpg"> <img
							class="vedio_plays" alt="" src="resource/image/play.png"
							style="top: 190px">
							<p src="${listacActivitiesClickAmount[1].movie }"
								style="display: none; height:30px;width:220px;color:#000; background-color:#999;opacity:0.4; position:absolute; top: 290px">${listacActivitiesClickAmount[1].centent }</p>
						</a>
						<div style="clear: both;"></div>
						<a
							href="common/toVedio_Details?id=${listacActivitiesClickAmount[2].id }">
							<img class="vedio_bg" alt="" class="vedio_bg"
							src="resource/image/3736651_1426063184096_800x600.jpg"> <img
							class="vedio_plays" alt="" src="resource/image/play.png"
							style="top: 340px">
							<p src="${listacActivitiesClickAmount[2].movie }"
								style="display: none;color:#000; height:30px;width:220px; background-color:#999;opacity:0.4; position:absolute; top: 440px">${listacActivitiesClickAmount[2].centent }</p>
						</a>
					</div>

				</div>

			</div>

			<!------------------------ 猜你喜欢 ----------------------->
			<%-- 			<div class="vedio_info" style="margin-top: 20px;">
				<div class="layui-row">
					<div class="layui-col-xs12 layui-col-md8">
						<div class="vedio_guess">
							<label>猜你喜欢</label> <a href="#" class="more"> 更多</a>
							<div class="vedio_list">
								<a href="#"> <img class="mybg" alt=""
									style="margin-left: 0px;"
									src="resource/image/3736651_1426063184096_800x600.jpg"> <img
									class="vedio_plays" alt="" src="resource/image/play.png"
									style="width:80px;height: 80px;left: 150px;top: 60px">
									<p
										style="display: none; height:30px;width:220px; background-color:#999;opacity:0.4; position:absolute; top:150px">你好</p>
								</a> <a href="#"> <img class="mybg" alt=""
									src="resource/image/3736651_1426063184096_800x600.jpg"> <img
									class="vedio_plays" alt="" src="resource/image/play.png"
									style="width:80px;height: 80px;left: 410px;top: 60px">
									<p
										style="display: none; height:30px;width:220px; background-color:#999;opacity:0.4; position:absolute; top:150px;left: 380px">你好</p>
								</a> <a href="#"> <img class="mybg" alt=""
									src="resource/image/3736651_1426063184096_800x600.jpg"> <img
									class="vedio_plays" alt="" src="resource/image/play.png"
									style="width:80px;height: 80px;left: 660px;top: 60px">
									<p
										style="display: none; height:30px;width:220px; background-color:#999;opacity:0.4; position:absolute; top:150px;left: 638px">你好</p>
								</a>
							</div>
						</div>
					</div>
					<div class="layui-col-xs6 layui-col-md4">
						<div class="vedio_details">
							<label style="font-size: 1.2em;color: black;letter-spacing: 5px;">简介</label>
							<!-- <label
								style="color: black;display: block;margin-top: 10px;">主讲人：</label> <label
								style="float: left;margin-left: 70px;margin-top: -18px;"><a href="#"
									style="color: #48CFC1;">石立勇</a></label> -->
							<label style="color: black;display: block;margin-top: 10px;">内容：</label>
							<p style="width: 300px;margin-left: 50px;margin-top: -18px;">${activitiesMoviePAth.centent }</p>
						</div>
					</div>
				</div>
			</div> --%>
			<!---------------------------- 评论 --------------------------->
			<div class="vedio_comm">
				<div class="vedio_details">
					<label style="font-size: 1.2em;color: black;letter-spacing: 5px;">简介</label>
					<!-- <label
								style="color: black;display: block;margin-top: 10px;">主讲人：</label> <label
								style="float: left;margin-left: 70px;margin-top: -18px;"><a href="#"
									style="color: #48CFC1;">石立勇</a></label> -->
					<label style="color: black;display: block;margin-top: 10px;">内容：</label>
					<p style="width: 300px;margin-left:60px;margin-top: -18px;">${activitiesMoviePAth.centent }</p>
				</div>

				<div>
					<div class="layui-row">
						<div class="layui-col-xs12 layui-col-md8">
							<label>我来评论</label>
							<div class="layui-input-block">
								<textarea id="comment_content"
									placeholder="请输入内容,评论内容不能超过250个汉字！" class="layui-textarea"></textarea>
							</div>
							<div class="comm_register">
								<c:if test="${user.id ne null }">
									<img alt="" src="${user.userPicPath }">
									<label class="vedio_reg_name">${user.username }</label>
								</c:if>
								<c:if test="${user.id eq null }">
									<label class="vedio_reg_name" style="font-size: 20px;">您还没有登录！
									</label>
								</c:if>
								<!-- <a href="#"> <i
									class="layui-icon"
									style="float:left; line-height:50px; font-size: 20px;margin-left: 10px;color: #999999;">&#xe600;</i>
								</a>
								 <label><a href="#" class="vedio_reg_change">切换账户</a></label> 
								<a href="#"
									style="display: block;margin-left: 200px;margin-top: -60px;">
									<i class="layui-icon"
									style="float:left; line-height:50px; font-size: 20px;margin-left: 10px;color: #999999;">&#xe60d;</i>
									<span class="vedio_comm_img">图片</span>
								</a> <label class="vedio_reg">登录</label> -->
								<button style="margin-top: 5px;float:right; "
									onclick="submitComment('${activitiesMoviePAth.id }','${user.id }')"
									class="layui-btn layui-btn-lg layui-btn-radius layui-btn-normal">提交评论</button>
							</div>
							<div class="vedio_comms" style="font-size: 20px;">
								<div style="clear: both;"></div>
								<div class="vedio_comm_cont" id="VideoComment">
									<!-- <label class="vedio_comm_cont_name">还没有评论</label> -->
									<!-- <img style="display: block;" alt=""
										src="resource/image/3736651_1426063184096_800x600.jpg">

									<label class="vedio_comm_cont_name">傻丫头~</label> <label
										class="vedio_comm_cont_time">10小时前</label>
									<p class="vedio_comm_cont_conts">大叔马克面临中年危机，却并不能像一个中年男人那样妥善应对:他话唠，经济虽不至于捉襟见肘，但因不善理财，经济危机好像随时有可能发生。王小米以为嫁了和自己母亲一样大的大叔马克就能实现被宠爱的梦想，但她没想到享受了大叔的成熟和稳定，就要承受他性格中已经既定无法和你磨合的部分。大叔马克面临中年危机，却并不能像一个中年男人那样妥善应对:他话唠，经济虽不至于捉襟见肘，但因不善理财，经济危机好像随时有可能发生。王小米以为嫁了和自己母亲一样大的大叔马克就能实现被宠爱的梦想，但她没想到享受了大叔的成熟和稳定，就要承受他性格中已经既定无法和你磨合的部分。</p>
									<div
										style="display:block;margin-left: 60px;position: relative;">
										<a href="#"> <i class="layui-icon praise">&#xe6c6;</i>
										</a> <font>6</font> <a href="#"> <i class="layui-icon stamp">&#xe6c5;</i>
										</a> <font>2</font> <a href="#"> <i
											class="layui-icon dialogue">&#xe611;</i>
										</a>
									</div>
									<font>3</font> -->
								</div>

								<div style="clear: both;"></div>
								<div id="pager" style="text-align: center;">
									<!-- 					<label style="margin-top: 30px;">全部评论<font
									style="color: #909EBF;size: 0.6em;letter-spacing: 0px;font-stretch: normal;">(0)</font></label>
								<div
									style="width: 100%;border: 1px solid #E3E7E8;margin-top: 10px;"></div>
								<label
									style="color: #909EBF;margin-top: 20px;font-size: 0.8em;letter-spacing: 0px;margin-left: 10px;">第1页
									/ 共5页</label> 
									<label
									style="color: #909EBF;margin-top: 20px;font-size: 0.8em;letter-spacing: 0px;margin-left: 50px;">上一页</label>
									<label
									style="color: #909EBF;margin-top: 20px;font-size: 0.8em;letter-spacing: 0px;margin-left: 80px;">下一页</label>   -->
								</div>
								<div
									style="display:block; width: 100%;border: 1px solid #E5E5E5;margin-top: 10px;"></div>
							</div>

						</div>

						<div class="layui-col-xs6 layui-col-md4">
							<div style="clear: both;"></div>
							<div class="vedio_related">
								<label>相关推荐</label>
								<c:if test="${relatedRecommendation[0].id eq null }">
									<c:if test="${relatedRecommendation[0].id ne null }">
										<a href="common/toVedio_Details?id=${listMovie[0].id }"
											class="vedio_rel_bg"> <img class="mybg" alt=""
											style="margin-top: 10px;"
											src="resource/image/3736651_1426063184096_800x600.jpg">
											<img class="vedio_rel_plays" alt=""
											src="resource/image/play.png" style="top: 60px">
											<p src="${listMovie[0].movie }"
												style="display: none; height:30px;width:260px; background-color:#999;opacity:0.4; position:absolute; top: 170px;left: 70px">${listMovie[0].centent }</p>
										</a>
									</c:if>
									<c:if test="${relatedRecommendation[1].id ne null }">
										<a href="common/toVedio_Details?id=${listMovie[1].id }"
											class="vedio_rel_bg"> <img class="mybg" alt=""
											style="margin-top: 10px;"
											src="resource/image/3736651_1426063184096_800x600.jpg">
											<img class="vedio_rel_plays" alt=""
											src="resource/image/play.png" style="top: 60px">
											<p src="${listMovie[1].movie }"
												style="display: none; height:30px;width:260px; background-color:#999;opacity:0.4; position:absolute; top: 170px;left: 70px">${listMovie[1].centent }</p>
										</a>
									</c:if>
									<c:if test="${relatedRecommendation[2].id ne null }">
										<a href="common/toVedio_Details?id=${listMovie[2].id }"
											class="vedio_rel_bg"> <img class="mybg" alt=""
											style="margin-top: 10px;"
											src="resource/image/3736651_1426063184096_800x600.jpg">
											<img class="vedio_rel_plays" alt=""
											src="resource/image/play.png" style="top: 60px">
											<p src="${listMovie[2].movie }"
												style="display: none; height:30px;width:260px; background-color:#999;opacity:0.4; position:absolute; top: 170px;left: 70px">${listMovie[2].centent }</p>
										</a>
									</c:if>
								</c:if>
								<c:if test="${relatedRecommendation[0].id ne null }">
									<a
										href="common/toVedio_Details?id=${relatedRecommendation[0].id }"
										class="vedio_rel_bg"> <img class="mybg" alt=""
										style="margin-top: 10px;"
										src="resource/image/3736651_1426063184096_800x600.jpg">
										<img class="vedio_rel_plays" alt=""
										src="resource/image/play.png" style="top: 60px">
										<p src="${relatedRecommendation[0].movie }"
											style="display: none; height:30px;width:260px; background-color:#999;opacity:0.4; position:absolute; top: 170px;left: 70px">${relatedRecommendation[0].centent }</p>
									</a>
								</c:if>
								<c:if test="${relatedRecommendation[1].id ne null }">
									<a
										href="common/toVedio_Details?id=${relatedRecommendation[1].id }"
										class="vedio_rel_bg"> <img class="mybg" alt=""
										src="resource/image/3736651_1426063184096_800x600.jpg">
										<img class="vedio_rel_plays" alt=""
										src="resource/image/play.png" style="top: 240px">
										<p src="${relatedRecommendation[1].movie }"
											style="display: none; height:30px;width:260px; background-color:#999;opacity:0.4; position:absolute; top: 350px;left: 70px">${relatedRecommendation[1].centent }</p>
									</a>
								</c:if>
								<!-- 	<div style="clear: both;"></div> -->
								<c:if test="${relatedRecommendation[2].id ne null}">
									<a
										href="common/toVedio_Details?id=${relatedRecommendation[2].id } ">
										<img class="mybg" alt=""
										src="resource/image/3736651_1426063184096_800x600.jpg">
										<img class="vedio_rel_plays" alt=""
										src="resource/image/play.png" style="top:420px">
										<p src="${relatedRecommendation[2].movie }"
											style="display: none; height:30px;width:260px; background-color:#999;opacity:0.4; position:absolute; top: 530px;left: 70px">${relatedRecommendation[2].centent }</p>
									</a>
								</c:if>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
</body>
</html>
