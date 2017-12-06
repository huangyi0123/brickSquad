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

<title>官网</title>
<link href='https://fonts.googleapis.com/css?family=Varela+Round' rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
<link href="resource/plugins/bootstrap/bootstrap.css" rel="stylesheet">


<link href="resource/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="resource/plugins/laysui/css/layui.css" rel="stylesheet">
<link href="resource/css/index.css" rel="stylesheet">

<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Easy Recharge Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	
	
	
	
	
	
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 










</script>
<script type="text/javascript" src="resource/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="resource/plugins/laysui/layui.js"></script>
<script type="text/javascript" src="resource/plugins/angularjs/angular.min.js"></script>

<script>
	$(function() {

		//新闻滚动
		/* 	initInfor(); */
		var roll_box = document.getElementById('roll_box');
		var roll_content = document.getElementById('roll_content');
		var roll_temp = document.getElementById('roll_temp');
		//相当于让roll_box中足够的内容并产生滚动条
		roll_temp.innerHTML = roll_content.innerHTML + roll_content.innerHTML;
		function autoScroll() {
			if (roll_box.scrollTop >= roll_content.offsetHeight) {
				roll_box.scrollTop = 0; //obj.scrollTop表示滚动条上边的元素的高度，为0表示让滚动条到顶部位置
			} else {
				roll_box.scrollTop++; //让滚动条向下移动，相当于内容向上移动
			}
		}

		var interval = window.setInterval(autoScroll, 80);

		//鼠标进入，停止滚动
		$('#roll_box').mousemove(function() {
			window.clearInterval(interval);
		});

		//鼠标移出，继续滚动
		$('#roll_box').mouseout(function() {
			interval = window.setInterval(autoScroll, 80);
		});
		initInfor();
		//头像图片信息
		var imagepath = $("#imagepath").val();
		if (imagepath == "") {
			$("#indexUserPic").attr("src", "resource/image/userdefaultpic.jpg");
		} else {
			$("#indexUserPic").attr("src", imagepath);
		}
		layui.use('layer', function() {
			var layer = layui.layer;
			$("#register").click(function() {
				layer = layer.open({
					title : '注册|登录',
					type : 2,
					content : "user/toRegister",
					offset : '100px',
					area : [ '400px', '450px' ],
					end : function() {
						location.reload();
					}
				});
			});
			$("#login").click(function() {
				layer = layer.open({
					title : '注册|登录',
					type : 2,
					content : "user/toLogin?type=user",
					offset : '100px',
					area : [ '400px', '450px' ],
					end : function() {
						location.reload();
					}
				});
			});
		});
	});

	function logout() {
		layui.use('layer', function() {
			var layer = layui.layer;
			layer.open({
				title : '提示',
				content : "是否退出系统？",
				offset : '200px',
				btn : [ "确认", "取消" ],
				yes : function(index) {
					$.ajax({
						url : "user/logout",
						success : function(data) {
							window.location = "common/toIndex";
							layer.close(index);
						}
					});
				}
			});
		});

	}
</script>
<script type="text/javascript">
	function initInfor() {
		$
				.ajax({
					url : 'news/findNewsDaily',
					success : function(data) {
						data = JSON.parse(data);
						console.log(data);
						for (var i = 0; i < data.length; i++) {
							$(".uli")
									.append(
											"<a href='news/findNewsInformation?id="
													+ data[i].id
													+ "'  style='margin-left:-12px;' ><div style='overflow: hidden; white-space: nowrap; text-overflow: ellipsis;'>"
													+ data[i].title
													+ "</div><span style='float: right;margin-right:8px;'>"
													+ data[i].postTime
													+ "</span></a>" + "");
						}
					}

				});
	};
</script>

<script>
	$(document).ready(function() {

		//Initialize tooltips
		$('.nav-tabs > li a[title]').tooltip();

		//Wizard
		$('a[data-toggle="tab"]').on('show.bs.tab', function(e) {

			var $target = $(e.target);

			if ($target.parent().hasClass('disabled')) {
				return false;
			}
		});

		$(".next-step").click(function(e) {

			var $active = $('.wizard .nav-tabs li.active');
			$active.next().removeClass('disabled');
			nextTab($active);

		});
		$(".prev-step").click(function(e) {

			var $active = $('.wizard .nav-tabs li.active');
			prevTab($active);

		});
	});

	function nextTab(elem) {
		$(elem).next().find('a[data-toggle="tab"]').click();
	}
	function prevTab(elem) {
		$(elem).prev().find('a[data-toggle="tab"]').click();
	}
</script>
<script type="text/javascript">
	function findBranch() {
		$.ajax({
			url : 'reservation/findBranch',
			success : function(data) {
				$("#branchid").html('');
				data = JSON.parse(data);
				for (var i = 0; i < data.length; i++) {
					$("#branchid").append(
							"<option value='"+data[i].id+"'>" + data[i].name
									+ "</option>");
				}
				;
			}

		});
	}
</script>
<script type="text/javascript">
	function findActivitiesName() {
		var user = '${user}';
		if (user != "") {

			$.ajax({
				url : 'activityRegistration/findActivityName',
				success : function(data) {
					$("#findActivitiesNameId").html('');
					data = JSON.parse(data);
					/* console.log(data[0].articleName); */
					var dataN;
					var dataM;
					for (var i = 0; i < data.length; i++) {
						dataN = data[i].articleName;
						dataM = data[i].branchData;
					}
					;
					dataN = JSON.parse(dataN);
					for (var i = 0; i < dataN.length; i++) {
						$("#findActivitiesNameId").append(
								"<option value='"+dataN[i].id+"'>"
										+ dataN[i].name + "</option>");
					}
					dataM = JSON.parse(dataM);
					console.log(dataM);
					for (var i = 0; i < dataM.length; i++) {
						$("#branchsecondid").append(
								"<option value='"+dataM[i].id+"'>"
										+ dataM[i].name + "</option>");
					}
					;
				}

			});
		} else {
			alert("您还没有登录，请先去登录!");
		}
	}
