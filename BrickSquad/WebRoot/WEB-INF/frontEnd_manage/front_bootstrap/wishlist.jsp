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
<title>Etro Store - Premium Multipurpose HTML5/CSS3 Theme</title>
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
<link rel="stylesheet"
	href="resource/front_bootstrap/css/font-awesome.min.css">

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
</head>

<body class="page woocommerce-wishlist woocommerce woocommerce-page">
bbb



	<div class="body-wrapper theme-clearfix">
		<jsp:include page="shop_header.jsp"></jsp:include>


		<div class="container">
			<div class="wrap-title">
				<h1>我的收藏</h1>
				<div class="bread">
					<div class="breadcrumbs theme-clearfix">
						<div class="container">
							<ul class="breadcrumb">
								<li><a href="common/toShop">首页</a> <span class="go-page"></span>
								</li>

								<li class="active"><span>我的收藏</span></li>
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
				class="main-page  col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="post-6 page type-page status-publish hentry">
					<div class="entry-content">
						<div class="entry-summary">
							<div id="yith-wcwl-messages"></div>
							<form id="yith-wcwl-form" action="" method="post"
								class="woocommerce">
								<!-- TITLE -->
								<div class="wishlist-title ">
									<h2>My wishlist on market store</h2>
								</div>
								<!-- END TITLE -->

								<!-- WISHLIST TABLE -->
								<table class="shop_table cart wishlist_table">
									<thead>
										<tr>
											<th class="product-remove"></th>

											<th class="product-name">
												<span class="nobr">宝贝信息</span>
											</th>

											<th class="product-price">
												<span class="nobr">单价</span>
											</th>

											<th class="product-stock-stauts">
												<span class="nobr">库存量</span>
											</th>

											<th class="product-add-to-cart"></th>
										</tr>
									</thead>

									<tbody>
										<tr>
											<td class="product-remove">
												<div>
													<a href="" class="remove remove_from_wishlist"
														title="Remove this product">&#215;</a>
												</div>
											</td>

											<td class="product-name">
												<a href="simple_product.html">Pisan maze ikan kazen</a>
											</td>

											<td class="product-price">
												<del>
													<span class="woocommerce-Price-amount amount"> <span
														class="woocommerce-Price-currencySymbol">$</span>5.50
													</span>
												</del>

												<ins>
													<span class="woocommerce-Price-amount amount"> <span
														class="woocommerce-Price-currencySymbol">$</span>5.00
													</span>
												</ins>
											</td>

											<td class="product-stock-status">
												<span class="wishlist-in-stock">有存货的</span>
											</td>

											<td class="product-add-to-cart">
												<a rel="nofollow" href=""
													class="button product_type_simple add_to_cart_button ajax_add_to_cart add_to_cart button alt">添加至购物车</a>
											</td>
										</tr>
									</tbody>

									<tfoot>
										<tr>
											<td colspan="6">
												<div class="yith-wcwl-share">
													<h4 class="yith-wcwl-share-title">Share on:</h4>
													<ul>
														<li style="list-style-type: none; display: inline-block;">
															<a target="_blank" class="facebook"
															href="https://www.facebook.com/" title="Facebook"></a>
														</li>

														<li style="list-style-type: none; display: inline-block;">
															<a target="_blank" class="twitter"
															href="https://twitter.com/" title="Twitter"></a>
														</li>

														<li style="list-style-type: none; display: inline-block;">
															<a target="_blank" class="pinterest"
															href="http://pinterest.com/" title="Pinterest"
															onclick="window.open(this.href); return false;"></a>
														</li>

														<li style="list-style-type: none; display: inline-block;">
															<a target="_blank" class="googleplus"
															href="https://plus.google.com/" title="Google+"
															onclick="javascript:window.open(this.href,&quot;&quot;, &quot;menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600&quot;);return false;"></a>
														</li>

														<li style="list-style-type: none; display: inline-block;">
															<a class="email" href="#" title="Email"></a>
														</li>
													</ul>
												</div>
											</td>
										</tr>
									</tfoot>
								</table>
							</form>
						</div>
					</div>
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
		style="background: url(images/icons/bg_newsletter.jpg)">
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
		src="resource/front_bootstrap/js/owl-carousel/owl.carousel.min.js"></script>
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
		src="resource/front_bootstrap/js/js_composer/js_composer_front.min.js"></script>

	<script type="text/javascript"
		src="resource/front_bootstrap/js/plugins.js"></script>
	<script type="text/javascript"
		src="resource/front_bootstrap/js/megamenu.min.js"></script>
	<script type="text/javascript"
		src="resource/front_bootstrap/js/main.min.js"></script>

	<script type="text/javascript">
		var sticky_navigation_offset_top = $("#header .header-bottom").offset().top;
		var sticky_navigation = function(){
									var scroll_top = $(window).scrollTop();
									if (scroll_top > sticky_navigation_offset_top) {
										$("#header .header-bottom").addClass("sticky-menu");
										$("#header .header-bottom").css({ "top":0, "left":0, "right" : 0 });
									} else {
										$("#header .header-bottom").removeClass("sticky-menu");
									}
								};
		sticky_navigation();
		$(window).scroll(function() {
			sticky_navigation();
		});
		
		$(document).ready (function () {
			$( ".show-dropdown" ).each(function(){
				$(this).on("click", function(){
					$(this).toggleClass("show");
					var $element = $(this).parent().find( "> ul" );
					$element.toggle( 300 );
				});
			});
		});
   </script>

	<!--[if gte IE 9]><!-->
	<script type="text/javascript">
		var request, b = document.body, c = 'className', cs = 'customize-support', rcs = new RegExp('(^|\\s+)(no-)?'+cs+'(\\s+|$)');
		request = true;
      
      	b[c] = b[c].replace( rcs, ' ' );
      	// The customizer requires postMessage and CORS (if the site is cross domain)
      	b[c] += ( window.postMessage && request ? ' ' : ' no-' ) + cs;
   </script>
	<!--<![endif]-->
</body>
</html>