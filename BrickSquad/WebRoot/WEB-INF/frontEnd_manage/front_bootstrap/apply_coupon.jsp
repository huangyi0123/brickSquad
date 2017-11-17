<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<title>优惠券</title>
<meta charset="utf-8" />

<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

<!-- FAVICONS -->
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="resource/front_bootstrap/icons/apple-touch-icon-144-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="resource/front_bootstrap/icons/apple-touch-icon-114-precomposed.png" />
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="resource/front_bootstrap/icons/apple-touch-icon-72-precomposed.png" />
<link rel="apple-touch-icon-precomposed"
	href="resource/front_bootstrap/icons/apple-touch-icon-57-precomposed.png" />
<link rel="shortcut icon" href="resource/front_bootstrap/icons/favicon.png" />

<!-- GOOGLE WEB FONTS -->
<link rel="stylesheet" href="resource/front_bootstrap/css/font-awesome.min.css">

<!-- BOOTSTRAP 3.3.7 CSS -->
<link rel="stylesheet" href="resource/plugins/laysui/css/layui.css" />

<link rel="stylesheet" href="resource/front_bootstrap/css/bootstrap.min.css" />
<!-- SLICK v1.6.0 CSS -->
<link rel="stylesheet" href="resource/front_bootstrap/css/slick-1.6.0/slick.css" />

<link rel="stylesheet" href="resource/front_bootstrap/css/jquery.fancybox.css" />
<link rel="stylesheet" href="resource/front_bootstrap/css/yith-woocommerce-compare/colorbox.css" />
<link rel="stylesheet" href="resource/front_bootstrap/css/owl-carousel/owl.carousel.min.css" />
<link rel="stylesheet" href="resource/front_bootstrap/css/owl-carousel/owl.theme.default.min.css" />
<link rel="stylesheet" href="resource/front_bootstrap/css/js_composer/js_composer.min.css" />
<link rel="stylesheet" href="resource/front_bootstrap/css/woocommerce/woocommerce.css" />
<link rel="stylesheet" href="resource/front_bootstrap/css/yith-woocommerce-wishlist/style.css" />


<link rel="stylesheet" href="resource/front_bootstrap/css/yith-woocommerce-wishlist/style.css" />
<link rel="stylesheet" href="resource/front_bootstrap/css/custom.css" />
<link rel="stylesheet" href="resource/front_bootstrap/css/app-orange.css" id="theme_color" />
<link rel="stylesheet" href="" id="rtl" />
<link rel="stylesheet" href="resource/front_bootstrap/css/app-responsive.css" />
<link href="resource/css/coupon.css" rel="stylesheet" type="text/css">

</head>

