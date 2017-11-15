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
					<h1>购物车</h1>
					<div class="bread">
						<div class="breadcrumbs theme-clearfix">
							<div class="container">
								<ul class="breadcrumb">
									<li><a href="common/toShop">首页</a> <span class="go-page"></span></li>

									<li class="active"><span>购物车</span></li>
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
													<th class="product-remove">删除宝贝</th>
													<th class="product-thumbnail">宝贝例图</th>
													<th class="product-name">宝贝信息</th>
													<th class="product-price">单价</th>
													<th class="product-quantity">数量</th>
													<th class="product-subtotal">总价</th>
													<th class="product-choice">选择下单宝贝</th>
												</tr>
											</thead>

											<tbody>
												<c:forEach var="listDetailsShoppingCar" items="${map.list}"
													varStatus="a">

													<tr class="cart_item">
														<td class="product-remove"><a
															href="shoppingCar/IndexDeleteShoppingCar?id=${listDetailsShoppingCar.id}"
															class="remove" title="Remove this item"><i
																class="fa fa-times" aria-hidden="true"></i></a></td>

														<td class="product-thumbnail"><a
															href="simple_product.html"> <img width="180"
																height="180"
																src="resource/front_bootstrap/images/1903/56-180x180.jpg"
																class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image"
																alt=""
																srcset="resource/front_bootstrap/images/1903/56-180x180.jpg 180w, resource/front_bootstrap/images/1903/56-150x150.jpg 150w, resource/front_bootstrap/images/1903/56-300x300.jpg 300w, resource/front_bootstrap/images/1903/56.jpg 600w"
																sizes="(max-width: 180px) 100vw, 180px">
														</a></td>
														<td class="product-name" data-title="Product"><a
															href="simple_product.html">${listDetailsShoppingCar.aname}</td>
														<td class="product-price" data-title="Price"><span
															class="woocommerce-Price-amount amount"><span
																class="woocommerce-Price-currencySymbol">￥</span><span class="pricle">${listDetailsShoppingCar.price}</span></span>
														</td>

														<td class="product-quantity" data-title="Quantity">
															<div class="quantity">
																<input type="number" step="1" min="1"
																	max="${listDetailsShoppingCar.stock}"
																	name="listDetailsShoppingCar.number"
																	value="${listDetailsShoppingCar.number}" title="Qty"
																	class="input-text qty text" size="4" pattern="[0-9]*"
																	inputmode="numeric" onchange="addNumber(this)"
																	oninput="addNumber(this)"
																	val="${listDetailsShoppingCar.price }"
																	vai="${listDetailsShoppingCar.id }">
															</div>
														</td>
														<td class="product-subtotal" data-title="Total"><span
															class="woocommerce-Price-amount amount"><span
																class="woocommerce-Price-currencySymbol">￥</span> <input
																type="text" class="allPriceId" readonly="readonly"
																style="border: none;background-color:transparent;"
																value="${listDetailsShoppingCar.allPrice }"></span></td>

														<td class="product-choice checkedas">
														<div class="layui-form-item" pane="">
															<div class="layui-input-block">
																<input class="checksa" type="checkbox" name="like1[write]"
																	lay-skin="primary" onchange="checkedCar(this)" > 
															</div>
														</div>
														</td>


													</tr>
												</c:forEach>
											</tbody>
											<tr>
												<td colspan="6">
													<div>
														<%
															Map<String,Object> map=(Map<String,Object>)request.getAttribute("map");
																																																														ShoppingCarPagination pagination=(ShoppingCarPagination)map.get("shoppingCarPagination");
														%>
														<nav aria-label="Page navigation">
														<ul class="pagination">
															<li><a
																href="<%=pagination.getCurentPage()==1?"javascript:;":"shoppingCar/detailsShoppingCar?curentPage="+(pagination.getCurentPage()-1)%>"
																style="<%=pagination.getCurentPage()==1?"color: #ccc":""%>"
																aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
															</a></li>
															<%
																for(int i=1;i<=pagination.getPageCount();i++) {
															%>
															<li><a
																href="shoppingCar/detailsShoppingCar?curentPage=<%=i%>"
																style="<%=pagination.getCurentPage()==i?"color:red":""%>"><%=i%></a></li>
															<%
																}
															%>
															<li><a
																href="<%=pagination.getCurentPage()==pagination.getPageCount()?"javascript:;":"shoppingCar/detailsShoppingCar?curentPage="+(pagination.getCurentPage()+1)%>"
																style="<%=pagination.getCurentPage()==pagination.getPageCount()?"color: #ccc":""%>"
																aria-label="Next"> <span aria-hidden="true">&raquo;</span>
															</a></li>
														</ul>
														</nav>
													</div>
												</td>
											</tr>
											<tr>
												<td colspan="6" class="actions">
													<div class="coupon">
														<label for="coupon_code">Coupon:</label> <input
															type="text" name="coupon_code" class="input-text"
															id="coupon_code" value="" placeholder="优惠代码"> <input
															type="submit" class="button" name="apply_coupon"
															value="使用优惠券">
													</div> <input type="submit" class="button" name="update_cart"
													value="更新购物车">
												</td>
											</tr>

										</table>
									</form>

									<div class="cart-collaterals">
										<div class="products-wrapper">
											<div class="cart_totals ">
												<h2>购物车总计</h2>

												<table cellspacing="0"
													class="shop_table shop_table_responsive">
													<tbody>
														<tr class="cart-subtotal">
															<th>小计</th>
															<td data-title="小计"><span
																class="woocommerce-Price-amount amount"><span
																	class="woocommerce-Price-currencySymbol">￥</span><span id="checkeds">0</span></span>
															</td>
														</tr>
														<tr class="order-total">
															<th>总计</th>
															<td data-title="总计"><strong><span
																	class="woocommerce-Price-amount amount"><span
																		class="woocommerce-Price-currencySymbol">￥</span><span
																		class="mapall">${map.allprice}</span></span></strong></td>
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

	<!-- DIALOGS -->
	<div class="modal fade" id="search_form" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog block-popup-search-form">
			<form role="search" method="get" class="form-search searchform"
				action="">
				<input type="text" value="" name="s" class="search-query"
					placeholder="Enter your keyword..." />

				<button type="submit"
					class="fa fa-search button-search-pro form-button"></button>

				<a href="javascript:void(0)" title="Close"
					class="close close-search" data-dismiss="modal">X</a>
			</form>
		</div>
	</div>

	<div class="modal fade" id="login_form" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog block-popup-login">
			<a href="javascript:void(0)" title="Close" class="close close-login"
				data-dismiss="modal">Close</a>

			<div class="tt_popup_login">
				<strong>Sign in Or Register</strong>
			</div>

			<form action="" method="post" class="login">
				<div class="block-content">
					<div class="col-reg registered-account">
						<div class="email-input">
							<input type="text" class="form-control input-text username"
								name="username" id="username" placeholder="Username" />
						</div>

						<div class="pass-input">
							<input class="form-control input-text password" type="password"
								placeholder="Password" name="password" id="password" />
						</div>

						<div class="ft-link-p">
							<a href="lost_password.html" title="Forgot your password">Forgot
								your password?</a>
						</div>

						<div class="actions">
							<div class="submit-login">
								<input type="submit" class="button btn-submit-login"
									name="login" value="Login" />
							</div>
						</div>
					</div>

					<div class="col-reg login-customer">
						<h2>NEW HERE?</h2>

						<p class="note-reg">Registration is free and easy!</p>

						<ul class="list-log">
							<li>Faster checkout</li>

							<li>Save multiple shipping addresses</li>

							<li>View and track orders and more</li>
						</ul>

						<a href="create_account.html" title="Register"
							class="btn-reg-popup">Create an account</a>
					</div>
				</div>
			</form>
			<div class="clear"></div>
		</div>
	</div>

	<a id="etrostore-totop" href="#"></a>

	<div id="subscribe_popup" class="subscribe-popup"
		style="background: url(resource/front_bootstrap/images/icons/bg_newsletter.jpg)">
		<div class="subscribe-popup-container">
			<h2>Join our newsletter</h2>
			<div class="description">Subscribe now to get 40% of on any
				product!</div>
			<div class="subscribe-form">
				<form id="mc4wp-form-2" class="mc4wp-form mc4wp-form-275"
					method="post" data-id="275" data-name="">
					<div class="mc4wp-form-fields">
						<div class="newsletter-content">
							<input type="email" class="newsletter-email" name="EMAIL"
								placeholder="Your email" required="" /> <input
								class="newsletter-submit" type="submit" value="Subscribe" />
						</div>
					</div>
					<div class="mc4wp-response"></div>
				</form>
			</div>

			<div class="subscribe-checkbox">
				<label for="popup_check"> <input id="popup_check"
					name="popup_check" type="checkbox" /> <span>Don't show this
						popup again!</span>
				</label>
			</div>

			<div class="subscribe-social">
				<div class="subscribe-social-inner">
					<a href="http://www.facebook.com/" class="social-fb"> <span
						class="fa fa-facebook"></span>
					</a> <a href="https://twitter.com/" class="social-tw"> <span
						class="fa fa-twitter"></span>
					</a> <a href="https://plus.google.com/" class="social-gplus"> <span
						class="fa fa-google-plus"></span>
					</a> <a href="#" class="social-pin"> <span class="fa fa-instagram"></span>
					</a> <a href="http://www.pinterest.com/" class="social-linkedin"> <span
						class="fa fa-pinterest-p"></span>
					</a>
				</div>
			</div>
		</div>
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
	<script type="text/javascript" src="resource/js/cart.js"></script>
    <script type="text/javascript" src="resource/plugins/layui/lay/modules/laydate.js"></script>
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
