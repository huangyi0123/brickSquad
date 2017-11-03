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
<link href="resource/plugins/bootstrap/bootstrap.min.css" rel="stylesheet">
<link href="resource/plugins/fonts/font-awesome.min.css" rel="stylesheet">
<link href="resource/plugins/layui/css/layui.css" rel="stylesheet" media="all">
<link href="resource/css/animate.min.css" rel="stylesheet">
<link href="resource/css/style.min.css" rel="stylesheet">
<script src="resource/plugins/jquery/jquery.min.js"></script>
<script src="resource/plugins/bootstrap/bootstrap.min.js"></script>
<script src="resource/plugins/layui/layui.js"></script>
<script type="text/javascript" src="resource/js/common.js"></script>
<link rel="stylesheet" href="resource/plugins/laysui/css/layui.css" media="all"> 


<script type="text/javascript">
	$(function() {
		$.ajax({
					url : 'news/findNewsReturnIndex',
					success : function(result) {
						result = JSON.parse(result);
						$(result)
								.each(
										function() {
											var title = this.title.length > 8 ? this.title
													.substring(0, 10)
													+ "..."
													: this.title;
											$("#news")
													.append(
															'<li><a title="'
																	+ this.title
																	+ '" href="news/findNewsExpandById?id='
																	+ this.id
																	+ '"><span class="title">'
																	+ title
																	+ '</span><span class="time">'
																	+ this.postTime
																	+ '</span> </a></li>');
										});
					}
				});
	});
</script>
<style type="text/css">
.news>li {
	height: 23px;
	width: 100%;
	padding-left:30px; 
} 

.news>li>a {
	display: block;
}

.title {
	 margin-top:-22px;
	font-size: 15px;
	line-height: 30px;
	display: block;
	float: left;
	margin-left:-50px; 
	
}


.time {
	 margin-top:-22px;
	line-height: 20px;
	display: block;
	float: right;
	padding-left:-133px; 
}
.coupons-gd h3{
	margin-top:-80px;
}
.activite {
	line-height:22px;
	float:left;
	padding-top:10px;
	width:100%;
}
.activite li{
	width:100%;
	height:25px;
}
.activite li a{
	display:block;
}
.title1{
	float:left;
	dispaly:block;
	font-size: 15px;
}
.time1{
	dispaly:display:block;float:right;
}


</style>
</head>
<body>
	<jsp:include page="WEB-INF/frontEnd_manage/util/head.jsp" />
	<div class="content-bottom">
	<div class="btm-grids " style="width:100%;">
		<div class="col-md-4 btm-grid back-col2 text-center"  style="height:350px;width:100%;">
			<div class="layui-carousel" id="test1" style="
			margin-top:-63px;magin-left:-170px;">
        	<div carousel-item="">
            <div><img src="resource/image/shijiuda.jpg" style="height:350px;padding:0px;" ></div>
            <div><img src="resource/image/oder2.jpg" style="height:350px;padding:0px;"></div>
            <div><img src="resource/image/oder3.jpg" style="height:350px;padding:0px;"></div>
            <div><img src="resource/image/oder8.jpg" style="height:350px;padding:0px;"></div>
       		</div>
    	</div>
  	</div>
	
			<div class="clearfix" style="margin-top:8px;"></div>
		</div>
	</div>
	<div class="coupons">
		<div class="container">
			<div class="coupons-grids text-center">
				<div class="col-md-3 coupons-gd">
					<h3>最新动态</h3>
				<p>
				<ul class="news" id="news"></ul>
				</p>
				</div>
				<div class="col-md-3 coupons-gd">
					<h4>
						<span>
							<a href="" title="活动中心"><img src="resource/image/web.png" alt=" " /></a>
						</span>
					</h4>
					<a href="" ><p>活动中心</p></a>
				</div>
				<div class="col-md-3 coupons-gd">
					<h4>
						<span>
							<a href="" title="商城中心"><img src="resource/image/credit.png" alt=" " /></a>
						</span>
					</h4>
					<a href=""><p>商城中心</p></a>
				</div>
				<div class="col-md-3 coupons-gd">
					<h4>
						<span>
							<a href="" title="更多信息"><img src="resource/image/security.png" alt=" " /></a>
						</span>
					</h4>
					<a href=""><p>更多信息</p></a>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<div class="content-bottom-two">
		<div class="col-md-6 content-left text-center">
			<img src="resource/image/bbb5.png" alt="" />
		</div>
		<div class="col-md-6 content-right text-center">
			<img src="resource/image/bbb3.png" alt="" />
		</div>
		<div class="clearfix"></div>
		<div class="btm-pos">
			<h3>近期活动</h3>
			<ul class="activite">
			<li ><a href="" title="生活常识"> <span	class="title1">生活常识</span><span class="time1">2015-12-04</span></a></li>
			<li ><a href="" title="生活常识,教育讲座"><span  class="title1">生活常识,教育讲座</span><span class="time1">2015-12-04</span></a></li>
			<li ><a href="" title="生活常识，知识讲座"><span  class="title1">生活常识，知识讲座</span><span class="time1">2015-12-04</span></a></li>
			<li ><a href="" title="生活常识，健康教育"><span  class="title1">生活常识，健康教育</span><span class="time1">2015-12-04</span></a></li>
			<li ><a href="" title="生活常识，生活常识影视"><span  class="title1">生活常识，生活常识影视</span><span class="time1">2015-12-04</span></a></li>
			<li ><a href="" title="生活常识，娱乐爱好交流会"><span  class="title1">生活常识，娱乐爱好交流会</span><span class="time1">2015-12-04</span></a></li>
			<li ><a href="" title="生活常识，运动会"><span  class="title1">生活常识，运动会</span><span class="time1">2015-12-04</span></a></li>
			</ul>
		</div>
	</div>
	<div class="footer-top">
		<div class="container">
			<div class="foo-grids">
				<div class="col-md-3 foo-grid">
					<h3>网站简介</h3>
					<ul>
						<li>
							<a href="#">关于我们</a>
						</li>
						<li>
							<a href="#">服务类型</a>
						</li>
						<li>
							<a href="#">服务人群</a>
						</li>
					</ul>
				</div>
				<div class="col-md-3 foo-grid">
					<h3>公司简介</h3>
					<ul>
						<li>
							<a href="#">开创时间</a>
						</li>
						<li>
							<a href="#">服务业务</a>
						</li>
						<li>
							<a href="#">热门品牌</a>
						</li>
						
					</ul>
				</div>
				<div class="col-md-3 foo-grid">
					<h3>业务类型</h3>
					<ul>
						<li>
							<a href="#">商品类型</a>
						</li>
						<li>
							<a href="#">生活类型</a>
						</li>
						<li>
							<a href="#">医疗类型</a>
						</li>
						
					</ul>
				</div>
				<div class="col-md-3 foo-grid">
					<h3>管理层次</h3>
					<ul>
						<li>上层</li>
						<li>下=z层</li>
						<li>下层</li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<jsp:include page="WEB-INF/frontEnd_manage/util/indexFooter.jsp" />
	<script src="resource/plugins/laysui/layui.js"></script> 
	<script>
        layui.use('carousel', function () {
            var carousel = layui.carousel;
            //建造实例
            carousel.render({
                elem: '#test1'
                , width: '100%'
                , height: '350px'
                , interval: 4000
            });
        });
    </script>
</body>

</html>
