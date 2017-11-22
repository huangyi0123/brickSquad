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

<script type="text/javascript"
	src="resource/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="resource/plugins/laysui/layui.js"></script>
</head>

<body>
	<div class="vedio_body">
		<jsp:include page="official-header.jsp"></jsp:include>
		<div class="vedio_main">
			<div class="layui-row">
				<div class="layui-col-xs12 layui-col-md9">
					<div class="vedio_play_main">

						<div class="vedio_play"></div>
					</div>
				</div>
				<div class="layui-col-xs6 layui-col-md3">
					<div class="vedio_recom">
						<label>热播推荐</label> <a href="#" class="vedio_bg"> <img alt=""
							class="vedio_bg" style="margin-top: 10px;"
							src="resource/image/3736651_1426063184096_800x600.jpg"> <img
							class="vedio_plays" alt="" src="resource/image/play.png"></a> <a
							href="#" class="vedio_bg"><img alt="" class="vedio_bg"
							src="resource/image/3736651_1426063184096_800x600.jpg"> <img
							class="vedio_plays" alt="" src="resource/image/play.png"></a>
						<div style="clear: both;"></div>
						<a href="#"><img class="vedio_bg" alt="" class="vedio_bg"
							src="resource/image/3736651_1426063184096_800x600.jpg"> <img
							class="vedio_plays" alt="" src="resource/image/play.png"></a>
					</div>

				</div>

			</div>

			<!------------------------ 猜你喜欢 ----------------------->
			<div class="vedio_info" style="margin-top: 20px;">
				<div class="layui-row">
					<div class="layui-col-xs12 layui-col-md8">
						<div class="vedio_guess">
							<label>猜你喜欢</label> <a href="#" class="more"> 更多</a>
							<div class="vedio_list">
								<a href="#"><img alt="" style="margin-left: 0px;"
									src="resource/image/3736651_1426063184096_800x600.jpg"></a> <a
									href="#"><img alt=""
									src="resource/image/3736651_1426063184096_800x600.jpg"></a> <a
									href="#"><img alt=""
									src="resource/image/3736651_1426063184096_800x600.jpg"></a>
							</div>
						</div>
					</div>
					<div class="layui-col-xs6 layui-col-md4">
						<div class="vedio_details">
							<label style="font-size: 1.2em;color: black;letter-spacing: 5px;">简介</label>
							<label style="color: black;display: block;margin-top: 10px;">主讲人：</label>
							<label style="float: left;margin-left: 70px;margin-top: -18px;"><a
								href="#" style="color: #48CFC1;">石立勇</a></label> <label
								style="color: black;display: block;margin-top: 10px;">内容：</label>
							<p style="width: 300px;margin-left: 50px;margin-top: -18px;">大叔马克面临中年危机，却并不能像一个中年男人那样妥善应对:他话唠，经济虽不至于捉襟见肘，但因不善理财，经济危机好像随时有可能发生。王小米以为嫁了和自己母亲一样大的大叔马克就能实现被宠爱的梦想，但她没想到享受了大叔的成熟和稳定，就要承受他性格中已经既定无法和你磨合的部分。</p>
						</div>
					</div>
				</div>
			</div>
			<!---------------------------- 评论 --------------------------->
		<div class="vedio_comm">
			<div class="layui-row">
				<div class="layui-col-xs12 layui-col-md8">
						<label>我来评论</label>
							<div class="layui-input-block">
								<textarea placeholder="请输入内容" class="layui-textarea"></textarea>
							</div>
				</div>
				<div class="layui-col-xs6 layui-col-md4" style="border: 1px solid red;">
					<div class="vedio_details">
						<label style="font-size: 1.2em;color: black;letter-spacing: 5px;">简介</label>
						<label style="color: black;display: block;margin-top: 10px;">主讲人：</label>
						<label style="float: left;margin-left: 70px;margin-top: -18px;"><a
							href="#" style="color: #48CFC1;">石立勇</a></label> <label
							style="color: black;display: block;margin-top: 10px;">内容：</label>
						<p style="width: 300px;margin-left: 50px;margin-top: -18px;">大叔马克面临中年危机，却并不能像一个中年男人那样妥善应对:他话唠，经济虽不至于捉襟见肘，但因不善理财，经济危机好像随时有可能发生。王小米以为嫁了和自己母亲一样大的大叔马克就能实现被宠爱的梦想，但她没想到享受了大叔的成熟和稳定，就要承受他性格中已经既定无法和你磨合的部分。</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
</body>
</html>