</script>
<script type="text/javascript">
	function check() {
		var name = document.getElementById("name").value;
		var telephone = document.getElementById("telephone").value;
		var nameText = document.getElementById("nameText");
		if (name.trim() == "") {
			nameText.innerHTML = "<span style='color:#C5C5C5'>姓名不能为空</span>";
			return false;
		}
		var phoneText = document.getElementById("telephoneText");
		if (telephone.trim() == "") {
			phoneText.innerHTML = "<span style='color:#C5C5C5'>手机号不能为空</span>";
			return false;
		} else if (telephone.match('\\d{11}') != telephone) {
			phoneText.innerHTML = "<span style='color:#C5C5C5'>手机号格式不正确</span>";
			return false;
		}
		var reservationDate = $("#reservationDate").val();
		if (reservationDate.trim() == "") {
			var reservationDatedateText = document
					.getElementById("reservationDatedateText");
			reservationDatedateText.innerHTML = "<span style='color:#C5C5C5'>请选择日期！</span>";
			return false;
		}

	}
	function onfus1() {
		var nameText = document.getElementById('nameText');
		nameText.innerHTML = "<span style='color:#C5C5C5'></span>";
	}
	function onfus2() {
		var phoneText = document.getElementById('telephoneText');
		phoneText.innerHTML = "<span style='color:#C5C5C5'></span>";
	}
	function onfusreservationDate() {
		var reservationDatedateText = document
				.getElementById("reservationDatedateText");
		reservationDatedateText.innerHTML = "<span style='color:#C5C5C5'></span>";
	}
	function check1() {
		var branchsecondid = document.getElementById("branchsecondid").value;
		var name = document.getElementById("name3").value;
		var telephone = document.getElementById("telephone4").value;
		var date = document.getElementById("date").value;
		var nameText = document.getElementById("nameText3");

		if (name == "") {
			nameText.innerHTML = "<span style='color:#C5C5C5'>姓名不能为空</span>";
			return false;
		}
		var phoneText = document.getElementById("telephoneText4");
		if (telephone == "") {
			phoneText.innerHTML = "<span style='color:#C5C5C5'>手机号不能为空</span>";
			return false;
		} else if (telephone.match('\\d{11}') != telephone) {
			phoneText.innerHTML = "<span style='color:#C5C5C5'>手机号格式不正确</span>";
			return false;
		}
		var dateText = document.getElementById("dateText5");
		if (date == "请输入预约时间") {
			dateText.innerHTML = "<span style='color:#C5C5C5'>时间不能为空</span>";
			return false;
		}
		if (branchsecondid.trim() == "") {
			var branchsecondidMessage = document
					.getElementById("branchsecondidMessage");
			branchsecondidMessage.innerHTML = "<span style='color:#C5C5C5'>请选择社区</span>";
			return false;
		}
	}

	function onfus3() {
		var nameText = document.getElementById('nameText3');
		nameText.innerHTML = "<span style='color:#C5C5C5'></span>";
	}
	function onfus4() {
		var phoneText = document.getElementById('telephoneText4');
		phoneText.innerHTML = "<span style='color:#C5C5C5'></span>";
	}
	function onfus5() {
		var dateText = document.getElementById('dateText5');
		dateText.innerHTML = "<span style='color:#C5C5C5'></span>";
	}
</script>
<script type="text/javascript">
	function findType() {
		var typeValue = $("#searchType").val().trim();
		if (typeValue == "") {
			alert("搜索内容不能为空！");
		} else {
			var ahref = document.getElementById("searchQue");
			ahref.href = "type/searchContent?type=aboutus-intro&search="
					+ typeValue;
		}

	}
	function findTypess() {
		
		var typeValue = $("#region123").val().trim();
		if (typeValue == "") {
			alert("搜索内容不能为空！");
		} else {
			var ahref = document.getElementById("qwe");
			ahref.href = "type/searchContent?type=aboutus-intro&search="
					+ typeValue;
		}

	}
	$(function() {
		$(".myicon").find('img').hover(
				function() {
					var src = $(this).attr('src');
					src = src.substring(src.lastIndexOf("/") + 1, src
							.lastIndexOf("."));
					var n = src.indexOf("1");
					if (n == -1) {
						$(this).attr('src', "resource/image/" + src + "1.png");
					}

				});
		$(".myicon").find('img').mouseout(
				function() {
					var src = $(this).attr('src');
					var n = src.indexOf("1");
					src = src.substring(src.lastIndexOf("/") + 1, src
							.lastIndexOf("1"));
					console.log(src);
					if (n != -1) {
						src = "resource/image/" + src + ".png";
						console.log(src);
						$(this).attr('src', src);
					}
				});
	});
</script>
<style type="text/css">
.myicon img {
	width: 26px;
	margin: 5px;
}
</style>
</head>

