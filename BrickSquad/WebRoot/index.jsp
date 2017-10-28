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
<link href="resource/plugins/bootstrap/bootstrap.min.css"
	rel="stylesheet">
<link href="resource/plugins/fonts/font-awesome.min.css"
	rel="stylesheet">
<link href="resource/plugins/layui/css/layui.css"
	rel="stylesheet">
<link href="resource/css/animate.min.css" rel="stylesheet">
<link href="resource/css/style.min.css" rel="stylesheet">
<script src="resource/plugins/jquery/jquery.min.js"></script>
<script src="resource/plugins/bootstrap/bootstrap.min.js"></script>
<script src="resource/plugins/layui/layui.js"></script>
<title>Home</title>
<script type="text/javascript">
$(function() {
	var flag = '${flag}';
	if (flag == '2') {
		layui.use('layer', function() {
			var layer = layui.layer;
			var msg = '${msg}';
			layer.msg(msg);
		});
	}

});</script>
<body>
	<jsp:include page="WEB-INF/frontEnd_manage/head.jsp"/>
	<div class="content-bottom">
		<div class="btm-grids">
			<div class="col-md-4 btm-grid back-col1 text-center">
				<img src="resource/image/bbbb.png" alt="" />
			</div>
			<div class="col-md-4 btm-grid btm-wid">
				<h3>最新动态</h3>
				<p>
				<ul class="news">
					<li>
						<!--  要改路径-->
						<a href="" style="display:block; line-height: 30px">
							<span style="font-size:24px;margin-left: 10px;display: block;float: left;">xxxxxxxxxxxxxxxxxxx</span>
							<span
								style="margin-right: 5px;display: block;float: right;margin-bottom: 0;line-height: 27.2px;">2017.10.11</span>
						</a>
					</li>
					<li>
						<a href="#" style="clear:both; line-height: 30px">
							<span style="font-size:24px;margin-left: 10px;display: block;float: left;">xxxxxxxxxxxxxxxxxxx</span>
							<span
								style="margin-right: 5px;display: block;float: right;margin-bottom: 0;line-height: 27.2px;">2017.10.11</span>
						</a>
					</li>
				</ul>
				</p>
			</div>
			<div class="col-md-4 btm-grid back-col2 text-center">
				<img src="resource/image/bbb1.png" alt="" />
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="coupons">
		<div class="container">
			<div class="coupons-grids text-center">
				<div class="col-md-3 coupons-gd">
					<h3>
						RECHARGE IN
						<span>3 SIMPLE STEPS</span>
					</h3>
				</div>
				<div class="col-md-3 coupons-gd">
					<h4>
						<span>
							<img src="resource/image/web.png" alt=" " />
						</span>
					</h4>
					<p>LOGIN TO YOUR ACCOUNT</p>
				</div>
				<div class="col-md-3 coupons-gd">
					<h4>
						<span>
							<img src="resource/image/credit.png" alt=" " />
						</span>
					</h4>
					<p>ENTER RECHARGE DETAILS</p>
				</div>
				<div class="col-md-3 coupons-gd">
					<h4>
						<span>
							<img src="resource/image/security.png" alt=" " />
						</span>
					</h4>
					<p>MAKE PAYMENT</p>
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
			<h3>Exclusive Offers</h3>
			<p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id
				quod maxime placeat facere possimus, omnis voluptas assumenda est.</p>
		</div>
	</div>
	<div class="footer-top">
		<div class="container">
			<div class="foo-grids">
				<div class="col-md-3 foo-grid">
					<h3>MOBILE RECHARGES</h3>
					<ul>
						<li>
							<a href="#">Airtel</a>
						</li>
						<li>
							<a href="#">Aircel</a>
						</li>
						<li>
							<a href="#">BSNL</a>
						</li>
						<li>
							<a href="#">Idea</a>
						</li>
						<li>
							<a href="#">MTNL</a>
						</li>
						<li>
							<a href="#">MTS</a>
						</li>
					</ul>
				</div>
				<div class="col-md-3 foo-grid">
					<h3>DTH RECHARGES</h3>
					<ul>
						<li>
							<a href="#">Airtel Digital TV Recharges</a>
						</li>
						<li>
							<a href="#">Dish TV Recharges</a>
						</li>
						<li>
							<a href="#">Tata Sky Recharges</a>
						</li>
						<li>
							<a href="#">Reliance Digital TV Recharges</a>
						</li>
						<li>
							<a href="#">Sun Direct Recharges</a>
						</li>
						<li>
							<a href="#">Videocon D2H Recharges</a>
						</li>
					</ul>
				</div>
				<div class="col-md-3 foo-grid">
					<h3>DATACARD RECHARGES</h3>
					<ul>
						<li>
							<a href="#">Airtel 2G Service</a>
						</li>
						<li>
							<a href="#">Aircel 2G Service</a>
						</li>
						<li>
							<a href="#">BSNL 2G Service</a>
						</li>
						<li>
							<a href="#">MTS MBlaze Recharges</a>
						</li>
						<li>
							<a href="#">Tata Photon Plus Recharges</a>
						</li>
						<li>
							<a href="#">Reliance NetConnect Recharges</a>
						</li>
					</ul>
				</div>
				<div class="col-md-3 foo-grid">
					<h3>PAYMENT OPTIONS</h3>
					<ul>
						<li>Credit Cards</li>
						<li>Debit Cards</li>
						<li>Any Visa Debit Card (VBV)</li>
						<li>Direct Bank Debits</li>
						<li>Cash Cards</li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<jsp:include page="WEB-INF/frontEnd_manage/indexFooter.jsp"/>
	</body>
</html>
