<%@page import="com.brick.squad.util.ShoppingCarPagination"%>
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
<title>Cart - Premium Multipurpose HTML5/CSS3 Theme</title>
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
<link rel="shortcut icon"
	href="resource/front_bootstrap/icons/favicon.png" />

<!-- GOOGLE WEB FONTS -->
<link rel="stylesheet" href="css/font-awesome.min.css">

<!-- BOOTSTRAP 3.3.7 CSS -->
<link rel="stylesheet"
	href="resource/front_bootstrap/css/bootstrap.min.css" />

<!-- SLICK v1.6.0 CSS -->
<link rel="stylesheet"
	href="resource/front_bootstrap/css/slick-1.6.0/slick.css" />

<link rel="stylesheet"
	href="resource/front_bootstrap/css/jquery.fancybox.css" />
<link rel="stylesheet"
	href="resource/front_bootstrap/css/yith-woocommerce-compare/colorbox.css" />
<link rel="stylesheet"
	href="resource/front_bootstrap/css/owl-carousel/owl.carousel.min.css" />
<link rel="stylesheet"
	href="resource/front_bootstrap/css/owl-carousel/owl.theme.default.min.css" />
<link rel="stylesheet"
	href="resource/front_bootstrap/css/js_composer/js_composer.min.css" />
<link rel="stylesheet"
	href="resource/front_bootstrap/css/woocommerce/woocommerce.css" />
<link rel="stylesheet"
	href="resource/front_bootstrap/css/woocommerce/woocommerce-layout.css" />
<link rel="stylesheet"
	href="resource/front_bootstrap/css/woocommerce/woocommerce-smallscreen.css" />
<link rel="stylesheet"
	href="resource/front_bootstrap/css/yith-woocommerce-wishlist/style.css" />


<link rel="stylesheet" href="resource/front_bootstrap/css/custom.css" />
<link rel="stylesheet"
	href="resource/front_bootstrap/css/app-orange.css" id="theme_color" />
<link rel="stylesheet" href="" id="rtl" />
<link rel="stylesheet"
	href="resource/front_bootstrap/css/app-responsive.css" />
<link rel="stylesheet" href="resource/plugins/laysui/css/layui.css" />
</head>

<body class="page woocommerce-cart woocommerce-page">


	<div class="body-wrapper theme-clearfix">

		<jsp:include page="shop_header.jsp"></jsp:include>

		<div class="listings-title">
			<div class="container">
				<div class="wrap-title">
					<h1>确认订单</h1>
					<div class="bread">
						<div class="breadcrumbs theme-clearfix">
							<div class="container">
								<ul class="breadcrumb">
									<li><a href="common/toShop">首页</a> <span class="go-page"></span></li>

									<li class="active"><span>确认订单</span></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="row">
				<div id="contents" role="main"
					class="main-page col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="page type-page status-publish hentry">
						<div class="entry-content">
							<div class="entry-summary">
								<div class="woocommerce">
									<form action="" method="post">
										<table class="shop_table shop_table_responsive cart"
											cellspacing="0">
											<thead>
												<tr>
													<th class="product-name">宝贝信息</th>
													<th class="product-price">单价</th>
													<th class="product-quantity">数量</th>
													<th class="product-subtotal">总价</th>
												</tr>
											</thead>

											<tbody>
												<tr>
													<td>${article.aname }</td>
													<td>${article.price }</td>
													<td>${orderDetails.number }</td>
													<td>${orderDetails.subtotal }</td>
												</tr>
											</tbody>
											<tr>
												<td colspan="6" class="actions">
													<div class="coupon">
														<label for="coupon_code">Coupon:</label>
														<input type="text" name="coupon_code" class="input-text"
															id="coupon_code" value="" placeholder="优惠代码">
														<input type="submit" class="button" name="apply_coupon"
															value="使用优惠券">
													</div>
												</td>
											</tr>

										</table>
									</form>

									<div class="cart-collaterals">
										<div class="products-wrapper">
											<div class="cart_totals ">
												<h2>订单总计</h2>

												<table cellspacing="0"
													class="shop_table shop_table_responsive">
													<tbody>
														<tr class="cart-subtotal">
															<th>小计</th>
															<td data-title="小计">
																<span class="woocommerce-Price-amount amount"><span
																	class="woocommerce-Price-currencySymbol">￥</span>300.00</span>
															</td>
														</tr>
														<tr class="order-total">
															<th>总计</th>
															<td data-title="总计">
																<strong><span
																	class="woocommerce-Price-amount amount"><span
																		class="woocommerce-Price-currencySymbol">￥</span>300.00</span></strong>
															</td>
														</tr>
													</tbody>
												</table>

												<div class="wc-proceed-to-checkout">
													<a href="checkout.html"
														class="checkout-button button alt wc-forward">继续结账</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>


		<jsp:include page="shop_footer.jsp"></jsp:include>

	</div>
	<script type="text/javascript"
		src="resource/front_bootstrap/js/jquery/jquery.min.js"></script>
	<script type="text/javascript"
		src="resource/front_bootstrap/js/jquery/jquery-migrate.min.js"></script>
	<script type="text/javascript"
		src="resource/front_bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="resource/front_bootstrap/js/jquery/js.cookie.min.js"></script>

	<!-- OPEN LIBS JS -->
	<script type="text/javascript"
		src="js/owl-carousel/owl.carousel.min.js"></script>
	<script type="text/javascript"
		src="resource/front_bootstrap/js/slick-1.6.0/slick.min.js"></script>

	<script type="text/javascript"
		src="resource/front_bootstrap/js/yith-woocommerce-compare/jquery.colorbox-min.js"></script>
	<script type="text/javascript"
		src="resource/front_bootstrap/js/sw_core/isotope.js"></script>
	<script type="text/javascript"
		src="resource/front_bootstrap/js/sw_core/jquery.fancybox.pack.js"></script>
	<script type="text/javascript"
		src="resource/front_bootstrap/js/sw_woocommerce/category-ajax.js"></script>
	<script type="text/javascript"
		src="resource/front_bootstrap/js/sw_woocommerce/jquery.countdown.min.js"></script>
	<script type="text/javascript"
		src="resource/front_bootstrap/js/wc-quantity-increment.min.js"></script>
	<script type="text/javascript"
		src="resource/front_bootstrap/js/woocommerce/cart.min.js"></script>
	<script type="text/javascript"
		src="resource/front_bootstrap/js/js_composer/js_composer_front.min.js"></script>

	<script type="text/javascript"
		src="resource/front_bootstrap/js/plugins.js"></script>
	<script type="text/javascript"
		src="resource/front_bootstrap/js/megamenu.min.js"></script>
	<script type="text/javascript"
		src="resource/front_bootstrap/js/main.min.js"></script>
	<script type="text/javascript"
		src="resource/plugins/angularjs/angular.min.js"></script>
	<script type="text/javascript" src="resource/plugins/laysui/layui.js"></script>
	<script type="text/javascript">
		$(function() {
		});
		var sticky_navigation_offset_top = $("#header .header-bottom").offset().top;
		var sticky_navigation = function() {
			var scroll_top = $(window).scrollTop();
			if (scroll_top > sticky_navigation_offset_top) {
				$("#header .header-bottom").addClass("sticky-menu");
				$("#header .header-bottom").css({
					"top" : 0,
					"left" : 0,
					"right" : 0
				});
			} else {
				$("#header .header-bottom").removeClass("sticky-menu");
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
</body>
</html>
