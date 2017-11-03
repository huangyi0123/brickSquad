<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<base href="<%=basePath%>">
<title>商品详情</title>
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
	href="resource/front_bootstrap/css/woocommerce/prettyPhoto.css" />
<link rel="stylesheet"
	href="resource/front_bootstrap/css/yith-woocommerce-wishlist/style.css" />


<link rel="stylesheet" href="resource/front_bootstrap/css/custom.css" />
<link rel="stylesheet"
	href="resource/front_bootstrap/css/app-orange.css" id="theme_color" />
<link rel="stylesheet" href="" id="rtl" />
<link rel="stylesheet"
	href="resource/front_bootstrap/css/app-responsive.css" />
</head>

<body
	class="product-template-default single single-product woocommerce woocommerce-page">


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
										<span>Call Us Now: </span>0123-444-666654123
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="wrap-myacc pull-right">
						<div class="sidebar-account pull-left">
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
						<div class="sidebar-account pull-left">
							<div class="account-title">登录</div>

							<div id="my-account" class="my-account">
								<div
									class="widget-1 widget-first widget nav_menu-4 widget_nav_menu">
									<div class="widget-inner">
										<ul id="menu-my-account" class="menu">
											<li class="menu-my-account"><a class="item-link"
												href="my_account.html"> <span class="menu-title">登录</span>
											</a></li>

											<li class="menu-cart"><a class="item-link"
												href="cart.html"> <span class="menu-title">注册</span>
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
						<a href="common/toShop"> <img
							src="resource/front_bootstrap/images/icons/logo-orange.png"
							alt="Shoopy">
						</a>
					</div>

					<div class="mid-header pull-right">
						<div class="widget-1 widget-first widget sw_top-2 sw_top">
							<div class="widget-inner">
								<div class="top-form top-search">
									<div class="topsearch-entry">
										<form method="get" action="">
											<div>
												<input type="text" value="" name="s"
													placeholder="Enter your keyword...">
												<div class="cat-wrapper">
													<label class="label-search"> <select
														name="search_category" class="s1_option">
															<option value="">所有类别</option>
															<option value="8">女装</option>
															<option value="14">男装</option>
															<option value="16">女鞋</option>
															<option value="17">男鞋</option>
															<option value="18">配件配饰</option>
															<option value="15">运动用品</option>
															<option value="32">食品</option>
															<option value="49">滋补养生</option>
															<option value="13">中西药品</option>
															<option value="51">保健器械</option>
															<option value="78">眼镜服务</option>
															<option value="80">护理护具</option>
													</select>
													</label>
												</div>

												<button type="submit" title="Search"
													class="fa fa-search button-search-pro form-button"></button>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>

						<div class="widget sw_top-3 sw_top pull-left">
							<div class="widget-inner">
								<div
									class="top-form top-form-minicart etrostore-minicart pull-right">
									<div class="top-minicart-icon pull-right">
										<i class="fa fa-shopping-cart"></i> <a class="cart-contents"
											href="cart.html" title="View your shopping cart"> <span
											class="minicart-number">2</span>
										</a>
									</div>

									<div class="wrapp-minicart">
										<div class="minicart-padding">
											<div class="number-item">
												There are <span>items</span> in your cart
											</div>

											<ul class="minicart-content">
												<li><a href="simple_product.html" class="product-image">
														<img width="100" height="100"
														src="resource/front_bootstrap/images/1903/45-150x150.jpg"
														class="attachment-100x100 size-100x100 wp-post-image"
														alt=""
														srcset="resource/front_bootstrap/images/1903/45-150x150.jpg 150w, resource/front_bootstrap/images/1903/45-300x300.jpg 300w, resource/front_bootstrap/images/1903/45-180x180.jpg 180w, resource/front_bootstrap/images/1903/45.jpg 600w"
														sizes="(max-width: 100px) 100vw, 100px" />
												</a>

													<div class="detail-item">
														<div class="product-details">
															<h4>
																<a class="title-item" href="simple_product.html">Veniam
																	Dolore</a>
															</h4>

															<div class="product-price">
																<span class="price"> <span
																	class="woocommerce-Price-amount amount"> <span
																		class="woocommerce-Price-currencySymbol">$</span>190.00
																</span>
																</span>

																<div class="qty">
																	<span class="qty-number">1</span>
																</div>
															</div>

															<div class="product-action clearfix">
																<a href="#" class="btn-remove" title="Remove this item">
																	<span class="fa fa-trash-o"></span>
																</a> <a class="btn-edit" href="cart.html"
																	title="View your shopping cart"> <span
																	class="fa fa-pencil"></span>
																</a>
															</div>
														</div>
													</div></li>

												<li><a href="simple_product.html" class="product-image">
														<img width="100" height="100"
														src="resource/front_bootstrap/images/1903/22-150x150.jpg"
														class="attachment-100x100 size-100x100 wp-post-image"
														alt=""
														srcset="resource/front_bootstrap/images/1903/22-150x150.jpg 150w, resource/front_bootstrap/images/1903/22-300x300.jpg 300w, resource/front_bootstrap/images/1903/22-180x180.jpg 180w, resource/front_bootstrap/images/1903/22.jpg 600w"
														sizes="(max-width: 100px) 100vw, 100px" />
												</a>

													<div class="detail-item">
														<div class="product-details">
															<h4>
																<a class="title-item" href="simple_product.html">Cleaner
																	with bag</a>
															</h4>

															<div class="product-price">
																<span class="price"> <span
																	class="woocommerce-Price-amount amount"> <span
																		class="woocommerce-Price-currencySymbol">$</span>350.00
																</span>
																</span>

																<div class="qty">
																	<span class="qty-number">1</span>
																</div>
															</div>

															<div class="product-action clearfix">
																<a href="#" class="btn-remove" title="Remove this item">
																	<span class="fa fa-trash-o"></span>
																</a> <a class="btn-edit" href="cart.html"
																	title="View your shopping cart"> <span
																	class="fa fa-pencil"></span>
																</a>
															</div>
														</div>
													</div></li>
											</ul>

											<div class="cart-checkout">
												<div class="price-total">
													<span class="label-price-total">Total</span> <span
														class="price-total-w"> <span class="price">
															<span class="woocommerce-Price-amount amount"> <span
																class="woocommerce-Price-currencySymbol">$</span>540.00
														</span>
													</span>
													</span>
												</div>

												<div class="cart-links clearfix">
													<div class="cart-link">
														<a href="cart.html" title="Cart">View Cart</a>
													</div>

													<div class="checkout-link">
														<a href="checkout.html" title="Check Out">Check Out</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="widget nav_menu-3 widget_nav_menu pull-left">
							<div class="widget-inner">
								<ul id="menu-wishlist" class="menu">
									<li class="menu-wishlist"><a class="item-link"
										href="wishlist.html"> <span class="menu-title">Wishlist</span>
									</a></li>

									<li class="yith-woocompare-open menu-compare"><a
										class="item-link compare" href="#"> <span
											class="menu-title">Compare</span>
									</a></li>
								</ul>
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
						<nav id="primary-menu" class="primary-menu">
						<div class="navbar-inner navbar-inverse">
							<div class="resmenu-container">
								<button class="navbar-toggle" type="button"
									data-toggle="collapse" data-target="#ResMenuprimary_menu">
									<span class="sr-only">Categories</span> <span class="icon-bar"></span>
									<span class="icon-bar"></span> <span class="icon-bar"></span>
								</button>

								<div id="ResMenuprimary_menu"
									class="collapse menu-responsive-wrapper">
									<ul id="menu-primary-menu" class="etrostore_resmenu">
										<li class="res-dropdown menu-home"><a
											class="item-link dropdown-toggle" href="common/toShop">首页</a>
											<span class="show-dropdown"></span>

											<ul class="dropdown-resmenu">
												<li class="res-dropdown menu-home-pages"><a
													class="item-link dropdown-toggle" href="#">Home Pages</a> <span
													class="show-dropdown"></span>

													<ul class="dropdown-resmenu">
														<li class="menu-home-page-1"><a
															href="home_page_1.html">Home Page 1</a></li>

														<li class="menu-home-page-2"><a
															href="home_page_2.html">Home Page 2</a></li>

														<li class="menu-home-page-3"><a
															href="home_page_3.html">Home Page 3</a></li>

														<li class="menu-home-page-4"><a
															href="home_page_4.html">Home Page 4</a></li>

														<li class="menu-home-page-5"><a
															href="home_page_5.html">Home Page 5</a></li>

														<li class="menu-home-page-boxed"><a
															href="home_page_1_boxed.html">Home Page Boxed</a></li>

														<li class="menu-home-page-full"><a
															href="home_page_1_full.html">Home Page Full</a></li>
													</ul></li>

												<li class="res-dropdown menu-color-styles"><a
													class="item-link dropdown-toggle" href="#">Color Styles</a>
													<span class="show-dropdown"></span>

													<ul class="dropdown-resmenu">
														<li class="menu-default"><a data-theme="default">Default</a>
														</li>

														<li class="menu-orange"><a data-theme="orange">Orange</a>
														</li>
													</ul></li>

												<li class="res-dropdown menu-advanced"><a
													class="item-link dropdown-toggle" href="#">Advanced</a> <span
													class="show-dropdown"></span>

													<ul class="dropdown-resmenu">
														<li class="menu-default"><a data-advanced="ltr">Left
																to right</a></li>

														<li class="menu-orange"><a data-advanced="rtl">Right
																to left</a></li>
													</ul></li>
											</ul></li>

										<li class="active res-dropdown menu-shop"><a
											class="item-link dropdown-toggle" href="#">Shop</a> <span
											class="show-dropdown"></span>

											<ul class="dropdown-resmenu">
												<li class="res-dropdown menu-shop-pages"><a
													class="item-link dropdown-toggle" href="#">Shop Pages</a> <span
													class="show-dropdown"></span>

													<ul class="dropdown-resmenu">
														<li class="menu-shop"><a href="shop.html">Shop</a></li>

														<li class="menu-cart"><a href="cart.html">Cart</a></li>

														<li class="menu-checkout"><a href="checkout.html">Checkout</a>
														</li>

														<li class="menu-my-account"><a href="my_account.html">My
																Account</a></li>

														<li class="menu-wishlist"><a href="wishlist.html">Wishlist</a>
														</li>
													</ul></li>

												<li class="res-dropdown menu-shop-layouts"><a
													class="item-link dropdown-toggle" href="#">Shop Layouts</a>
													<span class="show-dropdown"></span>

													<ul class="dropdown-resmenu">
														<li class="menu-right-sidebar-grid"><a
															href="shop_right_sidebar.html">Right Sidebar Grid</a></li>

														<li class="menu-left-sidebar-grid"><a
															href="shop_left_sidebar.html">Left Sidebar Grid</a></li>

														<li class="menu-full-width-grid"><a
															href="shop_full_width.html">Full Width Grid</a></li>

														<li class="menu-2-columns-grid"><a
															href="shop_two_columns.html">2 Columns Grid</a></li>

														<li class="menu-3-columns-grid"><a
															href="shop_three_columns.html">3 Columns Grid</a></li>

														<li class="menu-4-columns-grid"><a
															href="shop_four_columns.html">4 Columns Grid</a></li>
													</ul></li>

												<li class="active res-dropdown menu-product-types"><a
													class="item-link dropdown-toggle" href="#">Product
														Types</a> <span class="show-dropdown"></span>

													<ul class="dropdown-resmenu">
														<li class="active menu-simple-product"><a
															href="simple_product.html">Simple Product</a></li>

														<li class="menu-variable-product"><a
															href="variable_product.html">Variable Product</a></li>

														<li class="menu-group-product"><a
															href="group_product.html">Group Product</a></li>

														<li class="menu-externalaffiliate-product"><a
															href="externalaffiliate_product.html">External/Affiliate
																Product</a></li>
													</ul></li>

												<li class="res-dropdown menu-product-layouts"><a
													class="item-link dropdown-toggle" href="#">Product
														Layouts</a> <span class="show-dropdown"></span>

													<ul class="dropdown-resmenu">
														<li class="menu-full-width"><a
															href="sidebar_product_full.html">Full width</a></li>

														<li class="menu-left-sidebar"><a
															href="sidebar_product_left.html">Left Sidebar</a></li>

														<li class="menu-right-sidebar"><a
															href="sidebar_product_right.html">Right Sidebar</a></li>
													</ul></li>
											</ul></li>

										<li class="res-dropdown menu-smartphones-tablet"><a
											class="item-link dropdown-toggle" href="#">Smartphones &
												Tablet</a> <span class="show-dropdown"></span>

											<ul class="dropdown-resmenu">
												<li class="res-dropdown menu-electronics"><a
													class="item-link dropdown-toggle" href="#">Electronics</a>
													<span class="show-dropdown"></span>

													<ul class="dropdown-resmenu">
														<li class="menu-leds"><a href="#">Leds</a></li>

														<li class="menu-laptop-desktop-accessories"><a
															href="#">Laptop & Desktop Accessories</a></li>

														<li class="menu-storage-external-drives"><a href="#">Storage
																& External Drives</a></li>

														<li class="menu-networking-wireless"><a href="#">Networking
																& Wireless</a></li>

														<li class="menu-motherboards-cpus-psus"><a href="#">Motherboards,
																CPUs & PSUs</a></li>

														<li class="menu-webcams"><a href="#">Webcams</a></li>

														<li class="menu-gaming"><a href="#">Gaming</a></li>
													</ul></li>

												<li class="res-dropdown menu-smartphone"><a
													class="item-link dropdown-toggle" href="#">Smartphone</a> <span
													class="show-dropdown"></span>

													<ul class="dropdown-resmenu">
														<li class="menu-smartphones"><a href="#">Smartphones</a>
														</li>

														<li class="menu-mobile-phones"><a href="#">Mobile
																Phones</a></li>

														<li class="menu-smart-watches-accessories"><a
															href="#">Smart Watches & Accessories</a></li>

														<li class="menu-mobile-accessories"><a href="#">Mobile
																Accessories</a></li>

														<li class="menu-cases-covers"><a href="#">Cases &
																Covers</a></li>

														<li class="menu-power-banks"><a href="#">Power
																Banks</a></li>

														<li class="menu-memory-cards"><a href="#">Memory
																Cards</a></li>

														<li class="menu-headphonesheadsets"><a href="#">Headphones/Headsets</a>
														</li>
													</ul></li>

												<li class="res-dropdown menu-tablet"><a
													class="item-link dropdown-toggle" href="#">Tablet</a> <span
													class="show-dropdown"></span>

													<ul class="dropdown-resmenu">
														<li class="menu-tablets"><a href="#">Tablets</a></li>

														<li class="menu-tablet-accessories"><a href="#">Tablet
																Accessories</a></li>

														<li class="menu-cases-covers"><a href="#">Cases &
																Covers</a></li>

														<li class="menu-power-banks"><a href="#">Power
																Banks</a></li>

														<li class="menu-memory-cards"><a href="#">Memory
																Cards</a></li>

														<li class="menu-headphonesheadsets"><a href="#">Headphones/Headsets</a>
														</li>
													</ul></li>

												<li class="res-dropdown menu-computer"><a
													class="item-link dropdown-toggle" href="#">Computer</a> <span
													class="show-dropdown"></span>

													<ul class="dropdown-resmenu">
														<li class="menu-computers"><a href="#">Computers</a>
														</li>

														<li class="menu-macbooks-imacs"><a href="#">Macbooks
																& iMacs</a></li>

														<li class="menu-computers-desktops"><a href="#">Computers
																& Desktops</a></li>

														<li class="menu-printers-scanners-faxs"><a href="#">Printers,
																Scanners, & Faxs</a></li>

														<li class="menu-laptop-desktop-accessories"><a
															href="#">Laptop & Desktop Accessories</a></li>

														<li class="menu-storage-external-drives"><a href="#">Storage
																& External Drives</a></li>

														<li class="menu-networking-wireless"><a href="#">Networking
																& Wireless</a></li>

														<li class="menu-motherboards-cpus-psus"><a href="#">Motherboards,
																CPUs & PSUs</a></li>
													</ul></li>
											</ul></li>

										<li class="res-dropdown menu-blog"><a
											class="item-link dropdown-toggle" href="#">Blog</a> <span
											class="show-dropdown"></span>

											<ul class="dropdown-resmenu">
												<li class="res-dropdown menu-blog-layouts"><a
													class="item-link dropdown-toggle" href="#">Blog Layouts</a>
													<span class="show-dropdown"></span>

													<ul class="dropdown-resmenu">
														<li class="menu-left-sidebar-default"><a
															href="blog_left_sidebar.html">Left Sidebar Default</a></li>

														<li class="menu-left-sidebar-list"><a
															href="blog_left_sidebar_list.html">Left Sidebar List</a>
														</li>

														<li class="menu-right-sidebar-list"><a
															href="blog_right_sidebar_list.html">Right Sidebar
																List</a></li>

														<li class="menu-full-width-list"><a
															href="blog_full_width_list.html">Full width List</a></li>
													</ul></li>

												<li class="res-dropdown menu-blog-layouts-2"><a
													class="item-link dropdown-toggle" href="#">Blog Layouts
														2</a> <span class="show-dropdown"></span>

													<ul class="dropdown-resmenu">
														<li class="menu-2-columns-grid"><a
															href="blog_two_columns.html">2 Columns Grid</a></li>

														<li class="menu-3-columns-grid"><a
															href="blog_three_columns.html">3 Columns Grid</a></li>

														<li class="menu-4-columns-grid"><a
															href="blog_four_columns.html">4 Columns Grid</a></li>
													</ul></li>

												<li class="res-dropdown menu-post-formats"><a
													class="item-link dropdown-toggle" href="#">Post Formats</a>
													<span class="show-dropdown"></span>

													<ul class="dropdown-resmenu">
														<li class="menu-post-format-image"><a
															href="post_format_image.html">Post Format : Image</a></li>

														<li class="menu-post-format-audio"><a
															href="post_format_audio.html">Post Format : Audio</a></li>

														<li class="menu-post-format-gallery"><a
															href="post_format_gallery.html">Post Format : Gallery</a>
														</li>

														<li class="menu-post-format-video"><a
															href="post_format_video.html">Post Format : Video</a></li>
													</ul></li>

												<li class="res-dropdown menu-post-layouts"><a
													class="item-link dropdown-toggle" href="#">Post Layouts</a>
													<span class="show-dropdown"></span>

													<ul class="dropdown-resmenu">
														<li class="menu-full-width"><a
															href="post_layout_full_width.html">Full Width</a></li>

														<li class="menu-left-sidebar"><a
															href="post_layout_left_sidebar.html">Left Sidebar</a></li>

														<li class="menu-right-sidebar"><a
															href="post_layout_right_sidebar.html">Right Sidebar</a></li>
													</ul></li>
											</ul></li>

										<li class="menu-deals"><a class="item-link"
											href="deals.html">Deals</a></li>

										<li class="res-dropdown menu-portfolios"><a
											class="item-link dropdown-toggle" href="#">Portfolios</a> <span
											class="show-dropdown"></span>

											<ul class="dropdown-resmenu">
												<li class="menu-portfolio-2-columns"><a
													href="portfolios_two_columns.html">Portfolio 2 Columns</a>
												</li>

												<li class="menu-portfolio-3-columns"><a
													href="portfolios_three_columns.html">Portfolio 3
														Columns</a></li>

												<li class="menu-portfolio-4-columns"><a
													href="portfolios_four_columns.html">Portfolio 4 Columns</a>
												</li>

												<li class="menu-portfolio-masonry"><a
													href="portfolios_masonry.html">Portfolio Masonry</a></li>
											</ul></li>

										<li class="menu-about-us"><a class="item-link"
											href="common/toabout_us">关于我们</a></li>

										<li class="menu-contact-us"><a class="item-link"
											href="contact_us.html">Contact Us</a></li>
									</ul>
								</div>
							</div>

							<ul id="menu-primary-menu-1"
								class="nav nav-pills nav-mega etrostore-mega etrostore-menures">
								<li class="dropdown menu-home etrostore-mega-menu level1">
									<a href="common/toShop" class="item-link dropdown-toggle">
										<span class="have-title"> <span class="menu-color"
											data-color="#f034ca"></span> <span class="menu-title">首页</span>
									</span>
								</a>

									<ul class="dropdown-menu nav-level1 column-3">
										<li class="dropdown-submenu column-3 menu-home-pages"><a
											href="#"> <span class="have-title"> <span
													class="menu-title">Home Pages</span>
											</span>
										</a>

											<ul class="dropdown-sub nav-level2">
												<li class="menu-home-page-1"><a href="home_page_1.html">
														<span class="have-title"> <span class="menu-title">Home
																Page 1</span>
													</span>
												</a></li>

												<li class="menu-home-page-2"><a href="home_page_2.html">
														<span class="have-title"> <span class="menu-title">Home
																Page 2</span>
													</span>
												</a></li>

												<li class="menu-home-page-3"><a href="home_page_3.html">
														<span class="have-title"> <span class="menu-title">Home
																Page 3</span>
													</span>
												</a></li>

												<li class="menu-home-page-4"><a href="home_page_4.html">
														<span class="have-title"> <span class="menu-title">Home
																Page 4</span>
													</span>
												</a></li>

												<li class="menu-home-page-5"><a href="home_page_5.html">
														<span class="have-title"> <span class="menu-title">Home
																Page 5</span>
													</span>
												</a></li>

												<li class="menu-home-page-boxed"><a
													href="home_page_1_boxed.html"> <span class="have-title">
															<span class="menu-title">Home Page Boxed</span>
													</span>
												</a></li>

												<li class="menu-home-page-full"><a
													href="home_page_1_full.html"> <span class="have-title">
															<span class="menu-title">Home Page Full</span>
													</span>
												</a></li>
											</ul></li>

										<li class="dropdown-submenu column-3 menu-color-styles">
											<a href="#"> <span class="have-title"> <span
													class="menu-title">Color Styles</span>
											</span>
										</a>

											<ul class="dropdown-sub nav-level2">
												<li class="menu-default"><a data-theme="default"> <span
														class="have-title"> <span class="menu-title">Default</span>
													</span>
												</a></li>

												<li class="menu-orange"><a data-theme="orange"> <span
														class="have-title"> <span class="menu-title">Orange</span>
													</span>
												</a></li>
											</ul>
										</li>

										<li class="dropdown-submenu column-3 menu-advanced"><a
											href="#"> <span class="have-title"> <span
													class="menu-title">Advanced</span>
											</span>
										</a>

											<ul class="dropdown-sub nav-level2">
												<li class="menu-default"><a data-advanced="ltr"> <span
														class="have-title"> <span class="menu-title">Left
																to right</span>
													</span>
												</a></li>

												<li class="menu-orange"><a data-advanced="rtl"> <span
														class="have-title"> <span class="menu-title">Right
																to left</span>
													</span>
												</a></li>
											</ul></li>
									</ul>
								</li>

								<li
									class="active dropdown menu-shop etrostore-mega-menu level1 etrostore-menu-img">
									<a href="#" class="item-link dropdown-toggle"> <span
										class="have-title"> <span class="menu-color"
											data-color="#f03442"></span> <span class="menu-img"> <img
												src="resource/front_bootstrap/images/1903/icon-new-1.png"
												alt="Menu Image" />
										</span> <span class="menu-title">Shop</span>
									</span>
								</a>

									<ul class="dropdown-menu nav-level1 column-4">
										<li class="dropdown-submenu column-4 menu-shop-pages"><a
											href="#"> <span class="have-title"> <span
													class="menu-title">Shop Pages</span>
											</span>
										</a>

											<ul class="dropdown-sub nav-level2">
												<li class="menu-shop"><a href="shop.html"> <span
														class="have-title"> <span class="menu-title">Shop</span>
													</span>
												</a></li>

												<li class="menu-cart"><a href="cart.html"> <span
														class="have-title"> <span class="menu-title">Cart</span>
													</span>
												</a></li>

												<li class="menu-checkout"><a href="checkout.html">
														<span class="have-title"> <span class="menu-title">Checkout</span>
													</span>
												</a></li>

												<li class="menu-my-account"><a href="my_account.html">
														<span class="have-title"> <span class="menu-title">My
																Account</span>
													</span>
												</a></li>

												<li class="menu-wishlist"><a href="wishlist.html">
														<span class="have-title"> <span class="menu-title">Wishlist</span>
													</span>
												</a></li>
											</ul></li>

										<li class="dropdown-submenu column-4 menu-shop-layouts">
											<a href="#"> <span class="have-title"> <span
													class="menu-title">Shop Layouts</span>
											</span>
										</a>

											<ul class="dropdown-sub nav-level2">
												<li class="menu-right-sidebar-grid"><a
													href="shop_right_sidebar.html"> <span
														class="have-title"> <span class="menu-title">Right
																Sidebar Grid</span>
													</span>
												</a></li>

												<li class="menu-left-sidebar-grid"><a
													href="shop_left_sidebar.html"> <span class="have-title">
															<span class="menu-title">Left Sidebar Grid</span>
													</span>
												</a></li>

												<li class="menu-full-width-grid"><a
													href="shop_full_width.html"> <span class="have-title">
															<span class="menu-title">Full Width Grid</span>
													</span>
												</a></li>

												<li class="menu-2-columns-grid"><a
													href="shop_two_columns.html"> <span class="have-title">
															<span class="menu-title">2 Columns Grid</span>
													</span>
												</a></li>

												<li class="menu-3-columns-grid"><a
													href="shop_three_columns.html"> <span
														class="have-title"> <span class="menu-title">3
																Columns Grid</span>
													</span>
												</a></li>

												<li class="menu-4-columns-grid"><a
													href="shop_four_columns.html"> <span class="have-title">
															<span class="menu-title">4 Columns Grid</span>
													</span>
												</a></li>
											</ul>
										</li>

										<li
											class="active dropdown-submenu column-4 menu-product-types">
											<a href="#"> <span class="have-title"> <span
													class="menu-title">Product Types</span>
											</span>
										</a>

											<ul class="dropdown-sub nav-level2">
												<li class="active menu-simple-product"><a
													href="simple_product.html"> <span class="have-title">
															<span class="menu-title">Simple Product</span>
													</span>
												</a></li>

												<li class="menu-variable-product"><a
													href="variable_product.html"> <span class="have-title">
															<span class="menu-title">Variable Product</span>
													</span>
												</a></li>

												<li class="menu-group-product"><a
													href="group_product.html"> <span class="have-title">
															<span class="menu-title">Group Product</span>
													</span>
												</a></li>

												<li class="menu-externalaffiliate-product"><a
													href="externalaffiliate_product.html"> <span
														class="have-title"> <span class="menu-title">External/Affiliate
																Product</span>
													</span>
												</a></li>
											</ul>
										</li>

										<li class="dropdown-submenu column-4 menu-product-layouts">
											<a href="#"> <span class="have-title"> <span
													class="menu-title">Product Layouts</span>
											</span>
										</a>

											<ul class="dropdown-sub nav-level2">
												<li class="menu-full-width"><a
													href="sidebar_product_full.html"> <span
														class="have-title"> <span class="menu-title">Full
																width</span>
													</span>
												</a></li>

												<li class="menu-left-sidebar"><a
													href="sidebar_product_left.html"> <span
														class="have-title"> <span class="menu-title">Left
																Sidebar</span>
													</span>
												</a></li>

												<li class="menu-right-sidebar"><a
													href="sidebar_product_right.html"> <span
														class="have-title"> <span class="menu-title">Right
																Sidebar</span>
													</span>
												</a></li>
											</ul>
										</li>
									</ul>
								</li>

								<li
									class="dropdown menu-smartphones-tablet etrostore-mega-menu level1">
									<a href="#" class="item-link dropdown-toggle"> <span
										class="have-title"> <span class="menu-color"
											data-color="#13528c"></span> <span class="menu-title">Smartphones
												& Tablet</span>
									</span>
								</a>

									<ul class="dropdown-menu nav-level1 column-4">
										<li
											class="dropdown-submenu column-4 menu-electronics etrostore-menu-img">
											<a href="#"> <span class="have-title"> <span
													class="menu-img"> <img
														src="resource/front_bootstrap/images/1903/menu-bn3.jpg"
														alt="Menu Image" />
												</span> <span class="menu-title">Electronics</span>
											</span>
										</a>

											<ul class="dropdown-sub nav-level2">
												<li class="menu-leds"><a href="#"> <span
														class="have-title"> <span class="menu-title">Leds</span>
													</span>
												</a></li>

												<li class="menu-laptop-desktop-accessories"><a href="#">
														<span class="have-title"> <span class="menu-title">Laptop
																& Desktop Accessories</span>
													</span>
												</a></li>

												<li class="menu-storage-external-drives"><a href="#">
														<span class="have-title"> <span class="menu-title">Storage
																& External Drives</span>
													</span>
												</a></li>

												<li class="menu-networking-wireless"><a href="#"> <span
														class="have-title"> <span class="menu-title">Networking
																& Wireless</span>
													</span>
												</a></li>

												<li class="menu-motherboards-cpus-psus"><a href="#">
														<span class="have-title"> <span class="menu-title">Motherboards,
																CPUs & PSUs</span>
													</span>
												</a></li>

												<li class="menu-webcams"><a href="#"> <span
														class="have-title"> <span class="menu-title">Webcams</span>
													</span>
												</a></li>

												<li class="menu-gaming"><a href="#"> <span
														class="have-title"> <span class="menu-title">Gaming</span>
													</span>
												</a></li>
											</ul>
										</li>

										<li
											class="dropdown-submenu column-4 menu-smartphone etrostore-menu-img">
											<a href="#"> <span class="have-title"> <span
													class="menu-img"> <img
														src="resource/front_bootstrap/images/1903/menu-bn4.jpg"
														alt="Menu Image" />
												</span> <span class="menu-title">Smartphone</span>
											</span>
										</a>

											<ul class="dropdown-sub nav-level2">
												<li class="menu-smartphones"><a href="#"> <span
														class="have-title"> <span class="menu-title">Smartphones</span></span></a></li>

												<li class="menu-mobile-phones"><a href="#"> <span
														class="have-title"> <span class="menu-title">Mobile
																Phones</span>
													</span>
												</a></li>

												<li class="menu-smart-watches-accessories"><a href="#">
														<span class="have-title"> <span class="menu-title">Smart
																Watches & Accessories</span>
													</span>
												</a></li>

												<li class="menu-mobile-accessories"><a href="#"> <span
														class="have-title"> <span class="menu-title">Mobile
																Accessories</span>
													</span>
												</a></li>

												<li class="menu-cases-covers"><a href="#"> <span
														class="have-title"> <span class="menu-title">Cases
																& Covers</span>
													</span>
												</a></li>

												<li class="menu-power-banks"><a href="#"> <span
														class="have-title"> <span class="menu-title">Power
																Banks</span>
													</span>
												</a></li>

												<li class="menu-memory-cards"><a href="#"> <span
														class="have-title"> <span class="menu-title">Memory
																Cards</span>
													</span>
												</a></li>

												<li class="menu-headphonesheadsets"><a href="#"> <span
														class="have-title"> <span class="menu-title">Headphones/Headsets</span>
													</span>
												</a></li>
											</ul>
										</li>

										<li
											class="dropdown-submenu column-4 menu-tablet etrostore-menu-img">
											<a href="#"> <span class="have-title"> <span
													class="menu-img"> <img
														src="resource/front_bootstrap/images/1903/menu-bn5.jpg"
														alt="Menu Image" />
												</span> <span class="menu-title">Tablet</span>
											</span>
										</a>

											<ul class="dropdown-sub nav-level2">
												<li class="menu-tablets"><a href="#"> <span
														class="have-title"> <span class="menu-title">Tablets</span>
													</span>
												</a></li>

												<li class="menu-tablet-accessories"><a href="#"> <span
														class="have-title"> <span class="menu-title">Tablet
																Accessories</span>
													</span>
												</a></li>

												<li class="menu-cases-covers"><a href="#"> <span
														class="have-title"> <span class="menu-title">Cases
																& Covers</span>
													</span>
												</a></li>

												<li class="menu-power-banks"><a href="#"> <span
														class="have-title"> <span class="menu-title">Power
																Banks</span>
													</span>
												</a></li>

												<li class="menu-memory-cards"><a href="#"> <span
														class="have-title"> <span class="menu-title">Memory
																Cards</span>
													</span>
												</a></li>

												<li class="menu-headphonesheadsets"><a href="#"> <span
														class="have-title"> <span class="menu-title">Headphones/Headsets</span>
													</span>
												</a></li>
											</ul>
										</li>

										<li
											class="dropdown-submenu column-4 menu-computer etrostore-menu-img">
											<a href="#"> <span class="have-title"> <span
													class="menu-img"> <img
														src="resource/front_bootstrap/images/1903/menu-bn6.jpg"
														alt="Menu Image" />
												</span> <span class="menu-title">Computer</span>
											</span>
										</a>

											<ul class="dropdown-sub nav-level2">
												<li class="menu-computers"><a href="#"> <span
														class="have-title"> <span class="menu-title">Computers</span>
													</span>
												</a></li>

												<li class="menu-macbooks-imacs"><a href="#"> <span
														class="have-title"> <span class="menu-title">Macbooks
																& iMacs</span>
													</span>
												</a></li>

												<li class="menu-computers-desktops"><a href="#"> <span
														class="have-title"> <span class="menu-title">Computers
																& Desktops</span>
													</span>
												</a></li>

												<li class="menu-printers-scanners-faxs"><a href="#">
														<span class="have-title"> <span class="menu-title">Printers,
																Scanners, & Faxs</span>
													</span>
												</a></li>

												<li class="menu-laptop-desktop-accessories"><a href="#">
														<span class="have-title"> <span class="menu-title">Laptop
																& Desktop Accessories</span>
													</span>
												</a></li>

												<li class="menu-storage-external-drives"><a href="#">
														<span class="have-title"> <span class="menu-title">Storage
																& External Drives</span>
													</span>
												</a></li>

												<li class="menu-networking-wireless"><a href="#"> <span
														class="have-title"> <span class="menu-title">Networking
																& Wireless</span>
													</span>
												</a></li>
												<li class="menu-motherboards-cpus-psus"><a href="#">
														<span class="have-title"> <span class="menu-title">Motherboards,
																CPUs & PSUs</span>
													</span>
												</a></li>
											</ul>
										</li>
									</ul>
								</li>

								<li class="dropdown menu-blog etrostore-mega-menu level1">
									<a href="#" class="item-link dropdown-toggle"> <span
										class="have-title"> <span class="menu-title">Blog</span>
									</span>
								</a>

									<ul class="dropdown-menu nav-level1 column-4">
										<li class="dropdown-submenu column-4 menu-blog-layouts">
											<a href="#"> <span class="have-title"> <span
													class="menu-title">Blog Layouts</span>
											</span>
										</a>

											<ul class="dropdown-sub nav-level2">
												<li class="menu-left-sidebar-default"><a
													href="blog_left_sidebar.html"> <span class="have-title">
															<span class="menu-title">Left Sidebar Default</span>
													</span>
												</a></li>

												<li class="menu-left-sidebar-list"><a
													href="blog_left_sidebar_list.html"> <span
														class="have-title"> <span class="menu-title">Left
																Sidebar List</span>
													</span>
												</a></li>

												<li class="menu-right-sidebar-list"><a
													href="blog_right_sidebar_list.html"> <span
														class="have-title"> <span class="menu-title">Right
																Sidebar List</span>
													</span>
												</a></li>

												<li class="menu-full-width-list"><a
													href="blog_full_width_list.html"> <span
														class="have-title"> <span class="menu-title">Full
																width List</span>
													</span>
												</a></li>
											</ul>
										</li>

										<li class="dropdown-submenu column-4 menu-blog-layouts-2">
											<a href="#"> <span class="have-title"> <span
													class="menu-title">Blog Layouts 2</span>
											</span>
										</a>

											<ul class="dropdown-sub nav-level2">
												<li class="menu-2-columns-grid"><a
													href="blog_two_columns.html"> <span class="have-title">
															<span class="menu-title">2 Columns Grid</span>
													</span>
												</a></li>

												<li class="menu-3-columns-grid"><a
													href="blog_three_columns.html"> <span
														class="have-title"> <span class="menu-title">3
																Columns Grid</span>
													</span>
												</a></li>

												<li class="menu-4-columns-grid"><a
													href="blog_four_columns.html"> <span class="have-title">
															<span class="menu-title">4 Columns Grid</span>
													</span>
												</a></li>
											</ul>
										</li>

										<li class="dropdown-submenu column-4 menu-post-formats">
											<a href="#"> <span class="have-title"> <span
													class="menu-title">Post Formats</span>
											</span>
										</a>

											<ul class="dropdown-sub nav-level2">
												<li class="menu-post-format-image"><a
													href="post_format_image.html"> <span class="have-title">
															<span class="menu-title">Post Format : Image</span>
													</span>
												</a></li>

												<li class="menu-post-format-audio"><a
													href="post_format_audio.html"> <span class="have-title">
															<span class="menu-title">Post Format : Audio</span>
													</span>
												</a></li>

												<li class="menu-post-format-gallery"><a
													href="post_format_gallery.html"> <span
														class="have-title"> <span class="menu-title">Post
																Format : Gallery</span>
													</span>
												</a></li>

												<li class="menu-post-format-video"><a
													href="post_format_video.html"> <span class="have-title">
															<span class="menu-title">Post Format : Video</span>
													</span>
												</a></li>
											</ul>
										</li>

										<li class="dropdown-submenu column-4 menu-post-layouts">
											<a href="#"> <span class="have-title"> <span
													class="menu-title">Post Layouts</span>
											</span>
										</a>

											<ul class="dropdown-sub nav-level2">
												<li class="menu-full-width"><a
													href="post_layout_full_width.html"> <span
														class="have-title"> <span class="menu-title">Full
																Width</span>
													</span>
												</a></li>

												<li class="menu-left-sidebar"><a
													href="post_layout_left_sidebar.html"> <span
														class="have-title"> <span class="menu-title">Left
																Sidebar</span>
													</span>
												</a></li>

												<li class="menu-right-sidebar"><a
													href="post_layout_right_sidebar.html"> <span
														class="have-title"> <span class="menu-title">Right
																Sidebar</span>
													</span>
												</a></li>
											</ul>
										</li>

										<li class="image-fix column-4 menu-image etrostore-menu-img">
											<a href="#"> <span class=""> <span
													class="menu-img"> <img
														src="resource/front_bootstrap/images/1903/menu-bn1.jpg"
														alt="Menu Image" />
												</span>
											</span>
										</a>
										</li>

										<li class="image-fix column-4 menu-image etrostore-menu-img">
											<a href="#"> <span class=""> <span
													class="menu-img"> <img
														src="resource/front_bootstrap/images/1903/menu-bn2.jpg"
														alt="Menu Image" />
												</span>
											</span>
										</a>
										</li>
									</ul>
								</li>

								<li
									class="menu-deals etrostore-menu-custom level1 etrostore-menu-img">
									<a href="deals.html" class="item-link"> <span
										class="have-title"> <span class="menu-img"> <img
												src="resource/front_bootstrap/images/1903/icon-hot.png"
												alt="Menu Image" />
										</span> <span class="menu-title">Deals</span>
									</span>
								</a>
								</li>

								<li
									class="dropdown menu-portfolios etrostore-menu-custom level1">
									<a href="#" class="item-link dropdown-toggle"> <span
										class="have-title"> <span class="menu-title">Portfolios</span>
									</span>
								</a>

									<ul class="dropdown-menu">
										<li class="column-1 menu-portfolio-2-columns"><a
											href="portfolios_two_columns.html"> <span
												class="have-title"> <span class="menu-title">Portfolio
														2 Columns</span>
											</span>
										</a></li>

										<li class="column-1 menu-portfolio-3-columns"><a
											href="portfolios_three_columns.html"> <span
												class="have-title"> <span class="menu-title">Portfolio
														3 Columns</span>
											</span>
										</a></li>

										<li class="column-1 menu-portfolio-4-columns"><a
											href="portfolios_four_columns.html"> <span
												class="have-title"> <span class="menu-title">Portfolio
														4 Columns</span>
											</span>
										</a></li>

										<li class="column-1 menu-portfolio-masonry"><a
											href="portfolios_masonry.html"> <span class="have-title">
													<span class="menu-title">Portfolio Masonry</span>
											</span>
										</a></li>
									</ul>
								</li>

								<li class="menu-about-us etrostore-menu-custom level1"><a
									href="common/toabout_us" class="item-link"> <span
										class="have-title"> <span class="menu-title">关于我们</span>
									</span>
								</a></li>

								<li class="menu-contact-us etrostore-menu-custom level1"><a
									href="contact_us.html" class="item-link"> <span
										class="have-title"> <span class="menu-title">Contact
												Us</span>
									</span>
								</a></li>
							</ul>
						</div>
						</nav>
					</div>
					<!-- /Primary navbar -->

					<div
						class="top-form top-form-minicart etrostore-minicart pull-right">
						<div class="top-minicart-icon pull-right">
							<i class="fa fa-shopping-cart"></i> <a class="cart-contents"
								href="cart.html" title="View your shopping cart"> <span
								class="minicart-number">2</span>
							</a>
						</div>

						<div class="wrapp-minicart">
							<div class="minicart-padding">
								<div class="number-item">
									There are <span>items</span> in your cart
								</div>

								<ul class="minicart-content">
									<li><a href="simple_product.html" class="product-image">
											<img width="100" height="100"
											src="resource/front_bootstrap/images/1903/45-150x150.jpg"
											class="attachment-100x100 size-100x100 wp-post-image" alt=""
											srcset="resource/front_bootstrap/images/1903/45-150x150.jpg 150w, resource/front_bootstrap/images/1903/45-300x300.jpg 300w, resource/front_bootstrap/images/1903/45-180x180.jpg 180w, resource/front_bootstrap/images/1903/45.jpg 600w"
											sizes="(max-width: 100px) 100vw, 100px" />
									</a>

										<div class="detail-item">
											<div class="product-details">
												<h4>
													<a class="title-item" href="simple_product.html">Veniam
														Dolore</a>
												</h4>

												<div class="product-price">
													<span class="price"> <span
														class="woocommerce-Price-amount amount"> <span
															class="woocommerce-Price-currencySymbol">$</span>190.00
													</span>
													</span>

													<div class="qty">
														<span class="qty-number">1</span>
													</div>
												</div>

												<div class="product-action clearfix">
													<a href="#" class="btn-remove" title="Remove this item">
														<span class="fa fa-trash-o"></span>
													</a> <a class="btn-edit" href="cart.html"
														title="View your shopping cart"> <span
														class="fa fa-pencil"></span>
													</a>
												</div>
											</div>
										</div></li>

									<li><a href="simple_product.html" class="product-image">
											<img width="100" height="100"
											src="resource/front_bootstrap/images/1903/22-150x150.jpg"
											class="attachment-100x100 size-100x100 wp-post-image" alt=""
											srcset="resource/front_bootstrap/images/1903/22-150x150.jpg 150w, resource/front_bootstrap/images/1903/22-300x300.jpg 300w, resource/front_bootstrap/images/1903/22-180x180.jpg 180w, resource/front_bootstrap/images/1903/22.jpg 600w"
											sizes="(max-width: 100px) 100vw, 100px" />
									</a>

										<div class="detail-item">
											<div class="product-details">
												<h4>
													<a class="title-item" href="simple_product.html">Cleaner
														with bag</a>
												</h4>

												<div class="product-price">
													<span class="price"> <span
														class="woocommerce-Price-amount amount"> <span
															class="woocommerce-Price-currencySymbol">$</span>350.00
													</span>
													</span>

													<div class="qty">
														<span class="qty-number">1</span>
													</div>
												</div>

												<div class="product-action clearfix">
													<a href="#" class="btn-remove" title="Remove this item">
														<span class="fa fa-trash-o"></span>
													</a> <a class="btn-edit" href="cart.html"
														title="View your shopping cart"> <span
														class="fa fa-pencil"></span>
													</a>
												</div>
											</div>
										</div></li>
								</ul>

								<div class="cart-checkout">
									<div class="price-total">
										<span class="label-price-total">总计</span> <span
											class="price-total-w"> <span class="price"> <span
												class="woocommerce-Price-amount amount"> <span
													class="woocommerce-Price-currencySymbol">$</span>540.00
											</span>
										</span>
										</span>
									</div>

									<div class="cart-links clearfix">
										<div class="cart-link">
											<a href="cart.html" title="Cart">View Cart</a>
										</div>

										<div class="checkout-link">
											<a href="checkout.html" title="Check Out">Check Out</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="mid-header pull-right">
						<div class="widget sw_top">
							<span class="stick-sr"> <i class="fa fa-search"
								aria-hidden="true"></i>
							</span>

							<div class="top-form top-search">
								<div class="topsearch-entry">
									<form role="search" method="get" class="form-search searchform"
										action="">
										<label class="hide"></label>
										<input type="text" value="" name="s" class="search-query"
											placeholder="Keyword here..." />
										<button type="submit" class="button-search-pro form-button">搜索</button>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</header>

		<div class="listings-title">
			<div class="container">
				<div class="wrap-title">
					<h1>Turkey Qui</h1>
					<div class="bread">
						<div class="breadcrumbs theme-clearfix">
							<div class="container">
								<ul class="breadcrumb">
									<li><a href="common/toShop">首页</a><span class="go-page"></span></li>
									<li><a href="group_product.html">Group Product</a><span
										class="go-page"></span></li>
									<li class="active"><span>Turkey Qui</span></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="row">
				<div id="contents-detail"
					class="content col-lg-12 col-md-12 col-sm-12" role="main">
					<div id="container">
						<div id="content" role="main">
							<div class="single-product clearfix">
								<div id="product-01"
									class="product type-product status-publish has-post-thumbnail product_cat-accessories product_brand-global-voices first outofstock featured shipping-taxable purchasable product-type-simple">
									<div class="product_detail row">
										<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 clear_xs">
											<div class="slider_img_productd">
												<!-- woocommerce_show_product_resource/front_bootstrap/images -->
												<div id="product_img_01"
													class="product-resource/front_bootstrap/images loading"
													data-rtl="false">
													<div
														class="product-resource/front_bootstrap/images-container clearfix thumbnail-bottom">
														<!-- Image Slider -->
														<div class="slider product-responsive">
															<div class="item-img-slider">
																<div class="resource/front_bootstrap/images">
																	<a href="resource/front_bootstrap/images/1903/49.jpg "
																		data-rel="prettyPhoto[product-gallery]" class="zoom">
																		<img width="600" height="600"
																		src="resource/front_bootstrap/images/1903/49.jpg"
																		class="attachment-shop_single size-shop_single" alt=""
																		srcset="resource/front_bootstrap/images/1903/49.jpg 600w, resource/front_bootstrap/images/1903/49-150x150.jpg 150w, resource/front_bootstrap/images/1903/49-300x300.jpg 300w, resource/front_bootstrap/images/1903/49-180x180.jpg 180w"
																		sizes="(max-width: 600px) 100vw, 600px">
																	</a>
																</div>
															</div>

															<div class="item-img-slider">
																<div class="resource/front_bootstrap/images">
																	<a href="resource/front_bootstrap/images/1903/48.jpg "
																		data-rel="prettyPhoto[product-gallery]" class="zoom">
																		<img width="600" height="600"
																		src="resource/front_bootstrap/images/1903/48.jpg"
																		class="attachment-shop_single size-shop_single" alt=""
																		srcset="resource/front_bootstrap/images/1903/48.jpg 600w, resource/front_bootstrap/images/1903/48-150x150.jpg 150w, resource/front_bootstrap/images/1903/48-300x300.jpg 300w, resource/front_bootstrap/images/1903/48-180x180.jpg 180w"
																		sizes="(max-width: 600px) 100vw, 600px">
																	</a>
																</div>
															</div>

															<div class="item-img-slider">
																<div class="resource/front_bootstrap/images">
																	<a href="resource/front_bootstrap/images/1903/47.jpg "
																		data-rel="prettyPhoto[product-gallery]" class="zoom">
																		<img width="600" height="600"
																		src="resource/front_bootstrap/images/1903/47.jpg"
																		class="attachment-shop_single size-shop_single" alt=""
																		srcset="resource/front_bootstrap/images/1903/47.jpg 600w, resource/front_bootstrap/images/1903/47-150x150.jpg 150w, resource/front_bootstrap/images/1903/47-300x300.jpg 300w, resource/front_bootstrap/images/1903/47-180x180.jpg 180w"
																		sizes="(max-width: 600px) 100vw, 600px">
																	</a>
																</div>
															</div>

															<div class="item-img-slider">
																<div class="resource/front_bootstrap/images">
																	<a href="resource/front_bootstrap/images/1903/46.jpg "
																		data-rel="prettyPhoto[product-gallery]" class="zoom">
																		<img width="600" height="600"
																		src="resource/front_bootstrap/images/1903/46.jpg"
																		class="attachment-shop_single size-shop_single" alt=""
																		srcset="resource/front_bootstrap/images/1903/46.jpg 600w, resource/front_bootstrap/images/1903/46-150x150.jpg 150w, resource/front_bootstrap/images/1903/46-300x300.jpg 300w, resource/front_bootstrap/images/1903/46-180x180.jpg 180w"
																		sizes="(max-width: 600px) 100vw, 600px">
																	</a>
																</div>
															</div>

															<div class="item-img-slider">
																<div class="resource/front_bootstrap/images">
																	<a href="resource/front_bootstrap/images/1903/49.jpg "
																		data-rel="prettyPhoto[product-gallery]" class="zoom">
																		<img width="600" height="600"
																		src="resource/front_bootstrap/images/1903/49.jpg"
																		class="attachment-shop_single size-shop_single" alt=""
																		srcset="resource/front_bootstrap/images/1903/49.jpg 600w, resource/front_bootstrap/images/1903/49-150x150.jpg 150w, resource/front_bootstrap/images/1903/49-300x300.jpg 300w, resource/front_bootstrap/images/1903/49-180x180.jpg 180w"
																		sizes="(max-width: 600px) 100vw, 600px">
																	</a>
																</div>
															</div>

															<div class="item-img-slider">
																<div class="resource/front_bootstrap/images">
																	<a href="resource/front_bootstrap/images/1903/43.jpg "
																		data-rel="prettyPhoto[product-gallery]" class="zoom">
																		<img width="600" height="600"
																		src="resource/front_bootstrap/images/1903/43.jpg"
																		class="attachment-shop_single size-shop_single" alt=""
																		srcset="resource/front_bootstrap/images/1903/43.jpg 600w, resource/front_bootstrap/images/1903/43-150x150.jpg 150w, resource/front_bootstrap/images/1903/43-300x300.jpg 300w, resource/front_bootstrap/images/1903/43-180x180.jpg 180w"
																		sizes="(max-width: 600px) 100vw, 600px">
																	</a>
																</div>
															</div>
														</div>

														<!-- Thumbnail Slider -->
														<div class="slider product-responsive-thumbnail"
															id="product_thumbnail_247">
															<div class="item-thumbnail-product">
																<div class="thumbnail-wrapper">
																	<img width="180" height="180"
																		src="resource/front_bootstrap/images/1903/49-180x180.jpg"
																		class="attachment-shop_thumbnail size-shop_thumbnail"
																		alt=""
																		srcset="resource/front_bootstrap/images/1903/49-180x180.jpg 180w, resource/front_bootstrap/images/1903/49-150x150.jpg 150w, resource/front_bootstrap/images/1903/49-300x300.jpg 300w, resource/front_bootstrap/images/1903/49.jpg 600w"
																		sizes="(max-width: 180px) 100vw, 180px">
																</div>
															</div>

															<div class="item-thumbnail-product">
																<div class="thumbnail-wrapper">
																	<img width="180" height="180"
																		src="resource/front_bootstrap/images/1903/48-180x180.jpg"
																		class="attachment-shop_thumbnail size-shop_thumbnail"
																		alt=""
																		srcset="resource/front_bootstrap/images/1903/48-180x180.jpg 180w, resource/front_bootstrap/images/1903/48-150x150.jpg 150w, resource/front_bootstrap/images/1903/48-300x300.jpg 300w, resource/front_bootstrap/images/1903/48.jpg 600w"
																		sizes="(max-width: 180px) 100vw, 180px">
																</div>
															</div>

															<div class="item-thumbnail-product">
																<div class="thumbnail-wrapper">
																	<img width="180" height="180"
																		src="resource/front_bootstrap/images/1903/47-180x180.jpg"
																		class="attachment-shop_thumbnail size-shop_thumbnail"
																		alt=""
																		srcset="resource/front_bootstrap/images/1903/47-180x180.jpg 180w, resource/front_bootstrap/images/1903/47-150x150.jpg 150w, resource/front_bootstrap/images/1903/47-300x300.jpg 300w, resource/front_bootstrap/images/1903/47.jpg 600w"
																		sizes="(max-width: 180px) 100vw, 180px">
																</div>
															</div>

															<div class="item-thumbnail-product">
																<div class="thumbnail-wrapper">
																	<img width="180" height="180"
																		src="resource/front_bootstrap/images/1903/46-180x180.jpg"
																		class="attachment-shop_thumbnail size-shop_thumbnail"
																		alt=""
																		srcset="resource/front_bootstrap/images/1903/46-180x180.jpg 180w, resource/front_bootstrap/images/1903/46-150x150.jpg 150w, resource/front_bootstrap/images/1903/46-300x300.jpg 300w, resource/front_bootstrap/images/1903/46.jpg 600w"
																		sizes="(max-width: 180px) 100vw, 180px">
																</div>
															</div>

															<div class="item-thumbnail-product">
																<div class="thumbnail-wrapper">
																	<img width="180" height="180"
																		src="resource/front_bootstrap/images/1903/49-180x180.jpg"
																		class="attachment-shop_thumbnail size-shop_thumbnail"
																		alt=""
																		srcset="resource/front_bootstrap/images/1903/49-180x180.jpg 180w, resource/front_bootstrap/images/1903/49-150x150.jpg 150w, resource/front_bootstrap/images/1903/49-300x300.jpg 300w, resource/front_bootstrap/images/1903/49.jpg 600w"
																		sizes="(max-width: 180px) 100vw, 180px">
																</div>
															</div>

															<div class="item-thumbnail-product">
																<div class="thumbnail-wrapper">
																	<img width="180" height="180"
																		src="resource/front_bootstrap/images/1903/43-180x180.jpg"
																		class="attachment-shop_thumbnail size-shop_thumbnail"
																		alt=""
																		srcset="resource/front_bootstrap/images/1903/43-180x180.jpg 180w, resource/front_bootstrap/images/1903/43-150x150.jpg 150w, resource/front_bootstrap/images/1903/43-300x300.jpg 300w, resource/front_bootstrap/images/1903/43.jpg 600w"
																		sizes="(max-width: 180px) 100vw, 180px">
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>

										<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 clear_xs">
											<div class="content_product_detail">
												<h1 class="product_title entry-title">Turkey Qui</h1>

												<div class="reviews-content">
													<div class="star"></div>
													<a href="#reviews" class="woocommerce-review-link"
														rel="nofollow"><span class="count">0</span> Review(s)</a>
												</div>

												<div>
													<p class="price">
														<span class="woocommerce-Price-amount amount"><span
															class="woocommerce-Price-currencySymbol">$</span>300.00</span>
													</p>
												</div>

												<div class="product-info clearfix">
													<div class="product-stock pull-left out-stock">
														<span>Out stock</span>
													</div>
												</div>

												<div class="description" itemprop="description">
													<p>Proin nunc nibh, adipiscing eu nisi id, ultrices
														suscipit augue. Sed rhoncus hendrerit lacus, et venenatis
														felis. Donec ut fringilla magna ultrices suscipit augue.
														Proin nunc nibh, adipiscing eu nisi id, ultrices suscipit
														augue. Sed rhoncus hendrerit lacus, et venenatis felis.
														Donec ut fringilla magna ultrices suscipit augue.</p>
												</div>

												<p class="stock out-of-stock">Out of stock</p>

												<div class="social-share">
													<div class="title-share">分享</div>
													<div class="wrap-content">
														<a href="http://www.facebook.com/"
															onclick="javascript:window.open(this.href,'', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;"><i
															class="fa fa-facebook"></i></a> <a href="http://twitter.com/"
															onclick="javascript:window.open(this.href,'', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;"><i
															class="fa fa-twitter"></i></a> <a
															href="https://plus.google.com/"
															onclick="javascript:window.open(this.href,'', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;"><i
															class="fa fa-google-plus"></i></a> <a href="#"><i
															class="fa fa-dribbble"></i></a> <a href="#"><i
															class="fa fa-instagram"></i></a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="tabs clearfix">
									<div class="tabbable">
										<ul class="nav nav-tabs">
											<li class="description_tab active"><a
												href="#tab-description" data-toggle="tab">商品描述</a></li>

											<li class="reviews_tab "><a href="#tab-reviews"
												data-toggle="tab">评论 (0)</a></li>
										</ul>

										<div class="clear"></div>

										<div class=" tab-content">
											<div class="tab-pane active" id="tab-description">
												<h2>Product Description</h2>
												<p>Proident adipisicing laborum beef ribs tri-tip dolore
													meatball tempor rump flank prosciutto elit do. Duis
													tenderloin culpa excepteur. Fugiat irure est cupim dolor,
													ut nulla id andouille chicken spare ribs eiusmod brisket
													biltong. Eiusmod minim tail cupim labore ad filet mignon,
													andouille esse enim. Sausage salami dolor ex adipisicing
													consequat. Ground round nostrud ut fatback voluptate
													consequat in minim drumstick culpa dolore. Ea beef
													prosciutto in sirloin fatback enim velit consectetur in
													pork belly pancetta culpa shank.</p>
												<p>Shank quis in duis, id officia nulla. Pancetta sunt
													filet mignon porchetta doner turkey occaecat. Meatball
													corned beef elit ut fugiat. Hamburger biltong tail beef in
													cupim proident turducken picanha. Sausage chicken
													incididunt ad occaecat porchetta pancetta corned beef ham
													hock laborum nisi ullamco pork loin kielbasa aliqua.</p>
												<p>In jerky minim chicken duis ground round nostrud pork
													belly occaecat pastrami commodo adipisicing tongue doner
													short loin. Officia est do, filet mignon shank pork loin
													anim esse quis kevin corned beef enim. Magna sint sirloin
													ham hock cupidatat laboris. Boudin spare ribs kevin
													meatloaf id short loin swine flank brisket aute.
													Reprehenderit turkey qui, boudin swine voluptate ipsum
													fugiat.</p>
												<p>Salami in ball tip pig eiusmod occaecat pork chop,
													consequat excepteur incididunt. Ground round picanha ut
													boudin exercitation jerky meatball strip steak ipsum labore
													spare ribs turducken ribeye ut aliquip. Id ipsum esse nisi
													ball tip chuck adipisicing sint culpa t-bone brisket
													bresaola mollit. Enim eu kevin, tail in nisi nulla sirloin
													adipisicing veniam dolore.</p>
											</div>

											<div class="tab-pane " id="tab-reviews">
												<div id="reviews">
													<div id="comments">
														<h2>Reviews</h2>
														<p class="woocommerce-noreviews">There are no reviews
															yet.</p>
													</div>

													<div id="review_form_wrapper">
														<div id="review_form">
															<div id="respond" class="comment-respond">
																<h3 id="reply-title" class="comment-reply-title">
																	Be the first to review "turkey qui" <small><a
																		rel="nofollow" id="cancel-comment-reply-link" href="#"
																		style="display:none;">Cancel reply</a></small>
																</h3>

																<form action="" method="post" id="commentform"
																	class="comment-form">
																	<p class="comment-form-rating">
																		<label for="rating">Your Rating</label> <select
																			name="rating" id="rating">
																			<option value="">Rate ...</option>
																			<option value="5">Perfect</option>
																			<option value="4">Good</option>
																			<option value="3">Average</option>
																			<option value="2">Not that bad</option>
																			<option value="1">Very Poor</option>
																		</select>
																	</p>

																	<p class="comment-form-comment">
																		<label for="comment">Your Review</label>
																		<textarea id="comment" name="comment" cols="45"
																			rows="8" aria-required="true"></textarea>
																	</p>

																	<p class="form-submit">
																		<input name="submit" type="submit" id="submit"
																			class="submit" value="Submit">
																	</p>
																</form>
															</div>
														</div>
													</div>

													<div class="clear"></div>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="bottom-single-product theme-clearfix">
									<div
										class="widget-1 widget-first widget sw_related_upsell_widget-2 sw_related_upsell_widget"
										data-scroll-reveal="enter bottom move 20px wait 0.2s">
										<div class="widget-inner">
											<div id="slider_sw_related_upsell_widget-2"
												class="sw-woo-container-slider related-products responsive-slider clearfix loading"
												data-lg="4" data-md="3" data-sm="2" data-xs="2"
												data-mobile="1" data-speed="1000" data-scroll="1"
												data-interval="5000" data-autoplay="false">
												<div class="resp-slider-container">
													<div class="box-slider-title">
														<h2>
															<span>Related Products</span>
														</h2>
													</div>

													<div class="slider responsive">
														<div class="item ">
															<div class="item-wrap">
																<div class="item-detail">
																	<div class="item-img products-thumb">
																		<a href="simple_product.html">
																			<div class="product-thumb-hover">
																				<img width="300" height="300"
																					src="resource/front_bootstrap/images/1903/49-300x300.jpg"
																					class="attachment-shop_catalog size-shop_catalog wp-post-image"
																					alt=""
																					srcset="resource/front_bootstrap/images/1903/49-300x300.jpg 300w, resource/front_bootstrap/images/1903/49-150x150.jpg 150w, resource/front_bootstrap/images/1903/49-180x180.jpg 180w, resource/front_bootstrap/images/1903/49.jpg 600w"
																					sizes="(max-width: 300px) 100vw, 300px">
																			</div>
																		</a>

																		<!-- add to cart, wishlist, compare -->
																		<div class="item-bottom clearfix">
																			<a rel="nofollow" href="#"
																				class="button product_type_simple add_to_cart_button ajax_add_to_cart"
																				title="Add to Cart">Add to cart</a> <a
																				href="javascript:void(0)" class="compare button"
																				rel="nofollow" title="Add to Compare">Compare</a>

																			<div
																				class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
																				<div class="yith-wcwl-add-button show"
																					style="display:block">
																					<a href="wishlist.html" rel="nofollow"
																						class="add_to_wishlist">Add to Wishlist</a> <img
																						src="resource/front_bootstrap/images/wpspin_light.gif"
																						class="ajax-loading" alt="loading" width="16"
																						height="16" style="visibility:hidden" />
																				</div>

																				<div class="yith-wcwl-wishlistaddedbrowse hide"
																					style="display:none;">
																					<span class="feedback">Product added!</span> <a
																						href="#" rel="nofollow">Browse Wishlist</a>
																				</div>

																				<div class="yith-wcwl-wishlistexistsbrowse hide"
																					style="display:none">
																					<span class="feedback">The product is
																						already in the wishlist!</span> <a href="#"
																						rel="nofollow">Browse Wishlist</a>
																				</div>

																				<div style="clear:both"></div>
																				<div class="yith-wcwl-wishlistaddresponse"></div>
																			</div>

																			<div class="clear"></div>
																			<a href="ajax/fancybox/example.html"
																				data-fancybox-type="ajax"
																				class="sm_quickview_handler-list fancybox fancybox.ajax">Quick
																				View </a>
																		</div>
																	</div>

																	<div class="item-content">
																		<!-- rating  -->
																		<div class="reviews-content">
																			<div class="star"></div>
																			<div class="item-number-rating">0 Review(s)</div>
																		</div>
																		<!-- end rating  -->

																		<h4>
																			<a href="simple_product.html" title="turkey qui">Turkey
																				Qui</a>
																		</h4>

																		<!-- price -->
																		<div class="item-price">
																			<span> <span
																				class="woocommerce-Price-amount amount"> <span
																					class="woocommerce-Price-currencySymbol">$</span>300.00
																			</span>
																			</span>
																		</div>
																	</div>
																</div>
															</div>
														</div>

														<div class="item ">
															<div class="item-wrap">
																<div class="item-detail">
																	<div class="item-img products-thumb">
																		<span class="onsale">Sale!</span> <a
																			href="simple_product.html">
																			<div class="product-thumb-hover">
																				<img width="300" height="300"
																					src="resource/front_bootstrap/images/1903/39-300x300.jpg"
																					class="attachment-shop_catalog size-shop_catalog wp-post-image"
																					alt=""
																					srcset="resource/front_bootstrap/images/1903/39-300x300.jpg 300w, resource/front_bootstrap/images/1903/39-150x150.jpg 150w, resource/front_bootstrap/images/1903/39-180x180.jpg 180w, resource/front_bootstrap/images/1903/39.jpg 600w"
																					sizes="(max-width: 300px) 100vw, 300px">
																			</div>
																		</a>

																		<!-- add to cart, wishlist, compare -->
																		<div class="item-bottom clearfix">
																			<a rel="nofollow" href="#"
																				class="button product_type_simple add_to_cart_button ajax_add_to_cart"
																				title="Add to Cart">Add to cart</a> <a
																				href="javascript:void(0)" class="compare button"
																				rel="nofollow" title="Add to Compare">Compare</a>

																			<div
																				class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
																				<div class="yith-wcwl-add-button show"
																					style="display:block">
																					<a href="wishlist.html" rel="nofollow"
																						class="add_to_wishlist">Add to Wishlist</a> <img
																						src="resource/front_bootstrap/images/wpspin_light.gif"
																						class="ajax-loading" alt="loading" width="16"
																						height="16" style="visibility:hidden" />
																				</div>

																				<div class="yith-wcwl-wishlistaddedbrowse hide"
																					style="display:none;">
																					<span class="feedback">Product added!</span> <a
																						href="#" rel="nofollow">Browse Wishlist</a>
																				</div>

																				<div class="yith-wcwl-wishlistexistsbrowse hide"
																					style="display:none">
																					<span class="feedback">The product is
																						already in the wishlist!</span> <a href="#"
																						rel="nofollow">Browse Wishlist</a>
																				</div>

																				<div style="clear:both"></div>
																				<div class="yith-wcwl-wishlistaddresponse"></div>
																			</div>

																			<div class="clear"></div>
																			<a href="ajax/fancybox/example.html"
																				data-fancybox-type="ajax"
																				class="sm_quickview_handler-list fancybox fancybox.ajax">Quick
																				View </a>
																		</div>
																	</div>

																	<div class="item-content">
																		<!-- rating  -->
																		<div class="reviews-content">
																			<div class="star"></div>
																			<div class="item-number-rating">0 Review(s)</div>
																		</div>
																		<!-- end rating  -->

																		<h4>
																			<a href="simple_product.html"
																				title="iPad Mini 2 Retina">iPad Mini 2 Retina</a>
																		</h4>

																		<!-- price -->
																		<div class="item-price">
																			<span> <del>
																					<span class="woocommerce-Price-amount amount">
																						<span class="woocommerce-Price-currencySymbol">$</span>300.00
																					</span>
																				</del> <ins>
																					<span class="woocommerce-Price-amount amount">
																						<span class="woocommerce-Price-currencySymbol">$</span>290.00
																					</span>
																				</ins>
																			</span>
																		</div>
																	</div>
																</div>
															</div>
														</div>

														<div class="item ">
															<div class="item-wrap">
																<div class="item-detail">
																	<div class="item-img products-thumb">
																		<a href="simple_product.html">
																			<div class="product-thumb-hover">
																				<img width="300" height="300"
																					src="resource/front_bootstrap/images/1903/22-300x300.jpg"
																					class="attachment-shop_catalog size-shop_catalog wp-post-image"
																					alt=""
																					srcset="resource/front_bootstrap/images/1903/22-300x300.jpg 300w, resource/front_bootstrap/images/1903/22-150x150.jpg 150w, resource/front_bootstrap/images/1903/22-180x180.jpg 180w, resource/front_bootstrap/images/1903/22.jpg 600w"
																					sizes="(max-width: 300px) 100vw, 300px">
																			</div>
																		</a>

																		<!-- add to cart, wishlist, compare -->
																		<div class="item-bottom clearfix">
																			<a rel="nofollow" href="#"
																				class="button product_type_simple add_to_cart_button ajax_add_to_cart"
																				title="Add to Cart">Add to cart</a> <a
																				href="javascript:void(0)" class="compare button"
																				rel="nofollow" title="Add to Compare">Compare</a>

																			<div
																				class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
																				<div class="yith-wcwl-add-button show"
																					style="display:block">
																					<a href="wishlist.html" rel="nofollow"
																						class="add_to_wishlist">Add to Wishlist</a> <img
																						src="resource/front_bootstrap/images/wpspin_light.gif"
																						class="ajax-loading" alt="loading" width="16"
																						height="16" style="visibility:hidden" />
																				</div>

																				<div class="yith-wcwl-wishlistaddedbrowse hide"
																					style="display:none;">
																					<span class="feedback">Product added!</span> <a
																						href="#" rel="nofollow">Browse Wishlist</a>
																				</div>

																				<div class="yith-wcwl-wishlistexistsbrowse hide"
																					style="display:none">
																					<span class="feedback">The product is
																						already in the wishlist!</span> <a href="#"
																						rel="nofollow">Browse Wishlist</a>
																				</div>

																				<div style="clear:both"></div>
																				<div class="yith-wcwl-wishlistaddresponse"></div>
																			</div>

																			<div class="clear"></div>
																			<a href="ajax/fancybox/example.html"
																				data-fancybox-type="ajax"
																				class="sm_quickview_handler-list fancybox fancybox.ajax">Quick
																				View </a>
																		</div>
																	</div>

																	<div class="item-content">
																		<!-- rating  -->
																		<div class="reviews-content">
																			<div class="star"></div>
																			<div class="item-number-rating">0 Review(s)</div>
																		</div>
																		<!-- end rating  -->

																		<h4>
																			<a href="simple_product.html" title="Philips HR2195">Philips
																				HR2195</a>
																		</h4>

																		<!-- price -->
																		<div class="item-price">
																			<span> <span
																				class="woocommerce-Price-amount amount"> <span
																					class="woocommerce-Price-currencySymbol">$</span>200.00
																			</span>
																			</span>
																		</div>
																	</div>
																</div>
															</div>
														</div>

														<div class="item ">
															<div class="item-wrap">
																<div class="item-detail">
																	<div class="item-img products-thumb">
																		<a href="simple_product.html">
																			<div class="product-thumb-hover">
																				<img width="300" height="300"
																					src="resource/front_bootstrap/images/1903/14-300x300.jpg"
																					class="attachment-shop_catalog size-shop_catalog wp-post-image"
																					alt=""
																					srcset="resource/front_bootstrap/images/1903/14-300x300.jpg 300w, resource/front_bootstrap/images/1903/14-150x150.jpg 150w, resource/front_bootstrap/images/1903/14-180x180.jpg 180w, resource/front_bootstrap/images/1903/14.jpg 600w"
																					sizes="(max-width: 300px) 100vw, 300px">
																			</div>
																		</a>

																		<!-- add to cart, wishlist, compare -->
																		<div class="item-bottom clearfix">
																			<a rel="nofollow" href="#"
																				class="button product_type_simple add_to_cart_button ajax_add_to_cart"
																				title="Add to Cart">Add to cart</a> <a
																				href="javascript:void(0)" class="compare button"
																				rel="nofollow" title="Add to Compare">Compare</a>

																			<div
																				class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
																				<div class="yith-wcwl-add-button show"
																					style="display:block">
																					<a href="wishlist.html" rel="nofollow"
																						class="add_to_wishlist">Add to Wishlist</a> <img
																						src="resource/front_bootstrap/images/wpspin_light.gif"
																						class="ajax-loading" alt="loading" width="16"
																						height="16" style="visibility:hidden" />
																				</div>

																				<div class="yith-wcwl-wishlistaddedbrowse hide"
																					style="display:none;">
																					<span class="feedback">Product added!</span> <a
																						href="#" rel="nofollow">Browse Wishlist</a>
																				</div>

																				<div class="yith-wcwl-wishlistexistsbrowse hide"
																					style="display:none">
																					<span class="feedback">The product is
																						already in the wishlist!</span> <a href="#"
																						rel="nofollow">Browse Wishlist</a>
																				</div>

																				<div style="clear:both"></div>
																				<div class="yith-wcwl-wishlistaddresponse"></div>
																			</div>

																			<div class="clear"></div>
																			<a href="ajax/fancybox/example.html"
																				data-fancybox-type="ajax"
																				class="sm_quickview_handler-list fancybox fancybox.ajax">Quick
																				View </a>
																		</div>
																	</div>

																	<div class="item-content">
																		<!-- rating  -->
																		<div class="reviews-content">
																			<div class="star"></div>
																			<div class="item-number-rating">0 Review(s)</div>
																		</div>
																		<!-- end rating  -->

																		<h4>
																			<a href="simple_product.html" title="sony xperia s">sony
																				xperia s</a>
																		</h4>

																		<!-- price -->
																		<div class="item-price">
																			<span> <span
																				class="woocommerce-Price-amount amount"> <span
																					class="woocommerce-Price-currencySymbol">$</span>300.00
																			</span>
																			</span>
																		</div>
																	</div>
																</div>
															</div>
														</div>

														<div class="item ">
															<div class="item-wrap">
																<div class="item-detail">
																	<div class="item-img products-thumb">
																		<a href="simple_product.html">
																			<div class="product-thumb-hover">
																				<img width="300" height="300"
																					src="resource/front_bootstrap/images/1903/58-300x300.jpg"
																					class="attachment-shop_catalog size-shop_catalog wp-post-image"
																					alt=""
																					srcset="resource/front_bootstrap/images/1903/58-300x300.jpg 300w, resource/front_bootstrap/images/1903/58-150x150.jpg 150w, resource/front_bootstrap/images/1903/58-180x180.jpg 180w, resource/front_bootstrap/images/1903/58.jpg 600w"
																					sizes="(max-width: 300px) 100vw, 300px">
																			</div>
																		</a>

																		<!-- add to cart, wishlist, compare -->
																		<div class="item-bottom clearfix">
																			<a rel="nofollow" href="#"
																				class="button product_type_simple add_to_cart_button ajax_add_to_cart"
																				title="Add to Cart">Add to cart</a> <a
																				href="javascript:void(0)" class="compare button"
																				rel="nofollow" title="Add to Compare">Compare</a>

																			<div
																				class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
																				<div class="yith-wcwl-add-button show"
																					style="display:block">
																					<a href="wishlist.html" rel="nofollow"
																						class="add_to_wishlist">Add to Wishlist</a> <img
																						src="resource/front_bootstrap/images/wpspin_light.gif"
																						class="ajax-loading" alt="loading" width="16"
																						height="16" style="visibility:hidden" />
																				</div>

																				<div class="yith-wcwl-wishlistaddedbrowse hide"
																					style="display:none;">
																					<span class="feedback">Product added!</span> <a
																						href="#" rel="nofollow">Browse Wishlist</a>
																				</div>

																				<div class="yith-wcwl-wishlistexistsbrowse hide"
																					style="display:none">
																					<span class="feedback">The product is
																						already in the wishlist!</span> <a href="#"
																						rel="nofollow">Browse Wishlist</a>
																				</div>

																				<div style="clear:both"></div>
																				<div class="yith-wcwl-wishlistaddresponse"></div>
																			</div>

																			<div class="clear"></div>
																			<a href="ajax/fancybox/example.html"
																				data-fancybox-type="ajax"
																				class="sm_quickview_handler-list fancybox fancybox.ajax">Quick
																				View </a>
																		</div>
																	</div>

																	<div class="item-content">
																		<!-- rating  -->
																		<div class="reviews-content">
																			<div class="star"></div>
																			<div class="item-number-rating">0 Review(s)</div>
																		</div>
																		<!-- end rating  -->

																		<h4>
																			<a href="simple_product.html" title="nikon d7000">nikon
																				d7000</a>
																		</h4>

																		<!-- price -->
																		<div class="item-price">
																			<span> <span
																				class="woocommerce-Price-amount amount"> <span
																					class="woocommerce-Price-currencySymbol">$</span>300.00
																			</span>
																			</span>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>

									<div
										class="widget-2 widget-last widget sw_related_upsell_widget-3 sw_related_upsell_widget"
										data-scroll-reveal="enter bottom move 20px wait 0.2s">
										<div class="widget-inner"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<footer id="footer" class="footer default theme-clearfix"> <!-- Content footer -->
		<div class="container">
			<div class="vc_row wpb_row vc_row-fluid">
				<div class="wpb_column vc_column_container vc_col-sm-12">
					<div class="vc_column-inner ">
						<div class="wpb_wrapper">
							<div id="sw_testimonial01"
								class="testimonial-slider client-wrapper-b carousel slide "
								data-interval="0">
								<div class="carousel-cl nav-custom">
									<a class="prev-test fa fa-angle-left" href="#sw_testimonial01"
										role="button" data-slide="prev"><span></span></a> <a
										class="next-test fa fa-angle-right" href="#sw_testimonial01"
										role="button" data-slide="next"><span></span></a>
								</div>

								<div class="carousel-inner">
									<div class="item active">
										<div class="item-inner">
											<div class="image-client pull-left">
												<a href="#" title=""> <img width="127" height="127"
													src="resource/front_bootstrap/images/1903/tm3.jpg"
													class="attachment-thumbnail size-thumbnail wp-post-image"
													alt="" />
												</a>
											</div>

											<div class="client-say-info">
												<div class="client-comment">In auctor ex id urna
													faucibus porttitor. Lorem ipsum dolor sit amet, consectetur
													adipiscing elit.�</div>

												<div class="name-client">
													<h2>
														<a href="#" title="">Jerry</a>
													</h2>
													<p>Web Developer</p>
												</div>
											</div>
										</div>

										<div class="item-inner">
											<div class="image-client pull-left">
												<a href="#" title=""> <img width="127" height="127"
													src="resource/front_bootstrap/images/1903/tm1.png"
													class="attachment-thumbnail size-thumbnail wp-post-image"
													alt="" />
												</a>
											</div>

											<div class="client-say-info">
												<div class="client-comment">In auctor ex id urna
													faucibus porttitor. Lorem ipsum dolor sit amet, consectetur
													adipiscing elit.�</div>

												<div class="name-client">
													<h2>
														<a href="#" title="">David Gand</a>
													</h2>

													<p>Designer</p>
												</div>
											</div>
										</div>
									</div>

									<div class="item ">
										<div class="item-inner">
											<div class="image-client pull-left">
												<a href="#" title=""> <img width="127" height="127"
													src="resource/front_bootstrap/images/1903/tm2.png"
													class="attachment-thumbnail size-thumbnail wp-post-image"
													alt="" />
												</a>
											</div>

											<div class="client-say-info">
												<div class="client-comment">In auctor ex id urna
													faucibus porttitor. Lorem ipsum dolor sit amet, consectetur
													adipiscing elit.�</div>

												<div class="name-client">
													<h2>
														<a href="#" title="">Taylor Hill</a>
													</h2>

													<p>Developer</p>
												</div>
											</div>
										</div>

										<div class="item-inner">
											<div class="image-client pull-left">
												<a href="#" title=""> <img width="127" height="127"
													src="resource/front_bootstrap/images/1903/tm3.jpg"
													class="attachment-thumbnail size-thumbnail wp-post-image"
													alt="" />
												</a>
											</div>

											<div class="client-say-info">
												<div class="client-comment">In auctor ex id urna
													faucibus porttitor. Lorem ipsum dolor sit amet, consectetur
													adipiscing elit.�</div>

												<div class="name-client">
													<h2>
														<a href="#" title="">JOHN DOE</a>
													</h2>

													<p>Designer</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div data-vc-full-width="true" data-vc-full-width-init="false"
				data-vc-stretch-content="true"
				class="vc_row wpb_row vc_row-fluid footer-style1 vc_row-no-padding">
				<div
					class="container float wpb_column vc_column_container vc_col-sm-12">
					<div class="vc_column-inner ">
						<div class="wpb_wrapper">
							<div class="vc_row wpb_row vc_inner vc_row-fluid footer-top">
								<div class="wpb_column vc_column_container vc_col-sm-8">
									<div class="vc_column-inner ">
										<div class="wpb_wrapper">
											<div class="wpb_text_column wpb_content_element ">
												<div class="wpb_wrapper">
													<div class="wrap-newletter">
														<h3>NEWSLETTER SIGNUP</h3>

														<form id="mc4wp-form-1" class="mc4wp-form mc4wp-form-275"
															method="post" data-id="275" data-name="">
															<div class="mc4wp-form-fields">
																<div class="newsletter-content">
																	<input type="email" class="newsletter-email"
																		name="EMAIL" placeholder="Your email" required="" />
																	<input class="newsletter-submit" type="submit"
																		value="Subscribe" />
																</div>
															</div>
															<div class="mc4wp-response"></div>
														</form>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="wpb_column vc_column_container vc_col-sm-4">
									<div class="vc_column-inner ">
										<div class="wpb_wrapper">
											<div class="wpb_raw_code wpb_content_element wpb_raw_html">
												<div class="wpb_wrapper">
													<div class="shop-social">
														<ul>
															<li><a href="https://www.facebook.com/"> <i
																	class="fa fa-facebook"></i>
															</a></li>

															<li><a href="https://twitter.com/"> <i
																	class="fa fa-twitter"></i>
															</a></li>

															<li><a href="https://plus.google.com/"> <i
																	class="fa fa-google-plus"></i>
															</a></li>

															<li><a href="https://www.linkedin.com/"> <i
																	class="fa fa-linkedin"></i>
															</a></li>

															<li><a href="https://www.pinterest.com/"> <i
																	class="fa fa-pinterest-p"></i>
															</a></li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="vc_row wpb_row vc_inner vc_row-fluid footer-bottom">
								<div
									class="item-res wpb_column vc_column_container vc_col-sm-6 vc_col-lg-4 vc_col-md-4 vc_col-xs-12">
									<div class="vc_column-inner ">
										<div class="wpb_wrapper">
											<div class="wpb_text_column wpb_content_element ">
												<div class="wpb_wrapper">
													<div class="ya-logo">
														<a href="common/toShop"> <img
															src="resource/front_bootstrap/images/icons/logo-footer.png"
															alt="logo" />
														</a>
													</div>
												</div>
											</div>

											<div class="wpb_raw_code wpb_content_element wpb_raw_html">
												<div class="wpb_wrapper">
													<div class="infomation">
														<p>Lorem Ipsum is simply dummy text of the printing
															and typesetting industry. Lorem Ipsum is simply dummy
															text of the printing and typesetting industry.</p>

														<div class="info-support">
															<ul>
																<li>No 1123, Marmora Road, Glasgow, D04 89GR.</li>
																<li>(801) 2345 - 6788 / (801) 2345 - 6789</li>
																<li><a href="mailto:contact@etrostore.com">support@etrostore.com</a></li>
															</ul>
														</div>

														<div class="store">
															<a href="#"> <img
																src="resource/front_bootstrap/images/1903/app-store.png"
																alt="store" title="store" />
															</a> <a href="#"> <img
																src="resource/front_bootstrap/images/1903/google-store.png"
																alt="store" title="store" />
															</a>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div
									class="item-res wpb_column vc_column_container vc_col-sm-6 vc_col-lg-2 vc_col-md-2 vc_col-xs-12">
									<div class="vc_column-inner ">
										<div class="wpb_wrapper">
											<div class="vc_wp_custommenu wpb_content_element">
												<div class="widget widget_nav_menu">
													<h2 class="widgettitle">Support</h2>

													<ul id="menu-support" class="menu">
														<li class="menu-product-support"><a class="item-link"
															href="#"> <span class="menu-title">Product
																	Support</span>
														</a></li>

														<li class="menu-pc-setup-support-services"><a
															class="item-link" href="#"> <span class="menu-title">PC
																	Setup & Support Services</span>
														</a></li>

														<li class="menu-extended-service-plans"><a
															class="item-link" href="#"> <span class="menu-title">Extended
																	Service Plans</span>
														</a></li>

														<li class="menu-community"><a class="item-link"
															href="#"> <span class="menu-title">Community</span>
														</a></li>

														<li class="menu-product-manuals"><a class="item-link"
															href="#"> <span class="menu-title">Product
																	Manuals</span>
														</a></li>

														<li class="menu-product-registration"><a
															class="item-link" href="#"> <span class="menu-title">Product
																	Registration</span>
														</a></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div
									class="item-res wpb_column vc_column_container vc_col-sm-6 vc_col-lg-2 vc_col-md-2 vc_col-xs-12">
									<div class="vc_column-inner ">
										<div class="wpb_wrapper">
											<div class="vc_wp_custommenu wpb_content_element">
												<div class="widget widget_nav_menu">
													<h2 class="widgettitle">Your Links</h2>

													<ul id="menu-your-links" class="menu">
														<li class="menu-my-account"><a class="item-link"
															href="my_account.html"> <span class="menu-title">My
																	Account</span>
														</a></li>

														<li class="menu-order-tracking"><a class="item-link"
															href="#"> <span class="menu-title">Order
																	Tracking</span>
														</a></li>

														<li class="menu-watch-list"><a class="item-link"
															href="#"> <span class="menu-title">Watch List</span>
														</a></li>

														<li class="menu-customer-service"><a
															class="item-link" href="#"> <span class="menu-title">Customer
																	Service</span>
														</a></li>

														<li class="menu-returns-exchanges"><a
															class="item-link" href="#"> <span class="menu-title">Returns
																	/ Exchanges</span>
														</a></li>

														<li class="menu-faqs"><a class="item-link" href="#">
																<span class="menu-title">FAQs</span>
														</a></li>

														<li class="menu-financing"><a class="item-link"
															href="#"> <span class="menu-title">Financing</span>
														</a></li>

														<li class="menu-card"><a class="item-link" href="#">
																<span class="menu-title">Card</span>
														</a></li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div
									class="item-res wpb_column vc_column_container vc_col-sm-6 vc_col-lg-4 vc_col-md-4 vc_col-xs-12">
									<div class="vc_column-inner ">
										<div class="wpb_wrapper">
											<div class="wpb_raw_code wpb_content_element wpb_raw_html">
												<div class="wpb_wrapper">
													<div class="sp-map">
														<div class="title">
															<h2>find a store</h2>
														</div>

														<img src="resource/front_bootstrap/images/1903/map.jpg"
															alt="map" title="map" /> <a href="#" class="link-map">Store
															locator</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="vc_wp_custommenu wpb_content_element wrap-cus">
								<div class="widget widget_nav_menu">
									<ul id="menu-infomation" class="menu">
										<li class="menu-about-us"><a class="item-link"
											href="common/toabout_us"> <span class="menu-title">关于我们</span>
										</a></li>

										<li class="menu-customer-service"><a class="item-link"
											href="#"> <span class="menu-title">Customer
													Service</span>
										</a></li>

										<li class="menu-privacy-policy"><a class="item-link"
											href="#"> <span class="menu-title">Privacy Policy</span>
										</a></li>

										<li class="menu-site-map"><a class="item-link" href="#">
												<span class="menu-title">Site Map</span>
										</a></li>

										<li class="menu-orders-and-returns"><a class="item-link"
											href="#"> <span class="menu-title">Orders and
													Returns</span>
										</a></li>

										<li class="menu-contact-us"><a class="item-link"
											href="common/toContactUs"> <span class="menu-title">联系我们</span>
										</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="vc_row-full-width vc_clearfix"></div>
		</div>

		<div class="footer-copyright style1">
			<div class="container">
				<!-- Copyright text -->
				<div class="copyright-text pull-left">
					<p>
						Etro Store - Premium Multipurpose HTML5/CSS3 Theme Designed by <a
							href="http://www.smartaddons.com/">SmartAddons.Com</a>.
					</p>
				</div>

				<div class="sidebar-copyright pull-right">
					<div class="widget-1 widget-first widget text-4 widget_text">
						<div class="widget-inner">
							<div class="textwidget">
								<div class="payment">
									<a href="#"> <img
										src="resource/front_bootstrap/images/1903/paypal.png"
										alt="payment" title="payment" />
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</footer>
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

	<script type="text/javascript">
		/* <![CDATA[ */
		var woocommerce_price_slider_params = {
			"currency_symbol" : "$",
			"currency_pos" : "left",
			"min_price" : "100",
			"max_price" : "500"
		};
		var wc_single_product_params = {
			"i18n_required_rating_text" : "Please select a rating",
			"review_rating_required" : "yes"
		};
		/* ]]> */
	</script>

	<script type="text/javascript"
		src="resource/front_bootstrap/js/widget.min.js"></script>
	<script type="text/javascript"
		src="resource/front_bootstrap/js/mouse.min.js"></script>
	<script type="text/javascript"
		src="resource/front_bootstrap/js/slider.min.js"></script>
	<script type="text/javascript"
		src="resource/front_bootstrap/js/js_composer/js_composer_front.min.js"></script>

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
		src="resource/front_bootstrap/js/woocommerce/price-slider.min.js"></script>
	<script type="text/javascript"
		src="resource/front_bootstrap/js/woocommerce/single-product.min.js"></script>
	<script type="text/javascript"
		src="resource/front_bootstrap/js/woocommerce/prettyPhoto/jquery.prettyPhoto.init.min.js"></script>
	<script type="text/javascript"
		src="resource/front_bootstrap/js/woocommerce/prettyPhoto/jquery.prettyPhoto.min.js"></script>

	<script type="text/javascript"
		src="resource/front_bootstrap/js/plugins.js"></script>
	<script type="text/javascript"
		src="resource/front_bootstrap/js/megamenu.min.js"></script>
	<script type="text/javascript"
		src="resource/front_bootstrap/js/main.min.js"></script>

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