<body>
	<div class="banner">
		<div class="header" style="height: 66px;">
			<div class="logo">
				<h1>
					<a href="">
						<i>
							<img src="resource/image/cell.png" alt=" " />
						</i>
						养乐堡
					</a>
				</h1>
			</div>
			<div class="top-nav">
				<span class="menu">
					<img src="resource/image/menu.png" alt=" " />
				</span>
				<ul class="layui-nav" style="margin-left:-240px; margin-top: -25px;background-color: #48CFC1;">
					<li class="layui-nav-item layui-this">
						<a href="">首页</a>
					</li>
					<li class="layui-nav-item">
						<a href="shopIndex/toShop" style="font-size:1.5em;color: #FF9F59;">养乐商城</a>
					</li>

					<li class="layui-nav-item">
						<a href="common/toActivity_carousel?type=online_course">养乐活动</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="common/toActivity_carousel?type=online_course">线上课程</a>
							</dd>
							<dd>
								<a href="common/toActivity_carousel?type=offline_course">线下活动</a>
							</dd>
						</dl>
					</li>
					<li class="layui-nav-item">
						<a href="common/toLife?type=aboutus-intro">养乐生活</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="common/toLife?type=nutritive-diet">营养膳食</a>
							</dd>
							<dd>
								<a href="common/toLife?type=user-video">用户视频</a>
							</dd>
							<dd>
								<a href="common/toLife?type=user-feedback">用户反馈</a>
							</dd>
						</dl>
					</li>

					<li class="layui-nav-item">
						<a
							href="LeFortServiceController/serverWebsiteTemplate?type=medical-reservation&typeId=6f04943acfeb11e7bba55254002ec43c">养乐服务</a>
						<dl class="layui-nav-child">
							<dd>
								<a
									href="LeFortServiceController/serverWebsiteTemplate?type=medical-reservation&typeId=6f04943acfeb11e7bba55254002ec43c">体检预约</a>
							</dd>
							<dd>
								<a
									href="LeFortServiceController/serverWebsiteTemplate?type=life-assistant&typeId=6f04943acfeb11e7bba55254002ec43c">生活助手</a>
							</dd>
							<dd>
								<a
									href="LeFortServiceController/serverWebsiteTemplate?type=independent-life&typeId=6f04943acfeb11e7bba55254002ec43c">独立生活</a>
							</dd>
							<dd>
								<a
									href="LeFortServiceController/serverWebsiteTemplate?type=rehabilitation-assistance&typeId=6f04943acfeb11e7bba55254002ec43c">康复协助</a>
							</dd>
						</dl>
					</li>
					<li class="layui-nav-item">
						<a href="common/toWebsiteTemplate?type=aboutus-intro">关于养乐</a>
						<dl class="layui-nav-child">
							<dd>
								<a href="common/toWebsiteTemplate?type=aboutus-intro">养乐简介</a>
							</dd>
							<dd>
								<a href="common/toWebsiteTemplate?type=aboutus-use">快速上手</a>
							</dd>
							<dd>
								<a href="common/toWebsiteTemplate?type=aboutus-join">加入我们</a>
							</dd>
							<dd>
								<a href="common/toWebsiteTemplate?type=aboutus-cont">联系我们</a>
							</dd>
						</dl>
					</li>
					<li class="layui-nav-item" ng-app="">
						<a href="javascript:;" ng-if="${user==null }" id="login">登录</a>
						<a href="javascript:;" ng-if="${user!=null }">
							<input type="hidden" id="imagepath" value="${user.userPicPath }">
							<img src="" id="indexUserPic" class="layui-nav-img">${user.username }</a>
						<dl class="layui-nav-child" ng-if="${user!=null }">
							<dd ng-if="${user!=null }">
								<a href="common/toPersonal">个人中心</a>
							</dd>
							<dd ng-if="${user!=null }">
								<a href="javascript:;" onclick="logout()">注销</a>
							</dd>
						</dl>
						<dl class="layui-nav-child" ng-if="${user==null }">
							<dd>
								<a href="javascript:;" id="register"> 注册</a>
							</dd>
						</dl>
					</li>
				</ul>

			</div>
			<!-- start search-->
			<div class="search-box">
				<div id="sb-search" class="sb-search">
					<form method="post" action="activities/findActivitesName">
						<input class="sb-search-input" placeholder="请输入您的关键字..." type="search" name="search"
							id="search">
						<input class="sb-search-submit" type="submit" value="">
						<span class="sb-icon-search"> </span>
					</form>
				</div>
			</div>

			<div class="clearfix"></div>
		</div>
		<div class="layui-carousel" id="test10">
			<div carousel-item="">
				<div>
					<img src="resource/image/lb1.jpg">
				</div>
				<div>
					<img src="resource/image/lb2.jpg">
				</div>
				<div>
					<img src="resource/image/lb3.jpg">
				</div>
				<div>
					<img src="resource/image/lb4.jpg">
				</div>
				<div>
					<img src="resource/image/lb5.jpg">
				</div>
				<div>
					<img src="resource/image/lb6.jpg">
				</div>
				<div>
					<img src="resource/image/lb7.jpg">
				</div>
			</div>
			<div class="container">
				<div class="buttons" style="z-index: 10;">
					<ul>
						<li>
							<a class="hvr-shutter-in-vertical" href="#" data-toggle="modal" data-target="#myModal"
								onclick="findBranch()">预约参观</a>
						</li>
						<li>
							<a class="hvr-shutter-in-vertical" href="#" data-toggle="modal" data-target="#myModal1"
								onclick="findActivitiesName()">我要报名</a>
						</li>
					</ul>

				</div>
			</div>
		</div>
	</div>
	<div class="layui-row">
		<div class="content-bottom">
			<div class="btm-grids">
				<div class="layui-col-xs6 layui-col-sm6 layui-col-md4">
					<div class=" btm-grid back-col1 text-center">
						<!-- 
				<img src="resource/image/timg.jpg" alt="" /> -->

					</div>
				</div>
				<!-- 	<div class="col-md-4 btm-grid btm-wid"
				style="background-color: #48CFC1;">
				<input value="社区搜索" class="title" readonly="readonly">
				<input class="city_search" type="text" value="" -->
				<div class="layui-col-xs6 layui-col-sm6 layui-col-md4">
					<div class=" btm-grid btm-wid">
						<input value="社区搜索" class="title" readonly="readonly">
						<input class="city_search" type="text" value="请输入城市" id="searchType" style="color:#C5C5C5; "
							onfocus="if(value=='请输入城市') {value=''}" onblur="if (value=='') {value='请输入城市'}">
						<label class="search_icon"
							style="display:block; width:40px;height:40px;margin-top:-40px;margin-left:295px;background-color: #17877B;border:1px #17877B; border-radius:0 5px 5px 0;">
							<a href="" id="searchQue">
								<i class="layui-icon" onclick="findType()"
									style="display:block; font-size: 25px;line-height: 40px;margin-left: 8px;">&#xe615;</i>
							</a>
						</label>
						<div style="width:100%;height:100px;margin-top:50px; background-color: white;">
							<label
								style="margin-left: 140px;margin-top:20px; font-size: 2em;color: #C5C5C5;letter-spacing: 10px;">咨询热线</label>
							<label style="margin-left: 120px;margin-top:20px; font-size: 2em;color: #C5C5C5;">880-820-8829</label>
						</div>
					</div>
				</div>
				<div class="layui-col-xs6 layui-col-sm6 layui-col-md4">
					<div class="btm-grid back-col2 text-center">
						<!-- <img src="resource/image/bbb1.png" alt="" /> -->
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<div class="coupons">
		<div class="container">
			<div class="coupons-grids text-center">

				<div class="col-md-3 coupons-gd">
					<h4>
						<span>
							<a href="common/toLife?type=aboutus-intro">
								<img src="resource/image/web.png" alt=" " />
							</a>
						</span>
					</h4>
					<p>生活</p>
				</div>
				<div class="col-md-3 coupons-gd">
					<h4>
						<span>
							<a
								href="LeFortServiceController/serverWebsiteTemplate?type=aboutus-intro&typeId=6f04943acfeb11e7bba55254002ec43c">
								<img src="resource/image/credit.png" alt=" " />
							</a>
						</span>
					</h4>
					<p>服务</p>
				</div>
				<div class="col-md-3 coupons-gd">
					<h4>
						<span>
							<a href="common/toActivity_carousel?type=online_course">
								<img src="resource/image/security.png" alt=" " />
							</a>
						</span>
					</h4>
					<p>活动</p>
				</div>
				<div class="col-md-3 coupons-gd" style="margin-top:-95px;">

					<div style="width: 300px;">
						<div style="height: 30px;line-height:30px;border:1px solid #dedede;">
							<span style="text-align: center;">
								<h4 style="font-size:1.4em;color:#48CFC1;text-align: center;line-height: 30px;">乐堡新闻</h4>
							</span>
						</div>

						<div id="roll_box"
							style="height:250px;overflow:hidden;margin-top:-1px;border:1px solid #dedede;">
							<div id="roll_content">
								<ul style="line-height: 32px;margin-left: 10px;">
									<!--滚动内容start-->

									<li class="uli"></li>
								</ul>
							</div>
							<div id="roll_temp"></div>
						</div>
					</div>
				</div>


			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	</div>
	<div class="content-bottom-two">

		<div class="col-md-6 content-left text-center imagess">
			<a href="common/toActivity_carousel?type=online_course">
				<img src="resource/image/bf.png" alt=""
					style="position:absolute;width:10%;z-index:1;top:45%;left:45%;" />
			</a>
			<img src="resource/image/bbb1_left.png" alt="" style="z-index:0;position:relative" />
		</div>
		<div class="col-md-6 content-right text-center imagess">
			<img src="resource/image/bbb1_right.png" alt="" />
		</div>
		<div class="clearfix"></div>
		<div class="btm-pos">
			<h3>关爱老人</h3>
			<p>摘一千颗星星照亮您的前程；种一千朵玫瑰陶醉您的心情;折一千只纸鹤放飞您的欢乐；找一千种理由让您幸福安宁；说一千个句子祝您春节团圆喜庆！</p>
		</div>
	</div>

	<div class="footer-top">
		<div class="container">
			<div class="foo-grids">
				<div class="col-md-3 foo-grid" style="margin-left: 50px;">
					<a href="#">
						<h3>首页</h3>
					</a>
					<ul class="myicon">
						<li>
							<a href="javascript:;">
								<img alt="" src="resource/image/email.png">
							</a>
						</li>
						<li>
							<a href="javascript:;">
								<img alt="" src="resource/image/minChart.png">
							</a>
						</li>
						<li>
							<a href="javascript:;">
								<img alt="" src="resource/image/minblog.png">
							</a>
						</li>
					</ul>
				</div>
				<div class="col-md-3 foo-grid">
					<a href="common/toActivity_carousel?type=online_course">
						<h3>养乐活动</h3>
					</a>
					<ul>
						<li>
							<a href="common/toActivity_carousel?type=online_course">线上课程</a>
						</li>
						<li>
							<a href="common/toActivity_carousel?type=offline_course">线下活动</a>
						</li>
					</ul>
				</div>
				<div class="col-md-3 foo-grid">
					<a href="common/toLife?type=nutritive-diet">
						<h3>养乐生活</h3>
					</a>
					<ul>
						<li>
							<a href="common/toLife?type=nutritive-diet">营养膳食</a>
						</li>
						<li>
							<a href="common/toLife?type=user-video">用户视频</a>
						</li>
						<li>
							<a href="common/toLife?type=user-feedback">用户反馈</a>
						</li>
					</ul>
				</div>
				<div class="col-md-3 foo-grid">
					<a
						href="LeFortServiceController/serverWebsiteTemplate?type=medical-reservation&typeId=6f04943acfeb11e7bba55254002ec43c">
						<h3>养乐服务</h3>
					</a>
					<ul>
						<li>
							<a
								href="LeFortServiceController/serverWebsiteTemplate?type=medical-reservation&typeId=6f04943acfeb11e7bba55254002ec43c">体检预约</a>
						</li>
						<li>
							<a
								href="LeFortServiceController/serverWebsiteTemplate?type=life-assistant&typeId=6f04943acfeb11e7bba55254002ec43c">生活助手</a>
						</li>
						<li>
							<a
								href="LeFortServiceController/serverWebsiteTemplate?type=independent-life&typeId=6f04943acfeb11e7bba55254002ec43c">独立生活</a>
						</li>
						<li>
							<a
								href="LeFortServiceController/serverWebsiteTemplate?type=rehabilitation-assistance&typeId=6f04943acfeb11e7bba55254002ec43c">康复协助</a>
						</li>
					</ul>
				</div>
				<div class="col-md-3 foo-grid">
					<a href="common/toWebsiteTemplate?type=aboutus-intro">
						<h3>关于养乐</h3>
					</a>
					<ul>
						<li>
							<a href="common/toWebsiteTemplate?type=aboutus-intro">养乐简介</a>
						</li>
						<li>
							<a href="common/toWebsiteTemplate?type=aboutus-use">快速上手</a>
						</li>
						<li>
							<a href="common/toWebsiteTemplate?type=aboutus-join">加入我们</a>
						</li>
						<li>
							<a href="common/toWebsiteTemplate?type=aboutus-cont">联系我们</a>
						</li>
					</ul>
				</div>
				<div class="col-md-3 foo-grid">
					<a href="shopIndex/toShop">
						<h3>养乐商城</h3>
					</a>
					<ul>
						<li>
							<input id="region123" type="text" name="title" lay-verify="title"
								style="width: 240px;height: 30px;float: left; border:1px solid #A9B0C4 !important; border-radius:5px; color: #A9B0C4;letter-spacing: 3px;"
								autocomplete="off" value="社区搜索" class="layui-input" onfocus="if(value=='社区搜索') {value=''}"
								onblur="if (value=='') {value='社区搜索'}">
							<a href="" id="qwe" onclick="findTypess()" style="display:block;float:left; margin-left: 210px;margin-top: -30px;">
								<i class="layui-icon" style="font-size: 20px;">&#xe615;</i>
							</a>
						</li>

					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<div class="footer">
		<div class="container">
			<h2>
				<a href="#">养乐堡</a>
			</h2>
			<p>
				版权 &copy; 2017.团 队 名 7brickSquad.更多 咨询
				<a href="common/toWebsiteTemplate?type=aboutus-intro" target="_blank" title="老人之家">老人之家</a>
				- 来源
				<a href="common/toWebsiteTemplate?type=aboutus-join" title="搬砖小分队" target="_blank">搬砖小分队</a>
			</p>
		</div>
	</div>

	<!-- mobile -->

	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<section>
					<div class="wizard">
						<div class="wizard-inner">
							<ul class="nav nav-tabs" role="tablist">
								<li role="presentation" class="active">
									<a href="#step1" data-toggle="tab" aria-controls="step1" role="tab" title="Step 1"> </a>
								</li>

								<li role="presentation" class="disabled">
									<a href="#step2" data-toggle="tab" aria-controls="step2" role="tab" title="Step 2"> </a>
								</li>
								<li role="presentation" class="disabled">
									<a href="#step3" data-toggle="tab" aria-controls="step3" role="tab" title="Step 3"> </a>
								</li>
								<li role="presentation" class="disabled">
									<a href="#step4" data-toggle="tab" aria-controls="step4" role="tab" title="Step 4"> </a>
								</li>
								<li role="presentation" class="disabled">
									<a href="#step5" data-toggle="tab" aria-controls="step5" role="tab" title="Step 5"> </a>
								</li>
								<li role="presentation" class="disabled">
									<a href="#complete" data-toggle="tab" aria-controls="complete" role="tab" title="Complete">
									</a>
								</li>
							</ul>
						</div>

						<!-- 预约参观 -->
						<form role="form" method="post" onsubmit="return check()"
							action="${pageContext.request.contextPath }/reservation/findInsertReservation">
							<div class="tab-content">
								<div class="tab-pane active" role="tabpanel" id="step12">
									<div class="mobile-grids">
										<label style="color: #48CFC1;font-size: 1.5em;margin-left:210px;letter-spacing: 10px;"
											onclick="findTelephoneView()">预约参观</label> <label
											style="display: block;color: #48CFC1; margin-left: 122px;margin-top:40px;font-stretch: normal;">联系人</label>
										<input type="text" placeholder="请输入联系人姓名" name="rname" id="name"
											style="width:250px;height:35px;padding-left:10px; margin-left:200px;margin-top:-30px; color:#C5C5C5;border:1px solid #48CFC1;  "
											onfocus="onfus1()">
										<br>
										<span id="nameText" style="margin-left:44%"></span>
										<label
											style="display: block;color: #48CFC1;margin-left: 90px;margin-top:40px;font-stretch: normal;">联系人电话</label>
										<input type="text" placeholder="请输入联系人电话" id="telephone" name="telephone"
											style="width:250px;height:35px;padding-left:10px;margin-left:200px;margin-top:-30px; color:#C5C5C5;border:1px solid #48CFC1; "
											onfocus="onfus2()">
										<br>
										<span id="telephoneText" style="margin-left:44%"></span>
										<label
											style="display: block;color: #48CFC1;margin-left: 106px;margin-top:40px;font-stretch: normal;">预约时间</label>
										<form class="layui-form" action="">
											<div class="layui-input-inline">
												<input type="date" name="reservationDate" onfocus="onfusreservationDate()"
													id="reservationDate" lay-verify="date" autocomplete="off" class="layui-input"
													placeholder="请输入预约时间"
													style="width:250px;height:35px;margin-left:200px;margin-top:-30px; color:#C5C5C5;">
												<br>
												<span id="reservationDatedateText" style="margin-left:44%"></span>
											</div>
										</form>
										<label
											style="display: block;color: #48CFC1;margin-left: 138px;margin-top:40px;font-stretch: normal;">社区</label>
										<div class="layui-form-item">
											<div class="layui-inline">
												<div class="layui-input-inline">
													<select name="branchId" lay-verify="required" lay-search="" id="branchid"
														style="padding-left:10px;width:250px;height:35px;font-size:16px; margin-left:200px;margin-top:-30px; color:#C5C5C5;border:1px solid #48CFC1; ">
														<option value="">请选择</option>

													</select>
												</div>
											</div>
										</div>
										<p style="width: 260px;margin-left: 200px;font-size: 10px;color: #A2A2A2;">您提交成功后，我们的客服人员会在24小时内与您取得联系，确认参观事宜，感谢您的支持！</p>
										<label
											style="display: block;color: #48CFC1;margin-left: 138px;margin-top:40px;font-stretch: normal;">备注</label>
										<div class="layui-form-item layui-form-text">
											<div class="layui-input-block" style="width: 250px;margin-left: 200px;margin-top: -30px;">
												<textarea value="" class="layui-textarea" name="remarks" id="remarks" onfocus="onfus4()"></textarea>
												<br>
												<span id="remarksText" style="margin-left:44%"></span>
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
	<!-- //mobile -->
	<div class="copyrights">
		Collect from
		<a href="http://www.cssmoban.com/">手机网站模板</a>
	</div>
	<c:if test="${user ne null }">
		<!-- Dth -->
		<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<section>
						<div class="wizard">
							<div class="wizard-inner">
								<ul class="nav nav-tabs" role="tablist">
									<li role="presentation" class="active">
										<a href="#step6" data-toggle="tab" aria-controls="step6" role="tab" title="Step 6">
											<span class="round-tab">
												<i class="glyphicon glyphicon-folder-open"></i>
											</span>
										</a>
									</li>
									<li role="presentation" class="disabled">
										<a href="#step7" data-toggle="tab" aria-controls="step7" role="tab" title="Step 7">
											<span class="round-tab">
												<i class="glyphicon glyphicon-pencil"></i>
											</span>
										</a>
									</li>
									<li role="presentation" class="disabled">
										<a href="#step8" data-toggle="tab" aria-controls="step8" role="tab" title="Step 8">
											<span class="round-tab">
												<i class="glyphicon glyphicon-picture"></i>
											</span>
										</a>
									</li>

								</ul>
							</div>
							<!-- 我要去报名 -->
							<form role="form" method="post" onsubmit="return check1()"
								action="activityRegistration/insertActivitiesInformation">
								<div class="tab-content">
									<div class="tab-pane active" role="tabpanel" id="step12">
										<div class="mobile-grids">
											<label style="color: #48CFC1;font-size: 1.5em;margin-left:210px;letter-spacing: 10px;">我要报名</label>
											<label
												style="display: block;color: #48CFC1; margin-left: 122px;margin-top:40px;font-stretch: normal;">联系人</label>
											<input type="text" value="${user.username }" name="pname" id="name3"
												style="width:250px;height:35px;padding-left:10px; margin-left:200px;margin-top:-30px; color:#C5C5C5;border:1px solid #48CFC1;  "
												onfocus="onfus3()">
											<br>
											<span id="nameText3" style="margin-left:44%"></span>
											<label
												style="display: block;color: #48CFC1;margin-left: 90px;margin-top:40px;font-stretch: normal;">联系人电话</label>
											<input type="text" value="${user.telephone }" id="telephone4" name="telephone"
												style="width:250px;height:35px;padding-left:10px;margin-left:200px;margin-top:-30px; color:#C5C5C5;border:1px solid #48CFC1; "
												onfocus="onfus4()" onblur="if (value=='') {value='请输入联系人电话'}">
											<br>
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
											<div class="layui-input-inline">
												<input type="text" name="reservationDate" id="date" lay-verify="date" autocomplete="off"
													class="layui-input" value="请输入预约时间"
													style="width:250px;height:35px;margin-left:200px;margin-top:-30px; color:#C5C5C5;"
													onfocus="onfus5()" onblur="if (value=='') {value='请输入预约时间'}">
												<br>
												<span id="dateText5" style="margin-left:44%"></span>
											</div>
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
													<span id="branchsecondidMessage" style="margin-left:44%;;margin-left:70px;"></span>
												</div>
											</div>
											<p style="width: 260px;margin-left: 200px;font-size: 10px;color: #A2A2A2;">您提交成功后，我们的客服人员会在24小时内与您取得联系，确认参观事宜，感谢您的支持！</p>
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
	<!-- //Dth -->
	<!-- datacard -->
	<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<section>
					<div class="wizard">
						<div class="wizard-inner">
							<ul class="nav nav-tabs" role="tablist">
								<li role="presentation" class="active">
									<a href="#step9" data-toggle="tab" aria-controls="step9" role="tab" title="Step 9">
										<span class="round-tab">
											<i class="glyphicon glyphicon-folder-open"></i>
										</span>
									</a>
								</li>
								<li role="presentation" class="disabled">
									<a href="#step10" data-toggle="tab" aria-controls="step10" role="tab" title="Step 10">
										<span class="round-tab">
											<i class="glyphicon glyphicon-pencil"></i>
										</span>
									</a>
								</li>
								<li role="presentation" class="disabled">
									<a href="#step11" data-toggle="tab" aria-controls="step11" role="tab" title="Step 11">
										<span class="round-tab">
											<i class="glyphicon glyphicon-picture"></i>
										</span>
									</a>
								</li>

							</ul>
						</div>
						<form role="form">
							<div class="tab-content">
								<div class="tab-pane active" role="tabpanel" id="step9">
									<div class="mobile-grids">
										<div class="mobile-left text-center">
											<img src="resource/image/usb.png" alt="" />
										</div>
										<div class="mobile-right ">
											<h4>Enter your data card number</h4>
											<label>+91</label>
											<input type="text" class="mobile-text" value="" onfocus="this.value = '';"
												onblur="if (this.value == '') {this.value = '';}" required>

										</div>
									</div>
									<ul class="list-inline pull-right">
										<li>
											<button type="button" class="mob-btn btn btn-primary next-step">Next</button>
										</li>
									</ul>
								</div>
								<div class="tab-pane" role="tabpanel" id="step10">
									<div class="mobile-grids">
										<div class="mobile-left text-center">
											<img src="resource/image/usb.png" alt="" />
										</div>
										<div class="mobile-right ">
											<h4>Which operator?</h4>
											<ul class="rchge-icons">
												<li>
													<a href="#">Airtel</a>
												</li>
												<li>
													<a href="#">Aircel</a>
												</li>
												<li>
													<a href="#">Bsnl</a>
												</li>
												<li>
													<a href="#">Idea</a>
												</li>
												<li>
													<a href="#">Vodafone</a>
												</li>
												<li>
													<a href="#">Reliance</a>
												</li>
												<li>
													<a href="#">Uninor</a>
												</li>
											</ul>
											<div class="section_room">
												<select id="country" onchange="change_country(this.value)" class="frm-field required">
													<option value="null">Airtel</option>
													<option value="null">Aircel</option>
													<option value="AX">Bsnl</option>
													<option value="AX">Idea</option>
													<option value="AX">Tata Docomo</option>
													<option value="AX">Reliance</option>
													<option value="AX">Tata Indicom</option>
													<option value="AX">Uninor</option>
													<option value="AX">Vodafone</option>
													<option value="AX">MTS</option>
												</select>
											</div>
										</div>

									</div>
									<ul class="list-inline pull-right">
										<li>
											<button type="button" class="mob-btn btn btn-default prev-step">Previous</button>
										</li>
										<li>
											<button type="button" class="mob-btn btn btn-primary next-step">Next</button>
										</li>
									</ul>
								</div>
								<div class="tab-pane" role="tabpanel" id="step11">
									<div class="mobile-grids">
										<div class="mobile-left text-center">
											<img src="resource/image/usb.png" alt="" />
										</div>
										<div class="mobile-right ">
											<h4>How much to recharge?</h4>
											<div class="dth-rchge">
												<input type="text" value="100" onfocus="this.value = '';"
													onblur="if (this.value == '') {this.value = '100';}" required>
											</div>
										</div>
									</div>
									<ul class="list-inline pull-right">
										<li>
											<button type="button" class="mob-btn btn btn-default prev-step">Previous</button>
										</li>
										<li>
											<button type="button" class="mob-btn btn btn-primary btn-info-full" data-dismiss="modal">Finish</button>
										</li>
									</ul>
								</div>
								<div class="clearfix"></div>
							</div>
						</form>
					</div>
					</section>
				</div>
			</div>
		</div>
	</div>
	<!-- //datacard -->
	<!-- landline -->
	<div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<section>
					<div class="wizard">
						<div class="wizard-inner">
							<ul class="nav nav-tabs" role="tablist">
								<li role="presentation" class="active">
									<a href="#step12" data-toggle="tab" aria-controls="step12" role="tab" title="Step 12">
										<span class="round-tab">
											<i class="glyphicon glyphicon-folder-open"></i>
										</span>
									</a>
								</li>
								<li role="presentation" class="disabled">
									<a href="#step13" data-toggle="tab" aria-controls="step13" role="tab" title="Step 13">
										<span class="round-tab">
											<i class="glyphicon glyphicon-pencil"></i>
										</span>
									</a>
								</li>
								<li role="presentation" class="disabled">
									<a href="#step14" data-toggle="tab" aria-controls="step14" role="tab" title="Step 14">
										<span class="round-tab">
											<i class="glyphicon glyphicon-picture"></i>
										</span>
									</a>
								</li>

							</ul>
						</div>
						<form role="form">
							<div class="tab-content">
								<div class="tab-pane active" role="tabpanel" id="step12">
									<div class="mobile-grids">
										<div class="mobile-left text-center">
											<img src="resource/image/landline.png" alt="" />
										</div>
										<div class="mobile-right">
											<h4>Pay your landline bill.Which Provider?</h4>
											<div class="section_room">
												<select id="country" onchange="change_country(this.value)" class="frm-field required">
													<option value="null">Enter Landline Provider Name</option>
													<option value="null">Airtel Landline</option>
													<option value="AX">Bsnl Landline</option>
													<option value="AX">MTNL Delhi</option>
												</select>
											</div>
										</div>
									</div>
									<ul class="list-inline pull-right">
										<li>
											<button type="button" class="mob-btn btn btn-primary next-step">Next</button>
										</li>
									</ul>
								</div>
								<div class="tab-pane" role="tabpanel" id="step13">
									<div class="mobile-grids">
										<div class="mobile-left text-center">
											<img src="resource/image/landline.png" alt="" />
										</div>
										<div class="mobile-right">
											<h4>Telephone Number</h4>
											<div class="dth-rchge">
												<input type="text" value="" onfocus="this.value = '';"
													onblur="if (this.value == '') {this.value = '';}" required>
												<p>Please enter a valid telephone number with std code.</p>
											</div>
										</div>
									</div>
									<ul class="list-inline pull-right">
										<li>
											<button type="button" class="mob-btn btn btn-default prev-step">Previous</button>
										</li>
										<li>
											<button type="button" class="mob-btn btn btn-primary next-step">Next</button>
										</li>
									</ul>
								</div>
								<div class="tab-pane" role="tabpanel" id="step14">
									<div class="mobile-grids">
										<div class="mobile-left text-center">
											<img src="resource/image/landline.png" alt="" />
										</div>
										<div class="mobile-right ">
											<h4>How much did you wish to pay?</h4>
											<div class="dth-rchge">
												<input type="text" value="100" onfocus="this.value = '';"
													onblur="if (this.value == '') {this.value = '100';}" required>
												<p>Please enter an amount between Rs.10 and Rs.1000.</p>
											</div>
										</div>
									</div>
									<ul class="list-inline pull-right">
										<li>
											<button type="button" class="mob-btn btn btn-default prev-step">Previous</button>
										</li>
										<li>
											<button type="button" class="mob-btn btn btn-primary btn-info-full" data-dismiss="modal">Finish</button>
										</li>
									</ul>
								</div>
								<div class="clearfix"></div>
							</div>
						</form>
					</div>
					</section>
				</div>
			</div>
		</div>
	</div>
	<!-- //landline -->
	<!-- login -->
	<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content modal-info">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body modal-spa">
					<div class="login-grids">
						<div class="login">
							<div class="login-left">
								<ul>
									<li>
										<a class="fb" href="#">
											<i></i>
											Sign in with Facebook
										</a>
									</li>
									<li>
										<a class="goog" href="#">
											<i></i>
											Sign in with Google
										</a>
									</li>
									<li>
										<a class="linkin" href="#">
											<i></i>
											Sign in with Linkedin
										</a>
									</li>
								</ul>
							</div>
							<div class="login-right">
								<form>
									<h3>Signin with your account</h3>
									<input type="text" value="Enter your mobile number or Email" onfocus="this.value = '';"
										onblur="if (this.value == '') {this.value = 'Enter your mobile number or Email';}"
										required>
									<input type="password" value="Password" onfocus="this.value = '';"
										onblur="if (this.value == '') {this.value = 'Password';}" required>
									<h4>
										<a href="#">Forgot password</a>
										/
										<a href="#">Create new password</a>
									</h4>
									<div class="single-bottom">
										<input type="checkbox" id="brand" value="">
										<label for="brand"><span></span>Remember Me.</label>
									</div>
									<input type="submit" value="SIGNIN">
								</form>
							</div>
							<div class="clearfix"></div>
						</div>
						<p>
							By logging in you agree to our
							<span>Terms and Conditions</span>
							and
							<span>Privacy Policy</span>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //login -->
	<!-- signup -->
	<div class="modal fade" id="myModal5" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content modal-info">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body modal-spa">
					<div class="login-grids">
						<div class="login">
							<div class="login-left">
								<ul>
									<li>
										<a class="fb" href="#">
											<i></i>
											Sign in with Facebook
										</a>
									</li>
									<li>
										<a class="goog" href="#">
											<i></i>
											Sign in with Google
										</a>
									</li>
									<li>
										<a class="linkin" href="#">
											<i></i>
											Sign in with Linkedin
										</a>
									</li>
								</ul>
							</div>
							<div class="login-right">
								<form>
									<h3>Create your account</h3>
									<input type="text" value="Name" onfocus="this.value = '';"
										onblur="if (this.value == '') {this.value = 'Name';}" required>
									<input type="text" value="Mobile number" onfocus="this.value = '';"
										onblur="if (this.value == '') {this.value = 'Mobile number';}" required>
									<input type="text" value="Email id" onfocus="this.value = '';"
										onblur="if (this.value == '') {this.value = 'Email id';}" required>
									<input type="password" value="Password" onfocus="this.value = '';"
										onblur="if (this.value == '') {this.value = 'Password';}" required>
									<input type="submit" value="CREATE ACCOUNT">
								</form>
							</div>
							<div class="clearfix"></div>
						</div>
						<p>
							By logging in you agree to our
							<span>Terms and Conditions</span>
							and
							<span>Privacy Policy</span>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //signup -->
	<!-- script-for-menu -->
	<script>
		$("span.menu").click(function() {
			$("ul.nav1").slideToggle(300, function() {
				// Animation complete.
			});
		});
	</script>
	<!-- /script-for-menu -->
	<script src="resource/js/classie.js"></script>
	<script src="resource/js/uisearch.js"></script>
	<script>
		new UISearch(document.getElementById('sb-search'));
	</script>
	<!-- for bootstrap working -->
	<script src="resource/plugins/bootstrap/bootstrap.js"></script>
	<!-- //for bootstrap working -->
	<script>
		layui.use('element', function() {
			var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块

			//监听导航点击
			element.on('nav(demo)', function(elem) {
				//console.log(elem)
				layer.msg(elem.text());
			});

		});
	</script>
	<script type="text/javascript">
		layui.use([ 'carousel', 'form' ], function() {
			var carousel = layui.carousel, form = layui.form;

			carousel.render({
				elem : '#test10',
				width : '100%',
				height : '500px',
				interval : 5000
			});
		})
	</script>
	<script>
		layui
				.use(
						[ 'form', 'layedit', 'laydate' ],
						function() {
							var form = layui.form, layer = layui.layer, layedit = layui.layedit, laydate = layui.laydate;

							//日期
							laydate.render({
								elem : '#date'
							});
							laydate.render({
								elem : '#date1'
							});

						});
	</script>
	<script type="text/javascript">
		layui.use('util', function() {
			var util = layui.util;

			//执行
			util.fixbar({
				bar1 : false,
				bgcolor : '#48CFC1',
			});
		});
	</script>
</body>

</html>