<body class="page page-id-6 home-style1">

	<div class="body-wrapper theme-clearfix">
		<header id="header" class="header header-style1">
		<div class="header-top clearfix">
			<div class="container">
			<div class="rows">
				<!-- SIDEBAR TOP MENU -->
				<div class="pull-left top1">
					<div class="widget text-2 widget_text pull-left">
						<div class="widget-inner">
							<div class="textwidget">
								<div class="call-us">
									<span>热线电话: </span>800-820-8820
								</div>
							</div>
						</div>
					</div>

					<div class="widget text-3 widget_text pull-left">
						<div class="widget-inner">
							<div class="textwidget"></div>
						</div>
					</div>
				</div>

				<div class="wrap-myacc pull-right" ng-app="">
					<div class="sidebar-account pull-left" ng-if="${user!=null }">
						<div class="account-title">我的淘宝</div>
						<div id="my-account" class="my-account">
							<div
								class="widget-1 widget-first widget nav_menu-4 widget_nav_menu">
								<div class="widget-inner">
									<ul id="menu-my-account" class="menu">
										<li class="menu-my-account"><a class="item-link"
											href="my_account.html"> <span class="menu-title">已买到的宝贝</span>
										</a></li>

										<li class="menu-cart"><a class="item-link"
											href="cart.html"> <span class="menu-title">我的足迹</span>
										</a></li>
									</ul>
								</div>
							</div>

							<div class="widget-2 widget-last widget sw_top-4 sw_top">
								<div class="widget-inner">
									<div class="top-login"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="sidebar-account pull-left" ng-if="${user!=null }">
						<div class="account-title">
							<input type="hidden" id="imagepath" value="${user.userPicPath }">
							<img
								style="display:block; border-radius:100%;width: 20px;height: 20px;margin-top: -5px;"
								alt="还没有图片" src="" id="indexUserPic"><span
								style="display: block;margin-left: 25px;margin-top: -15px;">${user.username }</span>
						</div>
									<div id="my-account" class="my-account">
							<div
								class="widget-1 widget-first widget nav_menu-4 widget_nav_menu">
								<div class="widget-inner">
									<ul id="menu-my-account" class="menu">
										<li class="menu-my-account"><a class="item-link"
											href="common/toPersonal" > <span class="menu-title">个人信息</span>
										</a></li>

										<li class="menu-cart"><a class="item-link"
										 href="javascript:;" onclick="logout()"> <span
												class="menu-title">退出登录</span>
										</a></li>
									</ul>
								</div>
							</div>

							<div class="widget-2 widget-last widget sw_top-4 sw_top">
								<div class="widget-inner">
									<div class="top-login"></div>
								</div>
							</div>
						</div>
					</div>
					<div class="sidebar-account pull-left" ng-if="${user==null }">
						<div class="account-title">登录</div>

						<div id="my-account" class="my-account">
							<div
								class="widget-1 widget-first widget nav_menu-4 widget_nav_menu">
								<div class="widget-inner">
									<ul id="menu-my-account" class="menu">
										<li class="menu-my-account"><a class="item-link"
											href="javascript:;" id="login"> <span class="menu-title">登录</span>
										</a></li>

										<li class="menu-cart"><a class="item-link"
											href="javascript:;" id="register"> <span
												class="menu-title">注册</span>
										</a></li>
									</ul>
								</div>
							</div>

							<div class="widget-2 widget-last widget sw_top-4 sw_top">
								<div class="widget-inner">
									<div class="top-login"></div>
								</div>
							</div>
						</div>
					</div>

					<div class="pull-left top2">
						<div
							class="widget-1 widget-first widget nav_menu-2 widget_nav_menu">
							<div class="widget-inner">
								<ul id="menu-checkout" class="menu">
									<li class="menu-checkout"><a class="item-link"
										href="common/toContactUs"> <span class="menu-title">联系我们</span>
									</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			</div>
		</div>

		<div class="header-mid clearfix">
			<div class="container">
				<div class="rows">
					<!-- LOGO -->
					<div class="etrostore-logo pull-left">
						<a href="shopIndex/toShop">
							<img src="resource/front_bootstrap/images/icons/20171116102946.png" alt="Shoopy">
						</a>
					</div>

					<div class="mid-header pull-right">
						<div class="widget-1 widget-first widget sw_top-2 sw_top">
							<div class="widget-inner">
								<div class="top-form top-search">
									<div class="topsearch-entry">
										<form method="get" action="">
											<div style="margin-left: 200px;width: 700px;">
												<input type="text" value="" name="s" placeholder="Enter your keyword...">
												<button type="submit" title="Search" class="fa fa-search button-search-pro form-button"></button>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="header-bottom clearfix">
			<div class="container">
				<div class="rows">
					<!-- Primary navbar -->
					<div id="main-menu" class="main-menu">
						<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
							<ul class="layui-tab-title" style="margin-top: -30px;">
								<c:forEach items="${types }" var="a" varStatus="q">

									<li  class="${a.id eq typeId?'layui-this':'' }" onclick="types('${a.id}')">${a.name}</li>

								</c:forEach>
							</ul>

						</div>

					</div>
					<!-- /Primary navbar -->
					<div class="mid-header pull-right">
						<div class="widget sw_top">
							<span class="stick-sr">
								<i class="fa fa-search" aria-hidden="true"></i>
							</span>

							<div class="top-form top-search">
								<div class="topsearch-entry">
									<form role="search" method="get" class="form-search searchform" action="">
										<label class="hide"></label>
										<input type="text" value="" name="s" class="search-query" placeholder="Keyword here..." />
										<button type="submit" class="button-search-pro form-button">Search</button>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</header>
		<div class="cou_body">
			<span
				style="background: url('resource/image/hot-icons.png') no-repeat 590px 20px; display: block; height: 40px;"></span>
			<label style="margin-left: 640px;margin-top: -25px;font-weight: bold;font-size: 20px;">精选好券</label>
			<span
				style="background: url('resource/image/hot-icons.png') no-repeat 740px 20px; display: block; height: 40px;margin-top: -45px;"></span>

			<div style="width: 80%;margin: 0 auto;">
				<c:forEach items="${couponExpands }" var="a" varStatus="s">
					<div class="coupon ${((s.index+1)%2)eq 0?'coupon-diabled':'' }">
						<div class="coupon-left">
							<div class="coupon-inner">
								<div class="coupon-img">
									<img alt="" src="resource/image/2.png">
								</div>
								<div class="coupon-money">
									<span class="money_icon">￥</span>
									<span class="sum">${a.money }</span>

								</div>
								<div class="coupon-describe">
									<p>${a.shopname }</p>
								</div>

								<div class="coupon-condition">
									<p>满${a.fullMoney }可用</p>
								</div>
								<div class="coupon-percent">
									<p>已抢${a.percent }%</p>
								</div>
								<div class="layui-progress" style="width: 120px;margin-left: 180px;margin-top: -25px;">
									<div class="layui-progress-bar layui-bg-orange" lay-percent="${a.percent }%"></div>
								</div>
							</div>
						</div>
						<a href="javascript:;" onclick="receive('${a.id}')" style="z-index: 1">
							<div class="coupon-right" style="z-index: 10">
								<div class="coupon-inner">
									<div class="coupon-time">立即领取</div>

									<i class="coupon-circle top"></i>
									<i class="coupon-circle bottom"></i>
								</div>
							</div>
						</a>
					</div>
				</c:forEach>
				<!-- <div class="coupon">
					<div class="coupon-left">
						<div class="coupon-inner">
							<div class="coupon-img">
								<img alt="" src="resource/image/2.png">
							</div>
							<div class="coupon-money">
								<span class="money_icon">¥</span>
								<span class="sum">100.00</span>

							</div>
							<div class="coupon-describe">
								<p>仅可购买自营厨卫及净水器、饮水机部分商品</p>
							</div>

							<div class="coupon-condition">
								<p>满200.00可用</p>
							</div>
							<div class="coupon-percent">
								<p>已抢20%</p>
							</div>
							<div class="layui-progress" style="width: 120px;margin-left: 180px;margin-top: -25px;">
								<div class="layui-progress-bar layui-bg-orange" lay-percent="20%"></div>
							</div>
						</div>
					</div>
					<a href="#" style="z-index: 1">
						<div class="coupon-right" style="z-index: 10">
							<div class="coupon-inner">
								<div class="coupon-time">立即领取</div>

								<i class="coupon-circle top"></i>
								<i class="coupon-circle bottom"></i>
							</div>
						</div>
					</a>
				</div>
				<div class="coupon coupon-diabled">
					<div class="coupon-left">
						<div class="coupon-inner">
							<div class="coupon-img">
								<img alt="" src="resource/image/2.png">
							</div>
							<div class="coupon-money">
								<span class="money_icon">¥</span>
								<span class="sum">100.00</span>

							</div>
							<div class="coupon-describe">
								<p>仅可购买自营厨卫及净水器、饮水机部分商品</p>
							</div>

							<div class="coupon-condition">
								<p>满200.00可用</p>
							</div>
							<div class="coupon-percent">
								<p>已抢20%</p>
							</div>
							<div class="layui-progress" style="width: 120px;margin-left: 180px;margin-top: -25px;">
								<div class="layui-progress-bar layui-bg-orange" lay-percent="20%"></div>
							</div>
						</div>
					</div>
					<a href="#" style="z-index: 1">
						<div class="coupon-right" style="z-index: 10">
							<div class="coupon-inner">
								<div class="coupon-time">立即领取</div>

								<i class="coupon-circle top"></i>
								<i class="coupon-circle bottom"></i>
							</div>
						</div>
						<div class="coupon-light"></div>
					</a>
				</div> -->
				<div style="margin-top: 50px;"></div>
