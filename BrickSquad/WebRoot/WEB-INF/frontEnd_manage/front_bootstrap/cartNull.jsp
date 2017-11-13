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
<link rel="shortcut icon" href="resource/front_bootstrap/icons/favicon.png" />

<!-- GOOGLE WEB FONTS -->
<link rel="stylesheet" href="css/font-awesome.min.css">

<!-- BOOTSTRAP 3.3.7 CSS -->
<link rel="stylesheet" href="resource/front_bootstrap/css/bootstrap.min.css" />

<!-- SLICK v1.6.0 CSS -->
<link rel="stylesheet" href="resource/front_bootstrap/css/slick-1.6.0/slick.css" />

<link rel="stylesheet" href="resource/front_bootstrap/css/jquery.fancybox.css" />
<link rel="stylesheet" href="resource/front_bootstrap/css/yith-woocommerce-compare/colorbox.css" />
<link rel="stylesheet" href="resource/front_bootstrap/css/owl-carousel/owl.carousel.min.css" />
<link rel="stylesheet" href="resource/front_bootstrap/css/owl-carousel/owl.theme.default.min.css" />
<link rel="stylesheet" href="resource/front_bootstrap/css/js_composer/js_composer.min.css" />
<link rel="stylesheet" href="resource/front_bootstrap/css/woocommerce/woocommerce.css" />
<link rel="stylesheet" href="resource/front_bootstrap/css/woocommerce/woocommerce-layout.css" />
<link rel="stylesheet"
	href="resource/front_bootstrap/css/woocommerce/woocommerce-smallscreen.css" />
<link rel="stylesheet" href="resource/front_bootstrap/css/yith-woocommerce-wishlist/style.css" />


<link rel="stylesheet" href="resource/front_bootstrap/css/custom.css" />
<link rel="stylesheet" href="resource/front_bootstrap/css/app-orange.css" id="theme_color" />
<link rel="stylesheet" href="" id="rtl" />
<link rel="stylesheet" href="resource/front_bootstrap/css/app-responsive.css" />
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
									<li><a href="common/toShop">首页</a> <span
										class="go-page"></span></li>

									<li class="active"><span>购物车</span></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<h1 align="center" style="font-size:50px"> 请先登录</h1>
		
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
								placeholder="Your email" required="" />
							<input class="newsletter-submit" type="submit" value="Subscribe" />
						</div>
					</div>
					<div class="mc4wp-response"></div>
				</form>
			</div>

			<div class="subscribe-checkbox">
				<label for="popup_check"> <input id="popup_check"
						name="popup_check" type="checkbox" /> <span>Don't show
						this popup again!</span>
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
	<script type="text/javascript" src="resource/front_bootstrap/js/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="resource/front_bootstrap/js/jquery/jquery-migrate.min.js"></script>
	<script type="text/javascript" src="resource/front_bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resource/front_bootstrap/js/jquery/js.cookie.min.js"></script>

	<!-- OPEN LIBS JS -->
	<script type="text/javascript"
		src="js/owl-carousel/owl.carousel.min.js"></script>
	<script type="text/javascript" src="resource/front_bootstrap/js/slick-1.6.0/slick.min.js"></script>

	<script type="text/javascript"
		src="resource/front_bootstrap/js/yith-woocommerce-compare/jquery.colorbox-min.js"></script>
	<script type="text/javascript" src="resource/front_bootstrap/js/sw_core/isotope.js"></script>
	<script type="text/javascript" src="resource/front_bootstrap/js/sw_core/jquery.fancybox.pack.js"></script>
	<script type="text/javascript" src="resource/front_bootstrap/js/sw_woocommerce/category-ajax.js"></script>
	<script type="text/javascript"
		src="resource/front_bootstrap/js/sw_woocommerce/jquery.countdown.min.js"></script>
	<script type="text/javascript" src="resource/front_bootstrap/js/wc-quantity-increment.min.js"></script>
	<script type="text/javascript" src="resource/front_bootstrap/js/woocommerce/cart.min.js"></script>
	<script type="text/javascript"
		src="resource/front_bootstrap/js/js_composer/js_composer_front.min.js"></script>

	<script type="text/javascript" src="resource/front_bootstrap/js/plugins.js"></script>
	<script type="text/javascript" src="resource/front_bootstrap/js/megamenu.min.js"></script>
	<script type="text/javascript" src="resource/front_bootstrap/js/main.min.js"></script>

	<script type="text/javascript">
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
	<!--<![endif]-->
</body>
</html>