<jsp:include page="shop_footer.jsp"></jsp:include>
			</div>
		</div>
		<script type="text/javascript" src="resource/front_bootstrap/js/jquery/jquery.min.js"></script>
		<script type="text/javascript" src="resource/front_bootstrap/js/jquery/jquery-migrate.min.js"></script>
		<script type="text/javascript" src="resource/front_bootstrap/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="resource/front_bootstrap/js/jquery/js.cookie.min.js"></script>
		<script type="text/javascript" src="resource/plugins/laysui/layui.js"></script>
		<script type="text/javascript" src="resource/front_bootstrap/js/owl-carousel/owl.carousel.min.js"></script>
		<script type="text/javascript" src="resource/front_bootstrap/js/slick-1.6.0/slick.min.js"></script>

		<script type="text/javascript"
			src="resource/front_bootstrap/js/yith-woocommerce-compare/jquery.colorbox-min.js"></script>
		<script type="text/javascript" src="resource/front_bootstrap/js/sw_core/isotope.js"></script>
		<script type="text/javascript" src="resource/front_bootstrap/js/sw_core/jquery.fancybox.pack.js"></script>
		<script type="text/javascript" src="resource/front_bootstrap/js/sw_woocommerce/category-ajax.js"></script>
		<script type="text/javascript"
			src="resource/front_bootstrap/js/sw_woocommerce/jquery.countdown.min.js"></script>
		<script type="text/javascript"
			src="resource/front_bootstrap/js/js_composer/js_composer_front.min.js"></script>

		<script type="text/javascript" src="resource/front_bootstrap/js/plugins.js"></script>
		<script type="text/javascript" src="resource/front_bootstrap/js/megamenu.min.js"></script>
		<script type="text/javascript" src="resource/front_bootstrap/js/main.min.js"></script>
		<script type="text/javascript" src="resource/front_bootstrap/js/index.js"></script>

		<script type="text/javascript">
		$(function() {
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
								window.location = "shopIndex/toShop";
								layer.close(index);
							}
						});
					}
				});
			});
		}
		function selectType(){
			alert("nihao");
		}
			var sticky_navigation_offset_top = $("#header .header-bottom")
					.offset().top;
			var sticky_navigation = function() {
				var scroll_top = $(window).scrollTop();
				if (scroll_top > sticky_navigation_offset_top) {
					$("#header.header-bottom").addClass("sticky-menu");
					$("#header.header-bottom").css({
						"top" : 0,
						"left" : 0,
						"right" : 0
					});
				} else {
					$("#header.header-bottom").removeClass("sticky-menu");
				}
			};
			sticky_navigation();
			$(window).scroll(function() {
				sticky_navigation();
			});
			$(document).ready(function() {
				$(".show-dropdown").each(function() {
					$(this).on("click", function() {
						$(this).toggleClass("show");
						var $element = $(this).parent().find("> ul");
						$element.toggle(300);
					});
				});
			});
			function receive(id) {
				$.ajax({
					url:"agedCoupon/insertAgedCoupon?id="+id,
					success:function(result){
						alert(result);
					}
				});
			}
			function types(id) {
				window.location.href="coupon/findArticleType?typeId="+id;
			}
		</script>

		<!--[if gte IE 9]><!-->
		<script type="text/javascript">
			var request, b = document.body, c = 'className', cs = 'customize-support', rcs = new RegExp(
					'(^|\\s+)(no-)?' + cs + '(\\s+|$)');
			request = true;

			b[c] = b[c].replace(rcs, ' ');
			// The customizer requires postMessage and CORS (if the site is cross domain)
			b[c] += (window.postMessage && request ? ' ' : ' no-') + cs;
		</script>
		<!--<![endif]-->
		<script>
			layui.use('element', function() {
				var $ = layui.jquery, element = layui.element; //Tab的切换功能，切换事件监听等，需要依赖element模块
			});
			
		</script>
</body>
</html>
