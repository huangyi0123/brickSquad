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
<title>老人商城</title>
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
<link rel="stylesheet" href="resource/plugins/laysui/css/layui.css" />
</head>

<body class="page page-id-6 home-style1">

	<div class="body-wrapper theme-clearfix">
		<jsp:include page="shop_header.jsp">
			<jsp:param value="${toShopDetailsShoppingCar}" name="toShopDetailsShoppingCar" />
		</jsp:include>
		<div class="listings-title">

			<div class="container">
				<div class="wrap-title">
					<div class="bread">
						<div class="breadcrumbs theme-clearfix">
							<div class="container"></div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="row">
				<div id="contents" role="main" class="main-page  col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="post-6 page type-page status-publish hentry">
						<div class="entry-content">
							<div class="entry-summary">
								<div data-vc-full-width="true" data-vc-full-width-init="false"
									data-vc-stretch-content="true"
									class="vc_row wpb_row vc_row-fluid bg-wrap vc_custom_1487642348040 vc_row-no-padding">
									<div class="container float wpb_column vc_column_container vc_col-sm-12">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<div class="vc_row wpb_row vc_inner vc_row-fluid vc_custom_1481518924466">
													<div class="wrap-vertical wpb_column vc_column_container vc_col-sm-2">
														<div class="vc_column-inner vc_custom_1481518234612">
															<div class="wpb_wrapper">
																<div class="vc_wp_custommenu wpb_content_element wrap-title">
																	<div class="mega-left-title">
																		<strong>分类</strong>
																	</div>

																	<div class="wrapper_vertical_menu vertical_megamenu">
																		<div class="resmenu-container">
																			<button class="navbar-toggle" type="button" data-toggle="collapse"
																				data-target="#ResMenuvertical_menu">
																				<span class="sr-only">Categories</span>
																				<span class="icon-bar"></span>
																				<span class="icon-bar"></span>
																				<span class="icon-bar"></span>
																			</button>

																			<div id="ResMenuvertical_menu" class="collapse menu-responsive-wrapper">
																				<ul id="menu-vertical-menu" class="etrostore_resmenu">
																					<li class="menu-computers-laptops">
																						<a class="item-link" href="simple_product.html">Computers & Laptops</a>
																					</li>

																					<li class="fix-menu res-dropdown menu-smartphones-tablet">
																						<a class="item-link dropdown-toggle" href="simple_product.html">Smartphones
																							& Tablet</a>
																						<span class="show-dropdown"></span>

																						<ul class="dropdown-resmenu">
																							<li class="res-dropdown menu-electronics">
																								<a class="item-link dropdown-toggle" href="#">Electronics</a>
																								<span class="show-dropdown"></span>

																								<ul class="dropdown-resmenu">
																									<li class="menu-laptop-desktop-accessories">
																										<a href="#">Laptop & Desktop Accessories</a>
																									</li>
																									<li class="menu-storage-external-drives">
																										<a href="#">Storage & External Drives</a>
																									</li>
																									<li class="menu-networking-wireless">
																										<a href="#">Networking & Wireless</a>
																									</li>
																									<li class="menu-motherboards-cpus-psus">
																										<a href="#">Motherboards, CPUs & PSUs</a>
																									</li>
																									<li class="menu-webcams">
																										<a href="#">Webcams</a>
																									</li>
																								</ul>
																							</li>

																							<li class="res-dropdown menu-smartphone">
																								<a class="item-link dropdown-toggle" href="#">Smartphone</a>
																								<span class="show-dropdown"></span>

																								<ul class="dropdown-resmenu">
																									<li class="menu-mobile-phones">
																										<a href="#">Mobile Phones</a>
																									</li>
																									<li class="menu-smart-watches-accessories">
																										<a href="#">Smart Watches & Accessories</a>
																									</li>
																									<li class="menu-mobile-accessories">
																										<a href="#">Mobile Accessories</a>
																									</li>
																									<li class="menu-cases-covers">
																										<a href="#">Cases & Covers</a>
																									</li>
																									<li class="menu-power-banks">
																										<a href="#">Power Banks</a>
																									</li>
																								</ul>
																							</li>

																							<li class="res-dropdown menu-tablets">
																								<a class="item-link dropdown-toggle" href="#">Tablets</a>
																								<span class="show-dropdown"></span>

																								<ul class="dropdown-resmenu">
																									<li class="menu-tablet-accessories">
																										<a href="#">Tablet Accessories</a>
																									</li>
																									<li class="menu-cases-covers">
																										<a href="#">Cases & Covers</a>
																									</li>
																									<li class="menu-power-banks">
																										<a href="#">Power Banks</a>
																									</li>
																									<li class="menu-memory-cards">
																										<a href="#">Memory Cards</a>
																									</li>
																								</ul>
																							</li>

																							<li class="res-dropdown menu-computer">
																								<a class="item-link dropdown-toggle" href="#">Computer</a>
																								<span class="show-dropdown"></span>

																								<ul class="dropdown-resmenu">
																									<li class="menu-macbooks-imacs">
																										<a href="#">Macbooks & iMacs</a>
																									</li>
																									<li class="menu-computers-desktops">
																										<a href="#">Computers & Desktops</a>
																									</li>
																									<li class="menu-printers-scanners-faxs">
																										<a href="#">Printers, Scanners, & Faxs</a>
																									</li>
																									<li class="menu-laptop-desktop-accessories">
																										<a href="#">Laptop & Desktop Accessories</a>
																									</li>
																									<li class="menu-storage-external-drives">
																										<a href="#">Storage & External Drives</a>
																									</li>
																								</ul>
																							</li>

																							<li class="fix-position res-dropdown menu-image">
																								<a class="item-link dropdown-toggle" href="#">Image</a>
																								<span class="show-dropdown"></span>

																								<ul class="dropdown-resmenu">
																									<li class="menu-image-1">
																										<a href="#">Image 1</a>
																									</li>
																									<li class="menu-image-2">
																										<a href="#">Image 2</a>
																									</li>
																									<li class="menu-image-3">
																										<a href="#">Image 3</a>
																									</li>
																								</ul>
																							</li>
																						</ul>
																					</li>

																					<li class="menu-cameras-camcorders">
																						<a class="item-link" href="simple_product.html">Cameras & Camcorders</a>
																					</li>

																					<li class="res-dropdown menu-electronic-component">
																						<a class="item-link dropdown-toggle" href="simple_product.html">Electronic
																							Component</a>
																						<span class="show-dropdown"></span>

																						<ul class="dropdown-resmenu">
																							<li class="res-dropdown menu-electronics">
																								<a class="item-link dropdown-toggle" href="#">Electronics</a>
																								<span class="show-dropdown"></span>

																								<ul class="dropdown-resmenu">
																									<li class="menu-leds">
																										<a href="#">Leds</a>
																									</li>
																									<li class="menu-laptop-desktop-accessories">
																										<a href="#">Laptop & Desktop Accessories</a>
																									</li>
																									<li class="menu-storage-external-drives">
																										<a href="#">Storage & External Drives</a>
																									</li>
																									<li class="menu-networking-wireless">
																										<a href="#">Networking & Wireless</a>
																									</li>
																									<li class="menu-motherboards-cpus-psus">
																										<a href="#">Motherboards, CPUs & PSUs</a>
																									</li>
																									<li class="menu-webcams">
																										<a href="#">Webcams</a>
																									</li>
																									<li class="menu-gaming-mice">
																										<a href="#">Gaming Mice</a>
																									</li>
																								</ul>
																							</li>

																							<li class="res-dropdown menu-smartphone">
																								<a class="item-link dropdown-toggle" href="#">Smartphone</a>
																								<span class="show-dropdown"></span>

																								<ul class="dropdown-resmenu">
																									<li class="menu-smartphones">
																										<a href="#">Smartphones</a>
																									</li>
																									<li class="menu-mobile-phones">
																										<a href="#">Mobile Phones</a>
																									</li>
																									<li class="menu-smart-watches-accessories">
																										<a href="#">Smart Watches & Accessories</a>
																									</li>
																									<li class="menu-mobile-accessories">
																										<a href="#">Mobile Accessories</a>
																									</li>
																									<li class="menu-cases-covers">
																										<a href="#">Cases & Covers</a>
																									</li>
																									<li class="menu-power-banks">
																										<a href="#">Power Banks</a>
																									</li>
																									<li class="menu-memory-cards">
																										<a href="#">Memory Cards</a>
																									</li>
																								</ul>
																							</li>

																							<li class="res-dropdown menu-tablet">
																								<a class="item-link dropdown-toggle" href="#">Tablet</a>
																								<span class="show-dropdown"></span>

																								<ul class="dropdown-resmenu">
																									<li class="menu-tablets">
																										<a href="#">Tablets</a>
																									</li>
																									<li class="menu-tablet-accessories">
																										<a href="#">Tablet Accessories</a>
																									</li>
																									<li class="menu-cases-covers">
																										<a href="#">Cases & Covers</a>
																									</li>
																									<li class="menu-power-banks">
																										<a href="#">Power Banks</a>
																									</li>
																									<li class="menu-memory-cards">
																										<a href="#">Memory Cards</a>
																									</li>
																									<li class="menu-headphonesheadsets">
																										<a href="#">Headphones/Headsets</a>
																									</li>
																								</ul>
																							</li>
																						</ul>
																					</li>

																					<li class="menu-home-appliances">
																						<a class="item-link" href="simple_product.html">Home Appliances</a>
																					</li>

																					<li class="menu-home-furniture">
																						<a class="item-link" href="simple_product.html">Home Furniture</a>
																					</li>

																					<li class="menu-household-goods">
																						<a class="item-link" href="simple_product.html">Household Goods</a>
																					</li>

																					<li class="menu-television">
																						<a class="item-link" href="simple_product.html">Television</a>
																					</li>

																					<li class="menu-accessories-for-tablet">
																						<a class="item-link" href="simple_product.html">Accessories for Tablet</a>
																					</li>

																					<li class="menu-laptops-accessories">
																						<a class="item-link" href="simple_product.html">Laptops & Accessories</a>
																					</li>

																					<li class="menu-blender">
																						<a class="item-link" href="simple_product.html">Blender</a>
																					</li>

																					<li class="menu-vacuum-cleaner">
																						<a class="item-link" href="simple_product.html">Vacuum Cleaner</a>
																					</li>
																				</ul>
																			</div>
																		</div>

																		<ul id="menu-vertical-menu-1"
																			class="nav vertical-megamenu etrostore-mega etrostore-menures">
																			<li class="menu-computers-laptops etrostore-menu-custom level1">
																				<a href="common/tosimple_product?id=shangyi" class="item-link">
																					<span class="have-title">
																						<span class="menu-color" data-color="#cac14a"></span>
																						<span class="menu-title">上衣</span>
																					</span>
																				</a>
																			</li>
																			<li class="menu-cameras-camcorders etrostore-menu-custom level1">
																				<a href="common/tosimple_product?id=kuzi" class="item-link">
																					<span class="have-title">
																						<span class="menu-color" data-color="#fe9901"></span>
																						<span class="menu-title">裤子</span>
																					</span>
																				</a>
																			</li>
																			<li class="menu-home-appliances etrostore-menu-custom level1">
																				<a href="common/tosimple_product?id=xielei" class="item-link">
																					<span class="have-title">
																						<span class="menu-color" data-color="#f034ca"></span>
																						<span class="menu-title">鞋类</span>
																					</span>
																				</a>
																			</li>

																			<li class="menu-home-furniture etrostore-menu-custom level1">
																				<a href="common/tosimple_product?id=maozi" class="item-link">
																					<span class="have-title">
																						<span class="menu-color" data-color="#7745bc"></span>
																						<span class="menu-title">帽子</span>
																					</span>
																				</a>
																			</li>

																			<li class="fix-menu dropdown menu-smartphones-tablet etrostore-mega-menu level1">
																				<a href="common/tosimple_product?id=yiliaoqixie" class="item-link">
																					<span class="have-title">
																						<span class="menu-color" data-color="#42b8d1"></span>
																						<span class="menu-title">医疗器械</span>
																					</span>
																				</a>

																				<ul class="dropdown-menu nav-level1 column-3">
																					<li class="dropdown-submenu column-3 menu-electronics">
																						<a href="#?id=laorenjianfuyongpin">
																							<span class="have-title">
																								<span class="menu-title">老人康复用品</span>
																							</span>
																						</a>

																						<ul class="dropdown-sub nav-level2">
																							<li class="menu-laptop-desktop-accessories">
																								<a href="#?id=laonianrenyangshengbaojianyongpin">
																									<span class="have-title">
																										<span class="menu-title">老年人养身保健用品</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-storage-external-drives">
																								<a href="#?id=laonianrenhuliyongpin">
																									<span class="have-title">
																										<span class="menu-title">老年人护理用品</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-networking-wireless">
																								<a href="#?id=laonianrendaibuyongpin">
																									<span class="have-title">
																										<span class="menu-title">老年人代步用品</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-motherboards-cpus-psus">
																								<a href="#?id=yanglaojigouyongpin">
																									<span class="have-title">
																										<span class="menu-title">养老机构用品</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-webcams">
																								<a href="#?id=laonianrenshitingfuzhuyongpin">
																									<span class="have-title">
																										<span class="menu-title">老年人视听辅助用品</span>
																									</span>
																								</a>
																							</li>
																						</ul>
																					</li>

																					<li class="dropdown-submenu column-3 menu-smartphone">
																						<a href="#?id=laonianrenrichangshenghuoyongpin">
																							<span class="have-title">
																								<span class="menu-title">老年人日常生活用品</span>
																							</span>
																						</a>

																						<ul class="dropdown-sub nav-level2">
																							<li class="menu-mobile-phones">
																								<a href="#?id=laonianrenyuleyongpin">
																									<span class="have-title">
																										<span class="menu-title">老年人娱乐用品</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-smart-watches-accessories">
																								<a href="#?id=laonianrenlvyouzhuangbeiyonhpin">
																									<span class="have-title">
																										<span class="menu-title">老年人旅游装备用品</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-mobile-accessories">
																								<a href="#?id=laonianrenjiankangziceyiqi">
																									<span class="have-title">
																										<span class="menu-title">老年人健康自测仪器</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-cases-covers">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Cases & Covers</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-power-banks">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Power Banks</span>
																									</span>
																								</a>
																							</li>
																						</ul>
																					</li>

																					<li class="dropdown-submenu column-3 menu-tablets">
																						<a href="#">
																							<span class="have-title">
																								<span class="menu-title">Tablets</span>
																							</span>
																						</a>

																						<ul class="dropdown-sub nav-level2">
																							<li class="menu-tablet-accessories">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Tablet Accessories</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-cases-covers">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Cases & Covers</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-power-banks">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Power Banks</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-memory-cards">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Memory Cards</span>
																									</span>
																								</a>
																							</li>
																						</ul>
																					</li>

																					<li class="dropdown-submenu column-3 menu-computer">
																						<a href="#">
																							<span class="have-title">
																								<span class="menu-title">Computer</span>
																							</span>
																						</a>

																						<ul class="dropdown-sub nav-level2">
																							<li class="menu-macbooks-imacs">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Macbooks & iMacs</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-computers-desktops">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Computers & Desktops</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-printers-scanners-faxs">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Printers, Scanners, & Faxs</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-laptop-desktop-accessories">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Laptop & Desktop Accessories</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-storage-external-drives">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Storage & External Drives</span>
																									</span>
																								</a>
																							</li>
																						</ul>
																					</li>

																					<li class="fix-position dropdown-submenu column-3 menu-image">
																						<ul class="dropdown-sub nav-level2">
																							<li class="menu-image-1 etrostore-menu-img">
																								<a href="#">
																									<span class="">
																										<span class="menu-img">
																											<img src="images/1903/menu-bn7.jpg" alt="Menu Image" />
																										</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-image-2 etrostore-menu-img">
																								<a href="#">
																									<span class="">
																										<span class="menu-img">
																											<img src="images/1903/menu-bn8.jpg" alt="Menu Image" />
																										</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-image-3 etrostore-menu-img">
																								<a href="#">
																									<span class="">
																										<span class="menu-img">
																											<img src="images/1903/menu-bn9.jpg" alt="Menu Image" />
																										</span>
																									</span>
																								</a>
																							</li>
																						</ul>
																					</li>
																				</ul>

																			</li>
																			<li class="fix-menu dropdown menu-smartphones-tablet etrostore-mega-menu level1">
																				<a href="common/tosimple_product" class="item-link dropdown-toggle">
																					<span class="have-title">
																						<span class="menu-color" data-color="#efc73a"></span>
																						<span class="menu-title">运动用品</span>
																					</span>
																				</a>

																				<ul class="dropdown-menu nav-level1 column-3">
																					<li class="dropdown-submenu column-3 menu-electronics">
																						<a href="#">
																							<span class="have-title">
																								<span class="menu-title">Electronics</span>
																							</span>
																						</a>

																						<ul class="dropdown-sub nav-level2">
																							<li class="menu-laptop-desktop-accessories">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Laptop & Desktop Accessories</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-storage-external-drives">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Storage & External Drives</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-networking-wireless">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Networking & Wireless</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-motherboards-cpus-psus">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Motherboards, CPUs & PSUs</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-webcams">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Webcams</span>
																									</span>
																								</a>
																							</li>
																						</ul>
																					</li>

																					<li class="dropdown-submenu column-3 menu-smartphone">
																						<a href="#">
																							<span class="have-title">
																								<span class="menu-title">Smartphone</span>
																							</span>
																						</a>

																						<ul class="dropdown-sub nav-level2">
																							<li class="menu-mobile-phones">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Mobile Phones</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-smart-watches-accessories">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Smart Watches & Accessories</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-mobile-accessories">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Mobile Accessories</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-cases-covers">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Cases & Covers</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-power-banks">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Power Banks</span>
																									</span>
																								</a>
																							</li>
																						</ul>
																					</li>

																					<li class="dropdown-submenu column-3 menu-tablets">
																						<a href="#">
																							<span class="have-title">
																								<span class="menu-title">Tablets</span>
																							</span>
																						</a>

																						<ul class="dropdown-sub nav-level2">
																							<li class="menu-tablet-accessories">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Tablet Accessories</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-cases-covers">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Cases & Covers</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-power-banks">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Power Banks</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-memory-cards">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Memory Cards</span>
																									</span>
																								</a>
																							</li>
																						</ul>
																					</li>

																					<li class="dropdown-submenu column-3 menu-computer">
																						<a href="#">
																							<span class="have-title">
																								<span class="menu-title">Computer</span>
																							</span>
																						</a>

																						<ul class="dropdown-sub nav-level2">
																							<li class="menu-macbooks-imacs">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Macbooks & iMacs</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-computers-desktops">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Computers & Desktops</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-printers-scanners-faxs">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Printers, Scanners, & Faxs</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-laptop-desktop-accessories">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Laptop & Desktop Accessories</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-storage-external-drives">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Storage & External Drives</span>
																									</span>
																								</a>
																							</li>
																						</ul>
																					</li>

																					<li class="fix-position dropdown-submenu column-3 menu-image">
																						<ul class="dropdown-sub nav-level2">
																							<li class="menu-image-1 etrostore-menu-img">
																								<a href="#">
																									<span class="">
																										<span class="menu-img">
																											<img src="images/1903/menu-bn7.jpg" alt="Menu Image" />
																										</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-image-2 etrostore-menu-img">
																								<a href="#">
																									<span class="">
																										<span class="menu-img">
																											<img src="images/1903/menu-bn8.jpg" alt="Menu Image" />
																										</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-image-3 etrostore-menu-img">
																								<a href="#">
																									<span class="">
																										<span class="menu-img">
																											<img src="images/1903/menu-bn9.jpg" alt="Menu Image" />
																										</span>
																									</span>
																								</a>
																							</li>
																						</ul>
																					</li>
																				</ul>

																			</li>

																			<li class="menu-television etrostore-menu-custom level1">
																				<a href="common/tosimple_product" class="item-link">
																					<span class="have-title">
																						<span class="menu-color" data-color="#3f5eca"></span>
																						<span class="menu-title">食品</span>
																					</span>
																				</a>
																			</li>

																			<li class="menu-accessories-for-tablet etrostore-menu-custom level1">
																				<a href="common/tosimple_product" class="item-link">
																					<span class="have-title">
																						<span class="menu-color" data-color="#13528c"></span>
																						<span class="menu-title">滋补养生</span>
																					</span>
																				</a>
																			</li>
																			<li class="dropdown menu-electronic-component etrostore-mega-menu level1">
																				<a href="common/tosimple_product" class="item-link dropdown-toggle">
																					<span class="have-title">
																						<span class="menu-color" data-color="#f03442"></span>
																						<span class="menu-title">中西药品</span>
																					</span>
																				</a>

																				<ul class="dropdown-menu nav-level1 column-3">
																					<li class="dropdown-submenu column-3 menu-electronics etrostore-menu-img">
																						<a href="#">
																							<span class="have-title">
																								<span class="menu-img">
																									<img src="images/1903/menu-bn7.jpg" alt="Menu Image" />
																								</span>
																								<span class="menu-title">Electronics</span>
																							</span>
																						</a>

																						<ul class="dropdown-sub nav-level2">
																							<li class="menu-leds">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Leds</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-laptop-desktop-accessories">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Laptop & Desktop Accessories</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-storage-external-drives">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Storage & External Drives</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-networking-wireless">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Networking & Wireless</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-motherboards-cpus-psus">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Motherboards, CPUs & PSUs</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-webcams">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Webcams</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-gaming-mice">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Gaming Mice</span>
																									</span>
																								</a>
																							</li>
																						</ul>
																					</li>

																					<li class="dropdown-submenu column-3 menu-smartphone etrostore-menu-img">
																						<a href="#">
																							<span class="have-title">
																								<span class="menu-img">
																									<img src="resource/front_bootstrap/images/1903/menu-bn8.jpg"
																										alt="Menu Image" />
																								</span>
																								<span class="menu-title">Smartphone</span>
																							</span>
																						</a>

																						<ul class="dropdown-sub nav-level2">
																							<li class="menu-smartphones">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Smartphones</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-mobile-phones">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Mobile Phones</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-smart-watches-accessories">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Smart Watches & Accessories</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-mobile-accessories">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Mobile Accessories</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-cases-covers">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Cases & Covers</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-power-banks">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Power Banks</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-memory-cards">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Memory Cards</span>
																									</span>
																								</a>
																							</li>
																						</ul>
																					</li>

																					<li class="dropdown-submenu column-3 menu-tablet etrostore-menu-img">
																						<a href="#">
																							<span class="have-title">
																								<span class="menu-img">
																									<img src="resource/front_bootstrap/images/1903/menu-bn9.jpg"
																										alt="Menu Image" />
																								</span>
																								<span class="menu-title">Tablet</span>
																							</span>
																						</a>

																						<ul class="dropdown-sub nav-level2">
																							<li class="menu-tablets">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Tablets</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-tablet-accessories">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Tablet Accessories</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-cases-covers">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Cases & Covers</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-power-banks">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Power Banks</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-memory-cards">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Memory Cards</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-headphonesheadsets">
																								<a href="#">
																									<span class="have-title">
																										<span class="menu-title">Headphones/Headsets</span>
																									</span>
																								</a>
																							</li>
																						</ul>
																					</li>
																				</ul>
																			</li>
																			<li class="menu-laptops-accessories etrostore-menu-custom level1">
																				<a href="common/tosimple_product" class="item-link">
																					<span class="have-title">
																						<span class="menu-color" data-color="#2f2e2e"></span>
																						<span class="menu-title">保健器械</span>
																					</span>
																				</a>
																			</li>

																			<li class="menu-blender etrostore-menu-custom level1" style="display: none;">
																				<a href="common/tosimple_product" class="item-link">
																					<span class="have-title">
																						<span class="menu-color" data-color="#e93434"></span>
																						<span class="menu-title">眼镜服务</span>
																					</span>
																				</a>
																			</li>

																			<li class="menu-vacuum-cleaner etrostore-menu-custom level1"
																				style="display: none;">
																				<a href="common/tosimple_product" class="item-link">
																					<span class="have-title">
																						<span class="menu-color" data-color="#f034ca"></span>
																						<span class="menu-title">护理护具</span>
																					</span>
																				</a>
																			</li>
																		</ul>
																	</div>
																</div>
															</div>
														</div>
													</div>

													<div class="wrap-slider wpb_column vc_column_container vc_col-sm-8">
														<div class="vc_column-inner vc_custom_1483000674370">
															<div class="wpb_wrapper">
																<!-- OWL SLIDER -->
																<div class="wpb_revslider_element wpb_content_element no-margin">
																	<div class="vc_column-inner ">
																		<div class="wpb_wrapper">
																			<div class="wpb_revslider_element wpb_content_element">
																				<div id="main-slider" class="fullwidthbanner-container"
																					style="position:relative; width:100%; height:auto; margin-top:0px; margin-bottom:0px">
																					<div class="module slideshow no-margin">
																						<div class="item">
																							<a>
																								<img src="resource/front_bootstrap/images/1903/slider2.jpg" alt="slider1"
																									class="img-responsive" height="559">
																							</a>
																						</div>
																						<div class="item">
																							<a >
																								<img src="resource/front_bootstrap/images/1903/01_index_v1.jpg"
																									alt="slider2" class="img-responsive" height="559">
																							</a>
																						</div>
																						<div class="item">
																							<a >
																								<img src="resource/front_bootstrap/images/1903/slider3.jpg" alt="slider3"
																									class="img-responsive" height="559">
																							</a>
																						</div>
																					</div>
																					<div class="loadeding"></div>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
																<!-- OWL LIGHT SLIDER -->

																<div class="wpb_raw_code wpb_content_element wpb_raw_html">
																	<div class="wpb_wrapper">
																		<div class="banner">
																			<a class="banner1">
																				<img src="resource/front_bootstrap/images/1903/banner3.jpg" alt="banner"
																					title="banner" />
																			</a>
																			<a class="banner2">
																				<img src="resource/front_bootstrap/images/1903/banner4.jpg" alt="banner"
																					title="banner" />
																			</a>
																		</div>
																	</div>
																</div>
															</div>
														</div>
													</div>

													<div class="wrap-banner wpb_column vc_column_container vc_col-sm-2">
														<div class="vc_column-inner vc_custom_1483000922579">
															<div class="wpb_wrapper">
																<div
																	class="wpb_single_image wpb_content_element vc_align_center vc_custom_1481518385054">
																	<figure class="wpb_wrapper vc_figure"> <a target="_self"
																		class="vc_single_image-wrapper vc_box_border_grey">
																		<img class="vc_single_image-img"
																			src="resource/front_bootstrap/images/1903/banner1.jpg" width="193" height="352"
																			alt="banner1" title="banner1" />
																	</a> </figure>
																</div>

																<div class="wpb_single_image wpb_content_element vc_align_center">
																	<figure class="wpb_wrapper vc_figure"> <a  target="_self"
																		class="vc_single_image-wrapper vc_box_border_grey">
																		<img class="vc_single_image-img"
																			src="resource/front_bootstrap/images/1903/banner2.jpg" width="193" height="175"
																			alt="banner2" title="banner2" />
																	</a> </figure>
																</div>
															</div>
														</div>
													</div>
												</div>

												<div class="wpb_raw_code wpb_content_element wpb_raw_html">
													<div class="wpb_wrapper">
														<div class="wrap-transport">
															<div class="row">
																<div class="item item-1 col-lg-3 col-md-3 col-sm-6">
																	<a href="#" class="wrap">
																		<div class="icon">
																			<i class="fa fa-paper-plane"></i>
																		</div>

																		<div class="content">
																			<h3>Money Back Guarantee</h3>
																			<p>30 Days Money Back</p>
																		</div>
																	</a>
																</div>

																<div class="item item-2 col-lg-3 col-md-3 col-sm-6">
																	<a href="#" class="wrap">
																		<div class="icon">
																			<i class="fa fa-map-marker"></i>
																		</div>

																		<div class="content">
																			<h3>Free Worldwide Shipping</h3>
																			<p>On Order Over $100</p>
																		</div>
																	</a>
																</div>

																<div class="item item-3 col-lg-3 col-md-3 col-sm-6">
																	<a href="#" class="wrap">
																		<div class="icon">
																			<i class="fa fa-tag"></i>
																		</div>

																		<div class="content">
																			<h3>Member Discount</h3>
																			<p>Upto 70 % Discount</p>
																		</div>
																	</a>
																</div>

																<div class="item item-4 col-lg-3 col-md-3 col-sm-6">
																	<a href="#" class="wrap">
																		<div class="icon">
																			<i class="fa fa-life-ring"></i>
																		</div>

																		<div class="content">
																			<h3>24/7 Online Support</h3>
																			<p>Technical Support 24/7</p>
																		</div>
																	</a>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="vc_row-full-width vc_clearfix"></div>

								<div class="vc_row wpb_row vc_row-fluid margin-bottom-60">
									<div class="wpb_column vc_column_container vc_col-sm-12">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<div id="_sw_countdown_01"
													class="sw-woo-container-slider responsive-slider countdown-slider" data-lg="5"
													data-md="4" data-sm="2" data-xs="1" data-mobile="1" data-speed="1000" data-scroll="1"
													data-interval="5000" data-autoplay="false" data-circle="false">
													<div class="resp-slider-container">
														<div class="box-title clearfix">
															<h3>秒杀</h3>
															<a href="new_deals/findSeckillArticle">查看更多</a>
														</div>

														<div class="banner-content clearfix">
															<img width="195" height="354" src="images/1903/image-cd.jpg"
																class="attachment-larges size-larges" alt=""
																srcset="resource/front_bootstrap/images/1903/image-cd.jpg 195w, resource/front_bootstrap/images/1903/image-cd-165x300.jpg 165w"
																sizes="(max-width: 195px) 100vw, 195px" />
														</div>

														<div class="slider responsive">
															<!--秒杀开始  -->
															<%-- <c:forEach items="${secKills }" var="a" varStatus="q">
																<div class="item-countdown product " id="product_sw_countdown_0${q.index }">
																	<div class="item-wrap">
																		<div class="item-detail">
																			<div class="item-content">
																				<!-- rating  -->
																				<div class="reviews-content">
																					<div class="star">
																						<span style="width:35px"></span>
																					</div>

																					<!-- <div class="item-number-rating">2 人已购买</div> -->
																				</div>
																				<!-- end rating  -->

																				<h4>
																					<a href="variableProduct/toVariable_product?productId=${a.id }"
																						title="veniam dolore">${a.aname }</a>
																				</h4>

																				<!-- Price -->
																				<div class="item-price">
																					<span>
																						<del>
																							<span class="woocommerce-Price-amount amount">
																								<span class="woocommerce-Price-currencySymbol">￥</span>
																								${a.price }
																							</span>
																						</del>
																						<ins>
																							<span class="woocommerce-Price-amount amount">
																								<span class="woocommerce-Price-currencySymbol">￥</span>
																								${a.activePrice }
																							</span>
																						</ins>
																					</span>
																				</div>

																				<div class="sale-off">-${a.powsr }%</div>

																				<div class="product-countdown" data-date="${a.timer }" data-price="$390"
																					data-starttime="1484660800" data-cdtime="1517356800"
																					data-id="product_sw_countdown_0${q.index }"></div>
																			</div>

																			<div class="item-image-countdown">
																				<span class="onsale">Sale!</span>
																				<a href="variableProduct/toVariable_product?productId=${a.id }">
																					<div class="product-thumb-hover">
																					<img alt="" src="${a.image }" style="width: 140px;height: 140px">
																					</div>
																				</a>

																				<!-- add to cart, wishlist, compare -->
																				<div class="item-bottom clearfix">
																					<a rel="nofollow" href="#"
																						class="button product_type_simple"
																						title="加入购物车1">加入购物车1</a>
																					<a href="javascript:void(0)" class="compare button" rel="nofollow"
																						title="Add to Compare">Compare</a>

																					<div class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
																						<div class="yith-wcwl-add-button show" style="display:block">
																							<a href="wishlist.html" rel="nofollow" class="add_to_wishlist">Add to
																								Wishlist</a>
																							<img src="resource/front_bootstrap/images/wpspin_light.gif"
																								class="ajax-loading" alt="loading" width="16" height="16"
																								style="visibility:hidden" />
																						</div>
																						<div class="yith-wcwl-wishlistaddedbrowse hide" style="display:none;">
																							<span class="feedback">Product added!</span>
																							<a href="#" rel="nofollow">Browse Wishlist</a>
																						</div>

																						<div class="yith-wcwl-wishlistexistsbrowse hide" style="display:none">
																							<span class="feedback">The product is already in the wishlist!</span>
																							<a href="#" rel="nofollow">Browse Wishlist</a>
																						</div>

																						<div style="clear:both"></div>
																						<div class="yith-wcwl-wishlistaddresponse"></div>
																					</div>

																					<div class="clear"></div>
																					<a href="ajax/fancybox/example.html" data-fancybox-type="ajax"
																						class="sm_quickview_handler-list fancybox fancybox.ajax">Quick View </a>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</c:forEach> --%>
															<!--秒杀结束 -->
															<c:forEach var="a" items="${secKills }" varStatus="q">
																<div class="item-countdown product" id="product_sw_countdown_0${q.index }">
																	<div class="item-wrap">
																		<div class="item-detail">
																			<div class="item-content">
																				<!-- rating  -->
																				<div class="reviews-content">
																					<div class="star">
																						<span style="width:63px"></span>
																					</div>
																				</div>
																				<!-- end rating  -->

																				<h4>
																					<a href="variableProduct/toVariable_product?productId=${a.id }"
																						title="Cleaner with bag">${a.aname }</a>
																				</h4>

																				<!-- Price -->
																				<div class="item-price">
																					<span>
																						<del>
																							<span class="woocommerce-Price-amount amount">
																								<span class="woocommerce-Price-currencySymbol">￥</span>
																								${a.price }
																							</span>
																						</del>
																						<ins>
																							<span class="woocommerce-Price-amount amount">
																								<span class="woocommerce-Price-currencySymbol">￥</span>
																								${a.activePrice }
																							</span>
																						</ins>
																					</span>
																				</div>

																				<div class="sale-off">-${a.powsr }%</div>

																				<div class="product-countdown" data-date="${a.timer }" data-price="$390"
																					data-starttime="1483660800" data-cdtime="1517356800"
																					data-id="product_sw_countdown_0${q.index }"></div>
																			</div>

																			<div class="item-image-countdown">
																				<span class="onsale">Sale!</span>
																				<a href="variableProduct/toVariable_product?productId=${a.id }">
																					<div class="product-thumb-hover">
																						<%-- <img alt="" src="${a.image }" style="width: 180px;height: 150px"> --%>
																						<img width="200" height="200" src="${a.image }.jpg"
																							class="attachment-shop_catalog size-shop_catalog wp-post-image" alt=""
																							srcset="${a.image } 300w, ${a.image } 150w, ${a.image } 180w, ${a.image } 600w"
																							sizes="(max-width: 300px) 100vw, 200px" />
																					</div>
																				</a>

																				<!-- add to cart, wishlist, compare -->
																				<div class="item-bottom clearfix">
																					<a rel="nofollow" href="#"
																						class="button product_type_simple add_to_cart_button ajax_add_to_cart"
																						title="加入购物车2">加入购物车2</a>
																					<a href="javascript:void(0)" class="compare button" rel="nofollow"
																						title="Add to Compare">Compare</a>

																					<div class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
																						<div class="yith-wcwl-add-button show" style="display:block">
																							<a href="wishlist.html" rel="nofollow" class="add_to_wishlist">Add to
																								Wishlist</a>
																							<img src="resource/front_bootstrap/images/wpspin_light.gif"
																								class="ajax-loading" alt="loading" width="16" height="16"
																								style="visibility:hidden" />
																						</div>

																						<div class="yith-wcwl-wishlistaddedbrowse hide" style="display:none;">
																							<span class="feedback">Product added!</span>
																							<a href="#" rel="nofollow">Browse Wishlist</a>
																						</div>

																						<div class="yith-wcwl-wishlistexistsbrowse hide" style="display:none">
																							<span class="feedback">The product is already in the wishlist!</span>
																							<a href="#" rel="nofollow">Browse Wishlist</a>
																						</div>

																						<div style="clear:both"></div>
																						<div class="yith-wcwl-wishlistaddresponse"></div>
																					</div>

																					<div class="clear"></div>
																					<a href="ajax/fancybox/example.html" data-fancybox-type="ajax"
																						class="sm_quickview_handler-list fancybox fancybox.ajax">Quick View </a>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</c:forEach>
															<div class="item-countdown product" id="product_sw_countdown_04">
																<div class="item-wrap">
																	<div class="item-detail">
																		<div class="item-content">
																			<!-- rating  -->
																			<div class="reviews-content">
																				<div class="star"></div>

																				<div class="item-number-rating">0 Review(s)</div>
																			</div>
																			<!-- end rating  -->

																			<h4>
																				<a href="simple_product.html" title="philips stand">philips stand</a>
																			</h4>

																			<!-- Price -->
																			<div class="item-price">
																				<span>
																					<del>
																						<span class="woocommerce-Price-amount amount">
																							<span class="woocommerce-Price-currencySymbol">$</span>
																							300.00
																						</span>
																					</del>
																					<ins>
																						<span class="woocommerce-Price-amount amount">
																							<span class="woocommerce-Price-currencySymbol">$</span>
																							250.00
																						</span>
																					</ins>
																				</span>
																			</div>

																			<div class="sale-off">-17%</div>

																			<div class="product-countdown" data-date="1498780800" data-price="$300"
																				data-starttime="1483488000" data-cdtime="1498780800"
																				data-id="product_sw_countdown_04"></div>
																		</div>

																		<div class="item-image-countdown">
																			<span class="onsale">Sale!</span>
																			<a href="simple_product.html">
																				<div class="product-thumb-hover">
																					<img width="300" height="300" src="images/1903/62-300x300.jpg"
																						class="attachment-shop_catalog size-shop_catalog wp-post-image" alt=""
																						srcset="resource/front_bootstrap/images/1903/62-300x300.jpg 300w, resource/front_bootstrap/images/1903/62-150x150.jpg 150w, resource/front_bootstrap/images/1903/62-180x180.jpg 180w, resource/front_bootstrap/images/1903/62.jpg 600w"
																						sizes="(max-width: 300px) 100vw, 300px" />
																				</div>
																			</a>

																			<!-- add to cart, wishlist, compare -->
																			<div class="item-bottom clearfix">
																				<a rel="nofollow" href="#"
																					class="button product_type_simple add_to_cart_button ajax_add_to_cart"
																					title="Add to Cart">Add to cart</a>
																				<a href="javascript:void(0)" class="compare button" rel="nofollow"
																					title="Add to Compare">Compare</a>

																				<div class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
																					<div class="yith-wcwl-add-button show" style="display:block">
																						<a href="wishlist.html" rel="nofollow" class="add_to_wishlist">Add to
																							Wishlist</a>
																						<img src="resource/front_bootstrap/images/wpspin_light.gif"
																							class="ajax-loading" alt="loading" width="16" height="16"
																							style="visibility:hidden" />
																					</div>

																					<div class="yith-wcwl-wishlistaddedbrowse hide" style="display:none;">
																						<span class="feedback">Product added!</span>
																						<a href="#" rel="nofollow">Browse Wishlist</a>
																					</div>

																					<div class="yith-wcwl-wishlistexistsbrowse hide" style="display:none">
																						<span class="feedback">The product is already in the wishlist!</span>
																						<a href="#" rel="nofollow">Browse Wishlist</a>
																					</div>

																					<div style="clear:both"></div>
																					<div class="yith-wcwl-wishlistaddresponse"></div>
																				</div>

																				<div class="clear"></div>
																				<a href="ajax/fancybox/example.html" data-fancybox-type="ajax"
																					class="sm_quickview_handler-list fancybox fancybox.ajax">Quick View </a>
																			</div>
																		</div>
																	</div>
																</div>
															</div>

															<div class="item-countdown product" id="product_sw_countdown_05">
																<div class="item-wrap">
																	<div class="item-detail">
																		<div class="item-content">
																			<!-- rating  -->
																			<div class="reviews-content">
																				<div class="star">
																					<span style="width:52.5px"></span>
																				</div>

																				<div class="item-number-rating">4 Review(s)</div>
																			</div>
																			<!-- end rating  -->

																			<h4>
																				<a href="simple_product.html" title="Vacuum cleaner">Vacuum cleaner</a>
																			</h4>

																			<!-- Price -->
																			<div class="item-price">
																				<span>
																					<del>
																						<span class="woocommerce-Price-amount amount">
																							<span class="woocommerce-Price-currencySymbol">$</span>
																							350.00
																						</span>
																					</del>
																					<ins>
																						<span class="woocommerce-Price-amount amount">
																							<span class="woocommerce-Price-currencySymbol">$</span>
																							260.00
																						</span>
																					</ins>
																				</span>
																			</div>

																			<div class="sale-off">-26%</div>

																			<div class="product-countdown" data-date="1493510400" data-price="$350"
																				data-starttime="1483747200" data-cdtime="1493510400"
																				data-id="product_sw_countdown_05"></div>
																		</div>

																		<div class="item-image-countdown">
																			<span class="onsale">Sale!</span>
																			<a href="simple_product.html">
																				<div class="product-thumb-hover">
																					<img width="300" height="300" src="images/1903/26-300x300.jpg"
																						class="attachment-shop_catalog size-shop_catalog wp-post-image" alt=""
																						srcset="resource/front_bootstrap/images/1903/26-300x300.jpg 300w, resource/front_bootstrap/images/1903/26-150x150.jpg 150w, resource/front_bootstrap/images/1903/26-180x180.jpg 180w, resource/front_bootstrap/images/1903/26.jpg 600w"
																						sizes="(max-width: 300px) 100vw, 300px" />
																				</div>
																			</a>

																			<!-- add to cart, wishlist, compare -->
																			<div class="item-bottom clearfix">
																				<a rel="nofollow" href="#"
																					class="button product_type_simple add_to_cart_button ajax_add_to_cart"
																					title="加入购物车3">加入购物车3</a>
																				<a href="javascript:void(0)" class="compare button" rel="nofollow"
																					title="Add to Compare">Compare</a>

																				<div class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
																					<div class="yith-wcwl-add-button show" style="display:block">
																						<a href="wishlist.html" rel="nofollow" class="add_to_wishlist">Add to
																							Wishlist</a>
																						<img src="resource/front_bootstrap/images/wpspin_light.gif"
																							class="ajax-loading" alt="loading" width="16" height="16"
																							style="visibility:hidden" />
																					</div>

																					<div class="yith-wcwl-wishlistaddedbrowse hide" style="display:none;">
																						<span class="feedback">Product added!</span>
																						<a href="#" rel="nofollow">Browse Wishlist</a>
																					</div>

																					<div class="yith-wcwl-wishlistexistsbrowse hide" style="display:none">
																						<span class="feedback">The product is already in the wishlist!</span>
																						<a href="#" rel="nofollow">Browse Wishlist</a>
																					</div>

																					<div style="clear:both"></div>
																					<div class="yith-wcwl-wishlistaddresponse"></div>
																				</div>

																				<div class="clear"></div>

																				<a href="ajax/fancybox/example.html" data-fancybox-type="ajax"
																					class="sm_quickview_handler-list fancybox fancybox.ajax">Quick View </a>
																			</div>
																		</div>
																	</div>
																</div>
															</div>

															<div class="item-countdown product" id="product_sw_countdown_06">
																<div class="item-wrap">
																	<div class="item-detail">
																		<div class="item-content">
																			<!-- rating  -->
																			<div class="reviews-content">
																				<div class="star"></div>
																				<div class="item-number-rating">0 Review(s)</div>
																			</div>
																			<!-- end rating  -->

																			<h4>
																				<a href="simple_product.html" title="nisi ball tip">Nisi ball tip</a>
																			</h4>

																			<!-- Price -->
																			<div class="item-price">
																				<span>
																					<del>
																						<span class="woocommerce-Price-amount amount">
																							<span class="woocommerce-Price-currencySymbol">$</span>
																							460.00
																						</span>
																					</del>
																					<ins>
																						<span class="woocommerce-Price-amount amount">
																							<span class="woocommerce-Price-currencySymbol">$</span>
																							400.00
																						</span>
																					</ins>
																				</span>
																			</div>

																			<div class="sale-off">-13%</div>
																			<div class="product-countdown" data-date="1525046400" data-price="$460"
																				data-starttime="1483747200" data-cdtime="1525046400"
																				data-id="product_sw_countdown_06"></div>
																		</div>

																		<div class="item-image-countdown">
																			<span class="onsale">Sale!</span>
																			<a href="simple_product.html">
																				<div class="product-thumb-hover">
																					<img width="300" height="300" src="images/1903/11-300x300.jpg"
																						class="attachment-shop_catalog size-shop_catalog wp-post-image" alt=""
																						srcset="resource/front_bootstrap/images/1903/11-300x300.jpg 300w, resource/front_bootstrap/images/1903/11-150x150.jpg 150w, resource/front_bootstrap/images/1903/11-180x180.jpg 180w, resource/front_bootstrap/images/1903/11.jpg 600w"
																						sizes="(max-width: 300px) 100vw, 300px" />
																				</div>
																			</a>

																			<!-- add to cart, wishlist, compare -->
																			<div class="item-bottom clearfix">
																				<a rel="nofollow" href="#"
																					class="button product_type_simple add_to_cart_button ajax_add_to_cart"
																					title="加入购物车4">加入购物车4</a>
																				<a href="javascript:void(0)" class="compare button" rel="nofollow"
																					title="Add to Compare">Compare</a>

																				<div class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
																					<div class="yith-wcwl-add-button show" style="display:block">
																						<a href="wishlist.html" rel="nofollow" class="add_to_wishlist">Add to
																							Wishlist</a>
																						<img src="resource/front_bootstrap/images/wpspin_light.gif"
																							class="ajax-loading" alt="loading" width="16" height="16"
																							style="visibility:hidden" />
																					</div>

																					<div class="yith-wcwl-wishlistaddedbrowse hide" style="display:none;">
																						<span class="feedback">Product added!</span>
																						<a href="#" rel="nofollow">Browse Wishlist</a>
																					</div>

																					<div class="yith-wcwl-wishlistexistsbrowse hide" style="display:none">
																						<span class="feedback">The product is already in the wishlist!</span>
																						<a href="#" rel="nofollow">Browse Wishlist</a>
																					</div>

																					<div style="clear:both"></div>
																					<div class="yith-wcwl-wishlistaddresponse"></div>
																				</div>

																				<div class="clear"></div>

																				<a href="ajax/fancybox/example.html" data-fancybox-type="ajax"
																					class="sm_quickview_handler-list fancybox fancybox.ajax">Quick View </a>
																			</div>
																		</div>
																	</div>
																</div>
															</div>

															<div class="item-countdown product" id="product_sw_countdown_07">
																<div class="item-wrap">
																	<div class="item-detail">
																		<div class="item-content">
																			<!-- rating  -->
																			<div class="reviews-content">
																				<div class="star"></div>
																				<div class="item-number-rating">0 Review(s)</div>
																			</div>
																			<!-- end rating  -->

																			<h4>
																				<a href="simple_product.html" title="MacBook Air">MacBook Air</a>
																			</h4>

																			<!-- Price -->
																			<div class="item-price">
																				<span>
																					<del>
																						<span class="woocommerce-Price-amount amount">
																							<span class="woocommerce-Price-currencySymbol">$</span>
																							800.00
																						</span>
																					</del>
																					<ins>
																						<span class="woocommerce-Price-amount amount">
																							<span class="woocommerce-Price-currencySymbol">$</span>
																							700.00
																						</span>
																					</ins>
																				</span>
																			</div>

																			<div class="sale-off">-13%</div>

																			<div class="product-countdown" data-date="1517356800" data-price="$800"
																				data-starttime="1483747200" data-cdtime="1517356800"
																				data-id="product_sw_countdown_07"></div>
																		</div>

																		<div class="item-image-countdown">
																			<span class="onsale">Sale!</span>
																			<a href="simple_product.html">
																				<div class="product-thumb-hover">
																					<img width="300" height="300" src="images/1903/50-300x300.jpg"
																						class="attachment-shop_catalog size-shop_catalog wp-post-image" alt=""
																						srcset="resource/front_bootstrap/images/1903/50-300x300.jpg 300w, resource/front_bootstrap/images/1903/50-150x150.jpg 150w, resource/front_bootstrap/images/1903/50-180x180.jpg 180w, resource/front_bootstrap/images/1903/50.jpg 600w"
																						sizes="(max-width: 300px) 100vw, 300px" />
																				</div>
																			</a>

																			<!-- add to cart, wishlist, compare -->
																			<div class="item-bottom clearfix">
																				<a rel="nofollow" href="#"
																					class="button product_type_simple add_to_cart_button ajax_add_to_cart"
																					title="加入购物车5">加入购物车5</a>
																				<a href="javascript:void(0)" class="compare button" rel="nofollow"
																					title="Add to Compare">Compare</a>

																				<div class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
																					<div class="yith-wcwl-add-button show" style="display:block">
																						<a href="wishlist.html" rel="nofollow" class="add_to_wishlist">Add to
																							Wishlist</a>
																						<img src="resource/front_bootstrap/images/wpspin_light.gif"
																							class="ajax-loading" alt="loading" width="16" height="16"
																							style="visibility:hidden" />
																					</div>

																					<div class="yith-wcwl-wishlistaddedbrowse hide" style="display:none;">
																						<span class="feedback">Product added!</span>
																						<a href="#" rel="nofollow">Browse Wishlist</a>
																					</div>

																					<div class="yith-wcwl-wishlistexistsbrowse hide" style="display:none">
																						<span class="feedback">The product is already in the wishlist!</span>
																						<a href="#" rel="nofollow">Browse Wishlist</a>
																					</div>

																					<div style="clear:both"></div>
																					<div class="yith-wcwl-wishlistaddresponse"></div>
																				</div>

																				<div class="clear"></div>

																				<a href="ajax/fancybox/example.html" data-fancybox-type="ajax"
																					class="sm_quickview_handler-list fancybox fancybox.ajax">Quick View </a>
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
									</div>
								</div>

								<div class="vc_row wpb_row vc_row-fluid margin-bottom-60">
									<div class="wpb_column vc_column_container vc_col-sm-12">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<div id="slider_sw_woo_slider_widget_1"
													class="responsive-slider woo-slider-default sw-child-cat clearfix" data-lg="3"
													data-md="3" data-sm="2" data-xs="2" data-mobile="1" data-speed="1000" data-scroll="1"
													data-interval="5000" data-autoplay="false">
													<div class="child-top clearfix" data-color="#ff9901">
														<div class="box-title pull-left">
															<h3>猜你喜欢</h3>

															<button class="navbar-toggle" type="button" data-toggle="collapse"
																data-target="#child_sw_woo_slider_widget_1" aria-expanded="false">
																<span class="icon-bar"></span>
																<span class="icon-bar"></span>
																<span class="icon-bar"></span>
															</button>
														</div>

														<div class="box-title-right clearfix">
															<div class="childcat-content pull-left" id="child_sw_woo_slider_widget_1">
																<ul>
																	<li>
																		<a href="shop_right_sidebar.html">Television</a>
																	</li>
																	<li>
																		<a href="shop_right_sidebar.html">Air Conditional</a>
																	</li>
																	<li>
																		<a href="shop_right_sidebar.html">Laptops & Accessories</a>
																	</li>
																	<li>
																		<a href="shop_right_sidebar.html">Accessories for Tablet</a>
																	</li>
																	<li>
																		<a href="shop_right_sidebar.html">Headphone</a>
																	</li>
																	<li>
														
																	</li>
																</ul>
															</div>

																														<div class="view-all">
																		<a href="new_deals/tonew_deals" style="margin-right: 60px">
																		查看更多</a>
																		</div>

															
														</div>
													</div>

													<div class="content-slider">
														<div class="childcat-slider-content clearfix">
															<!-- Brand -->
															<div class="child-cat-brand pull-left">
																<div class="item-brand">
																	<a href="#">
																		<img width="170" height="87"
																			src="resource/front_bootstrap/images/1903/Brand_1.jpg"
																			class="attachment-170x90 size-170x90" alt="" />
																	</a>
																</div>

																<div class="item-brand">
																	<a href="#">
																		<img width="170" height="90" src="resource/front_bootstrap/images/1903/br5.jpg"
																			class="attachment-170x90 size-170x90" alt="" />
																	</a>
																</div>

																<div class="item-brand">
																	<a href="#">
																		<img width="170" height="90" src="resource/front_bootstrap/images/1903/br2.jpg"
																			class="attachment-170x90 size-170x90" alt="" />
																	</a>
																</div>

																<div class="item-brand">
																	<a href="#">
																		<img width="170" height="90" src="resource/front_bootstrap/images/1903/br3.jpg"
																			class="attachment-170x90 size-170x90" alt="" />
																	</a>
																</div>
															</div>

															<!-- slider content -->
															<div class="resp-slider-container">
																<div class="slider responsive">
																	<c:forEach var="a" items="${myArticle }">
																		<div class="item product">
																			<!-- 开始 -->
																			<div class="item-wrap">
																				<div class="item-detail">
																					<div class="item-img products-thumb">
																						<a href="variableProduct/toVariable_product?productId=${a[0].id }">
																							<div class="product-thumb-hover">
																								<img alt="" src="${a[0].image }" style="width: 200px;height: 200px">

																							</div>
																						</a>

																						<!-- add to cart, wishlist, compare -->
																						<div class="item-bottom clearfix">
																							<a rel="nofollow" href="javascript:;" onclick="addcar('${a[0].id}',this)"
																								class="button product_type_simple" title="加入购物车">加入购物车6</a>
																							<div class="yith-wcwl-add-to-wishlist ">
																								<div class=" show" style="display:block">
																									<a href="javascript:;" onclick="addWish('${a[0].id}',this)" rel="nofollow"
																										title="添加购物车">添加购物车</a>
																								</div>
																							</div>
																						</div>
																					</div>
																					<div style="clear: b"></div>
																					<div class="item-content">
																						<!-- rating  -->
																						<div class="reviews-content">
																							<div class="star"></div>
																							<div class="item-number-rating">${a[0].totals }人已购买</div>
																						</div>
																						<!-- end rating  -->

																						<h4>
																							<a href="variableProduct/toVariable_product?productId=${a[0].id }"
																								title="voluptate ipsum">${a[0].aname }</a>
																						</h4>

																						<!-- Price -->
																						<div class="item-price">
																							<span>
																								<span class="woocommerce-Price-amount amount">
																									<span class="woocommerce-Price-currencySymbol">￥</span>
																									${a[0].price }
																								</span>
																							</span>
																						</div>
																					</div>


																				</div>
																			</div>
																			<!--结束  -->
																			<div class="item-wrap">
																				<div class="item-detail">
																					<div class="item-content">
																						<div class="item-img products-thumb">
																							<a href="variableProduct/toVariable_product?productId=${a[1].id }">
																								<div class="product-thumb-hover">
																									<!-- <img width="300" height="300" src="images/1903/50-300x300.jpg"
																									class="attachment-shop_catalog size-shop_catalog wp-post-image" alt=""
																									srcset="resource/front_bootstrap/images/1903/50-300x300.jpg 300w, resource/front_bootstrap/images/1903/50-150x150.jpg 150w, resource/front_bootstrap/images/1903/50-180x180.jpg 180w, resource/front_bootstrap/images/1903/50.jpg 600w"
																									sizes="(max-width: 300px) 100vw, 300px" /> -->
																									<img alt="" src="${a[1].image }" style="width: 200px;height: 200px">
																								</div>
																							</a>

																							<!-- add to cart, wishlist, compare -->
																							<div class="item-bottom clearfix">
																								<a rel="nofollow" href="javascript:;" onclick="addcar('${a[1].id}')"
																									class="button product_type_simple" title="加入购物车7">加入购物车7</a>

																								<div class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
																									<div class="yith-wcwl-add-button show" style="display:block">
																										<a href="javascript:;" onclick="addWish('${a[1].id}')" rel="nofollow"
																											class="">Add to Wishlist</a>
																										<img src="resource/front_bootstrap/images/wpspin_light.gif"
																											class="ajax-loading" alt="loading" width="16" height="16"
																											style="visibility:hidden" />
																									</div>

																									<div class="yith-wcwl-wishlistaddedbrowse hide" style="display:none;">
																										<span class="feedback">Product added!</span>
																										<a href="#" rel="nofollow">Browse Wishlist</a>
																									</div>

																									<div class="yith-wcwl-wishlistexistsbrowse hide" style="display:none">
																										<span class="feedback">The product is already in the wishlist!</span>
																										<a href="#" rel="nofollow">Browse Wishlist</a>
																									</div>

																									<div style="clear:both"></div>
																									<div class="yith-wcwl-wishlistaddresponse"></div>
																								</div>

																								<div class="clear"></div>

																							</div>
																						</div>
																						<div style="clear: both;"></div>
																						<!-- rating  -->
																						<div class="reviews-content">
																							<div class="star"></div>
																							<div class="item-number-rating">${a[1].totals }人已购买</div>
																						</div>
																						<!-- end rating  -->

																						<h4>
																							<a href="variableProduct/toVariable_product?productId=${a[1].id }"
																								title="veniam dolore">${a[1].aname }</a>
																						</h4>

																						<!-- Price -->
																						<div class="item-price">
																							<span>
																								<span class="woocommerce-Price-amount amount">
																									<span class="woocommerce-Price-currencySymbol">￥</span>
																									${a[1].price }
																								</span>
																							</span>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</c:forEach>

																</div>
															</div>
														</div>

														<div class="best-seller-product">
															<div class="box-slider-title">
																<h2 class="page-title-slider">最近购买</h2>
															</div>

															<div class="wrap-content">
																<c:forEach var="a" items="${myArticleTop }" varStatus="s">
																	<div class="item">
																		<div class="item-inner">
																			<div class="item-img">
																				<a href="variableProduct/toVariable_product?productId=${a.id }"
																					title="Sony BRAVIA 4K">
																					<img alt="" src="${a.image }" style="width: 70px;height: 70px">
																				</a>
																			</div>

																			<div class="item-sl pull-left">${s.index+1 }</div>

																			<div class="item-content">
																				<!-- rating  -->
																				<div class="reviews-content">
																					<div class="star"></div>
																					<div class="item-number-rating">${a.totals }人已购买</div>
																				</div>
																				<!-- end rating  -->

																				<h4>
																					<a href="variableProduct/toVariable_product?productId=${a.id }"
																						title="Sony BRAVIA 4K">${a.aname }</a>
																				</h4>

																				<div class="item-price">
																					<span class="woocommerce-Price-amount amount">
																						<span class="woocommerce-Price-currencySymbol">￥</span>
																						${a.price }
																					</span>
																				</div>
																			</div>
																		</div>
																	</div>
																</c:forEach>

															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="vc_row wpb_row vc_row-fluid margin-bottom-60">
									<div class="wpb_column vc_column_container vc_col-sm-6">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<div class="wpb_single_image wpb_content_element vc_align_center">
													<figure class="wpb_wrapper vc_figure"> <a href="#" target="_self"
														class="vc_single_image-wrapper vc_box_border_grey">
														<img class="vc_single_image-img"
															src="resource/front_bootstrap/images/1903/banner6-1.jpg" width="570" height="220"
															alt="banner6" title="banner6" />
													</a> </figure>
												</div>
											</div>
										</div>
									</div>

									<div class="wpb_column vc_column_container vc_col-sm-6">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<div class="wpb_single_image wpb_content_element vc_align_center banner-none">
													<figure class="wpb_wrapper vc_figure"> <a href="#" target="_self"
														class="vc_single_image-wrapper vc_box_border_grey">
														<img class="vc_single_image-img"
															src="resource/front_bootstrap/images/1903/banner7-1.jpg" width="570" height="220"
															alt="banner7" title="banner7" />
													</a> </figure>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="vc_row wpb_row vc_row-fluid margin-bottom-60">
									<div class="wpb_column vc_column_container vc_col-sm-12">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<div id="slider_sw_woo_slider_widget_2"
													class="responsive-slider woo-slider-default sw-child-cat clearfix" data-lg="3"
													data-md="3" data-sm="2" data-xs="2" data-mobile="1" data-speed="1000" data-scroll="1"
													data-interval="5000" data-autoplay="false">
													<div class="child-top clearfix" data-color="#7ac143">
														<div class="box-title pull-left">
															<h3>热门商品</h3>

															<button class="navbar-toggle" type="button" data-toggle="collapse"
																data-target="#child_sw_woo_slider_widget_2" aria-expanded="false">
																<span class="icon-bar"></span>
																<span class="icon-bar"></span>
																<span class="icon-bar"></span>
															</button>
														</div>

														<div class="box-title-right clearfix">
															<div class="childcat-content pull-left" id="child_sw_woo_slider_widget_2">
																<ul>
																	<li>
																		<a href="shop_right_sidebar.html?id=shangyi">上衣</a>
																	</li>
																	<li>
																		<a href="shop_right_sidebar.html?id=kuzi">裤子</a>
																	</li>
																	<li>
																		<a href="shop_right_sidebar.html?id=xielei">鞋类</a>
																	</li>
																	<li>
																		<a href="shop_right_sidebar.html?id=maozi">帽子</a>
																	</li>
																	<li>
																		<a href="shop_right_sidebar.html?id=yiliaoqixie">医疗器械</a>
																	</li>
																	<li>
																		<a href="shop_right_sidebar.html?id=e17e4e4cc67811e7aca65254002ec43c">运动用品</a>
																	</li>
																	<li></li>
																</ul>
															
															</div>

																														<div class="view-all">
																		<a href="new_deals/tonew_deals" style="margin-right: 60px">
																		查看更多</a>
																		</div>

																<div class="view-all">	
																		<i class="fa  fa-caret-right"></i>
																</div>
														</div>
													</div>

													<div class="content-slider">
														<div class="childcat-slider-content clearfix">
															<!-- Brand -->
															<div class="child-cat-brand pull-left">
																<div class="item-brand">
																	<a href="#">
																		<img width="170" height="90" src="resource/front_bootstrap/images/1903/br4.jpg"
																			class="attachment-170x90 size-170x90" alt="" />
																	</a>
																</div>

																<div class="item-brand">
																	<a href="#">
																		<img width="170" height="90" src="resource/front_bootstrap/images/1903/br2.jpg"
																			class="attachment-170x90 size-170x90" alt="" />
																	</a>
																</div>

																<div class="item-brand">
																	<a href="#">
																		<img width="170" height="90" src="resource/front_bootstrap/images/1903/br3.jpg"
																			class="attachment-170x90 size-170x90" alt="" />
																	</a>
																</div>

																<div class="item-brand">
																	<a href="#">
																		<img width="170" height="90" src="resource/front_bootstrap/images/1903/br5.jpg"
																			class="attachment-170x90 size-170x90" alt="" />
																	</a>
																</div>

																<div class="item-brand">
																	<a href="#">
																		<img width="170" height="87"
																			src="resource/front_bootstrap/images/1903/Brand_1.jpg"
																			class="attachment-170x90 size-170x90" alt="" />
																	</a>
																</div>
															</div>

															<!-- slider content -->
															<div class="resp-slider-container">
																<div class="slider responsive">
																	<c:forEach var="a" items="${rArticles }">
																		<div class="item product">

																			<div class="item-wrap">
																				<div class="item-detail">
																					<div class="item-content">
																						<!-- rating  -->
																						<div class="item-img products-thumb">
																							<a href="variableProduct/toVariable_product?productId=${a[0].id }">
																								<div class="product-thumb-hover">
																									<img alt="" src="${a[0].image }" style="width: 200px;height: 200px">
																								</div>
																							</a>

																							<!-- add to cart, wishlist, compare -->
																							<div class="item-bottom clearfix">
																								<a rel="nofollow" href="javascript:;" class="button product_type_simple"
																									title="加入购物车" onclick="addcar('${a[0].id}')">Add to cart</a>

																								<div class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
																									<div class="yith-wcwl-add-button show" style="display:block">
																										<a href="javascript:;" onclick="addWish('${a[0].id}')" rel="nofollow"
																											class="">Add to Wishlist</a>
																									</div>

																									<div class="yith-wcwl-wishlistaddedbrowse hide" style="display:none;">
																										<span class="feedback">Product added!</span>
																										<a href="#" rel="nofollow">Browse Wishlist</a>
																									</div>

																									<div class="yith-wcwl-wishlistexistsbrowse hide" style="display:none">
																										<span class="feedback">The product is already in the wishlist!</span>
																										<a href="#" rel="nofollow">Browse Wishlist</a>
																									</div>

																									<div style="clear:both"></div>
																									<div class="yith-wcwl-wishlistaddresponse"></div>
																								</div>
																							</div>
																						</div>
																						<div style="clear: both;"></div>
																						<div class="reviews-content">
																							<div class="star"></div>
																							<div class="item-number-rating">${a[0].totals }人已购买</div>
																						</div>
																						<!-- end rating  -->

																						<h4>
																							<a href="variableProduct/toVariable_product?productId=${a[0].id }"
																								title="voluptate ipsum">${a[0].aname }</a>
																						</h4>

																						<!-- Price -->
																						<div class="item-price">
																							<span>
																								<span class="woocommerce-Price-amount amount">
																									<span class="woocommerce-Price-currencySymbol">￥</span>
																									${a[0].price }
																								</span>
																							</span>
																						</div>
																					</div>


																				</div>
																			</div>

																			<div class="item-wrap">
																				<div class="item-detail">
																					<div class="item-img products-thumb">
																						<a href="variableProduct/toVariable_product?productId=${a[1].id }">
																							<div class="product-thumb-hover">
																								<img alt="" src="${a[1].image }" style="width: 200px;height: 200px">
																								<%-- <img width="300" height="300" src="${a[1].image }"
																									class="attachment-shop_catalog size-shop_catalog wp-post-image" alt=""
																									srcset="${a[1].image } 300w, ${a[1].image } 150w, ${a[1].image } 180w, ${a[1].image } 600w"
																									sizes="(max-width: 300px) 100vw, 300px" /> --%>
																							</div>
																						</a>

																						<!-- add to cart, wishlist, compare -->
																						<div class="item-bottom clearfix">
																							<a rel="nofollow" href="#" class="button product_type_simple" title="加入购物车"
																								onclick="addcar('${a[1].id}')">Add to cart</a>
																							<div class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
																								<div class="yith-wcwl-add-button show" style="display:block">
																									<a href="wishlist.html" rel="nofollow" class="add_to_wishlist">Add to
																										Wishlist</a>
																									<img src="resource/front_bootstrap/images/wpspin_light.gif"
																										class="ajax-loading" alt="loading" width="16" height="16"
																										style="visibility:hidden" />
																								</div>

																								<div class="yith-wcwl-wishlistaddedbrowse hide" style="display:none;">
																									<span class="feedback">Product added!</span>
																									<a href="#" rel="nofollow">Browse Wishlist</a>
																								</div>

																								<div class="yith-wcwl-wishlistexistsbrowse hide" style="display:none">
																									<span class="feedback">The product is already in the wishlist!</span>
																									<a href="#" rel="nofollow">Browse Wishlist</a>
																								</div>

																								<div style="clear:both"></div>
																								<div class="yith-wcwl-wishlistaddresponse"></div>
																							</div>

																							<div class="clear"></div>
																						</div>
																					</div>
																					<div style="clear:both;"></div>

																					<div class="item-content">
																						<!-- rating -->
																						<div class="reviews-content">
																							<div class="star"></div>
																							<div class="item-number-rating">${a[1].totals }人已购买</div>
																						</div>
																						<!-- end rating -->

																						<h4>
																							<a href="variableProduct/toVariable_product?productId=${a[1].id }"
																								title="veniam dolore">${a[1].aname }</a>
																						</h4>

																						<!-- Price -->
																						<div class="item-price">
																							<span>
																								<span class="woocommerce-Price-amount amount">
																									<span class="woocommerce-Price-currencySymbol">￥</span>
																									${a[1].price }
																								</span>
																							</span>
																						</div>
																					</div>



																				</div>
																			</div>
																		</div>
																	</c:forEach>
																</div>
															</div>
														</div>

														<div class="best-seller-product">
															<div class="box-slider-title">
																<h2 class="page-title-slider">销售排行</h2>
															</div>

															<div class="wrap-content">
																<div class="item">
																	<c:forEach var="a" items="${rArticlesTop }" varStatus="s">
																		<div class="item">
																			<div class="item-inner">
																				<div class="item-img">
																					<a href="variableProduct/toVariable_product?productId=${a.id }"
																						title="corned beef enim">
																						<img alt="" src="${a.image }" style="width: 70px">
																					</a>
																				</div>

																				<div class="item-sl pull-left">${s.index+1 }</div>

																				<div class="item-content">
																					<div class="reviews-content">
																						<div class="star"></div>
																						<div class="item-number-rating">${a.totals }人已购买</div>

																						<h4>
																							<a href="variableProduct/toVariable_product?productId=${a.id }"
																								title="corned beef enim">${a.aname }</a>
																						</h4>

																						<div class="item-price">
																							<span class="woocommerce-Price-amount amount">
																								<span class="woocommerce-Price-currencySymbol">￥</span>
																								${a.price }
																							</span>
																						</div>
																					</div>
																				</div>
																			</div>
																		</div>
																	</c:forEach>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>

									<div class="vc_row wpb_row vc_row-fluid margin-bottom-60">
										<div class="wpb_column vc_column_container vc_col-sm-6">
											<div class="vc_column-inner ">
												<div class="wpb_wrapper">
													<div class="wpb_single_image wpb_content_element vc_align_center">
														<figure class="wpb_wrapper vc_figure"> <a href="#" target="_self"
															class="vc_single_image-wrapper vc_box_border_grey">
															<img class="vc_single_image-img"
																src="resource/front_bootstrap/images/1903/banner8-1.jpg" width="570" height="220"
																alt="banner8" title="banner8" />
														</a> </figure>
													</div>
												</div>
											</div>
										</div>

										<div class="wpb_column vc_column_container vc_col-sm-6">
											<div class="vc_column-inner ">
												<div class="wpb_wrapper">
													<div class="wpb_single_image wpb_content_element vc_align_center banner-none">
														<figure class="wpb_wrapper vc_figure"> <a href="#" target="_self"
															class="vc_single_image-wrapper vc_box_border_grey">
															<img class="vc_single_image-img"
																src="resource/front_bootstrap/images/1903/banner9-1.jpg" width="570" height="220"
																alt="banner9" title="banner9" />
														</a> </figure>
													</div>
												</div>
											</div>
										</div>
									</div>

									<div class="vc_row wpb_row vc_row-fluid margin-bottom-60">
										<div class="wpb_column vc_column_container vc_col-sm-12">
											<div class="vc_column-inner ">
												<div class="wpb_wrapper">
													<div id="slider_sw_woo_slider_widget_3"
														class="responsive-slider woo-slider-default sw-child-cat clearfix" data-lg="3"
														data-md="3" data-sm="2" data-xs="2" data-mobile="1" data-speed="1000" data-scroll="1"
														data-interval="5000" data-autoplay="false">
														<div class="child-top clearfix" data-color="#356acb">
															<div class="box-title pull-left">
																<h3>新品上架</h3>
																<button class="navbar-toggle" type="button" data-toggle="collapse"
																	data-target="#child_sw_woo_slider_widget_3" aria-expanded="false">
																	<span class="icon-bar"></span>
																	<span class="icon-bar"></span>
																	<span class="icon-bar"></span>
																</button>
															</div>

															<div class="box-title-right clearfix">
																<div class="childcat-content pull-left" id="child_sw_woo_slider_widget_3">
																	<ul>
																		<li>
																			<a href="shop_right_sidebar.html?id=shangyi">上衣</a>
																		</li>
																		<li>
																			<a href="shop_right_sidebar.html?id=kuzi">裤子</a>
																		</li>
																		<li>
																			<a href="shop_right_sidebar.html?id=xielei">鞋类</a>
																		</li>
																		<li>
																			<a href="shop_right_sidebar.html?id=maozi">帽子</a>
																		</li>
																		<li>
																			<a href="shop_right_sidebar.html?id=yiliaoqixie">医疗器械</a>
																		</li>
																		<li>
																			<a href="shop_right_sidebar.html?id=e17e4e4cc67811e7aca65254002ec43c">运动用品</a>
																		</li>
																		
																	
																		<li>
																			
																		</li>
																	
																	</ul>
																		
																</div>
																<div class="view-all">
																		<a href="new_deals/tonew_deals" style="margin-right: 60px">
																		查看更多</a>
																		</div>

																<div class="view-all">	
																		<i class="fa  fa-caret-right"></i>
																</div>
															</div>
														</div>

														<div class="content-slider">
															<div class="childcat-slider-content clearfix">
																<!-- Brand -->
																<div class="child-cat-brand pull-left">
																	<div class="item-brand">
																		<a href="#">
																			<img width="170" height="90" src="resource/front_bootstrap/images/1903/br2.jpg"
																				class="attachment-170x90 size-170x90" alt="" />
																		</a>
																	</div>

																	<div class="item-brand">
																		<a href="#">
																			<img width="170" height="90" src="resource/front_bootstrap/images/1903/br5.jpg"
																				class="attachment-170x90 size-170x90" alt="" />
																		</a>
																	</div>

																	<div class="item-brand">
																		<a href="#">
																			<img width="170" height="90" src="resource/front_bootstrap/images/1903/br4.jpg"
																				class="attachment-170x90 size-170x90" alt="" />
																		</a>
																	</div>

																	<div class="item-brand">
																		<a href="#">
																			<img width="170" height="90" src="resource/front_bootstrap/images/1903/br3.jpg"
																				class="attachment-170x90 size-170x90" alt="" />
																		</a>
																	</div>

																	<div class="item-brand">
																		<a href="#">
																			<img width="170" height="87"
																				src="resource/front_bootstrap/images/1903/Brand_1.jpg"
																				class="attachment-170x90 size-170x90" alt="" />
																		</a>
																	</div>
																</div>

																<!-- slider content -->
																<div class="resp-slider-container">
																	<div class="slider responsive">
																		<c:forEach var="a" items="${aNewsArticles }">
																			<div class="item product">
																				<div class="item-wrap" style="width: 320px">
																					<div class="item-detail">
																						<div class="item-img products-thumb">
																							<span class="onsale">Sale!</span>
																							<a href="variableProduct/toVariable_product?productId=${a[0].id }">
																								<div class="product-thumb-hover">
																									<img alt="" src="${a[0].image }" style="width: 190px;height: 190px">
																								</div>
																							</a>

																							<!-- add to cart, wishlist, compare -->
																							<div class="item-bottom clearfix">
																								<a rel="nofollow" href="javascript:;" class="button product_type_simple"
																									title="加入购物车" onclick="addcar('${a[0].id }')">Add to cart</a>

																								<div class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
																									<div class="yith-wcwl-add-button show" style="display:block">
																										<a href="javascript:;" rel="nofollow" class="" title="添加收藏"
																											onclick="addWish('${a[0].id}')">Add to Wishlist</a>
																									</div>

																									<div class="yith-wcwl-wishlistexistsbrowse hide" style="display:none">
																										<span class="feedback">The product is already in the wishlist!</span>
																										<a href="#" rel="nofollow">Browse Wishlist</a>
																									</div>

																									<div style="clear:both"></div>
																									<div class="yith-wcwl-wishlistaddresponse"></div>
																								</div>

																							</div>
																						</div>
																						<div style="clear: both;"></div>
																						<div class="item-content">
																							<!-- rating  -->
																							<div class="reviews-content">
																								<div class="star">
																									<span style="width:63px"></span>
																								</div>

																								<div class="item-number-rating">${a[0].totals }人已购买</div>
																							</div>
																							<!-- end rating  -->

																							<h4>
																								<a href="variableProduct/toVariable_product?productId=${a[0].id }"
																									title="Cleaner with bag">${a[0].aname }</a>
																							</h4>

																							<!-- Price -->
																							<div class="item-price">
																								<span>
																									<ins>
																										<span class="woocommerce-Price-amount amount">
																											<span class="woocommerce-Price-currencySymbol">￥</span>
																											${a[0].price }
																										</span>
																									</ins>
																								</span>
																							</div>

																						</div>
																					</div>
																				</div>

																				<div class="item-wrap" style="width: 320px">
																					<div class="item-detail">
																						<div class="item-content">
																							<div class="item-img products-thumb">
																								<span class="onsale">Sale!</span>
																								<a href="variableProduct/toVariable_product?productId=${a[1].id }">
																									<div class="product-thumb-hover">
																										<img alt="" src="${a[1].image }" style="width: 190px;height: 190px">
																									</div>
																								</a>

																								<!-- add to cart, wishlist, compare -->
																								<div class="item-bottom clearfix">
																									<a rel="nofollow" href="javascript:;" class="button product_type_simple"
																										title="加入购物车" onclick="addcar('${a[1].id }')">Add to cart</a>

																									<div class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
																										<div class="yith-wcwl-add-button show" style="display:block">
																											<a href="javascript:;" rel="nofollow" class="" title="添加收藏"
																												onclick="addWish('${a[1].id}')">Add to Wishlist</a>
																										</div>

																										<div class="yith-wcwl-wishlistexistsbrowse hide" style="display:none">
																											<span class="feedback">The product is already in the wishlist!</span>
																											<a href="#" rel="nofollow">Browse Wishlist</a>
																										</div>

																										<div style="clear:both"></div>
																										<div class="yith-wcwl-wishlistaddresponse"></div>
																									</div>

																								</div>
																							</div>
																							<div style="clear: both;"></div>
																							<!-- rating  -->
																							<div class="reviews-content">
																								<div class="star">
																									<span style="width:63px"></span>
																								</div>

																								<div class="item-number-rating">${a[1].totals }人已购买</div>
																							</div>
																							<!-- end rating  -->

																							<h4>
																								<a href="variableProduct/toVariable_product?productId=${a[1].id }"
																									title="sint turkey">${a[1].aname }</a>
																							</h4>

																							<!-- Price -->
																							<div class="item-price">
																								<span>
																									<span class="woocommerce-Price-amount amount">
																										<span class="woocommerce-Price-currencySymbol">￥</span>
																										${a[1].price }
																									</span>
																								</span>
																							</div>
																						</div>

																					</div>
																				</div>
																			</div>

																		</c:forEach>
																	</div>
																</div>
															</div>

															<div class="best-seller-product">
																<div class="box-slider-title">
																	<h2 class="page-title-slider">销售排行</h2>
																</div>

																<div class="wrap-content">
																	<c:forEach var="a" items="${aNewsArticlesTop }" varStatus="s">
																		<div class="item">
																			<div class="item-inner">
																				<div class="item-img">
																					<a href="variableProduct/toVariable_product?productId=${a.id }"
																						title="Vacuum cleaner">
																						<img alt="" src="${a.image }" style="width: 50px;margin: 0;padding: 0">
																					</a>
																				</div>

																				<div class="item-sl pull-left">${s.index+1 }</div>

																				<div class="item-content">
																					<!-- rating  -->
																					<div class="reviews-content">
																						<div class="star">
																							<span style="width:52.5px"></span>
																						</div>

																						<div class="item-number-rating">${a.totals }人已购买</div>
																					</div>
																					<!-- end rating  -->

																					<h4>
																						<a href="variableProduct/toVariable_product?productId=${a.id }"
																							title="Vacuum cleaner">${a.aname }</a>
																					</h4>
																					<div class="item-price">
																						<ins>
																							<span class="woocommerce-Price-amount amount">
																								<span class="woocommerce-Price-currencySymbol">￥</span>
																								${a.price}
																							</span>
																						</ins>
																					</div>
																				</div>
																			</div>
																		</div>
																	</c:forEach>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>

									<div class="vc_row wpb_row vc_row-fluid">
										<div class="wpb_column vc_column_container vc_col-sm-12">
											<div class="vc_column-inner ">
												<div class="wpb_wrapper"></div>
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
		<div class="modal fade" id="search_form" tabindex="-1" role="dialog" aria-hidden="true">
			<div class="modal-dialog block-popup-search-form">
				<form role="search" method="get" class="form-search searchform" action="">
					<input type="text" value="" name="s" class="search-query" placeholder="Enter your keyword..." />

					<button type="submit" class="fa fa-search button-search-pro form-button"></button>

					<a href="javascript:void(0)" title="Close" class="close close-search" data-dismiss="modal">X</a>
				</form>
			</div>
		</div>

		<div class="modal fade" id="login_form" tabindex="-1" role="dialog" aria-hidden="true">
			<div class="modal-dialog block-popup-login">
				<a href="javascript:void(0)" title="Close" class="close close-login" data-dismiss="modal">Close</a>

				<div class="tt_popup_login">
					<strong>Sign in Or Register</strong>
				</div>

				<form action="" method="post" class="login">
					<div class="block-content">
						<div class="col-reg registered-account">
							<div class="email-input">
								<input type="text" class="form-control input-text username" name="username" id="username"
									placeholder="Username" />
							</div>

							<div class="pass-input">
								<input class="form-control input-text password" type="password" placeholder="Password"
									name="password" id="password" />
							</div>

							<div class="ft-link-p">
								<a href="lost_password.html" title="Forgot your password">Forgot your password?</a>
							</div>

							<div class="actions">
								<div class="submit-login">
									<input type="submit" class="button btn-submit-login" name="login" value="Login" />
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

							<a href="create_account.html" title="Register" class="btn-reg-popup">Create an account</a>
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
				<div class="description">Subscribe now to get 40% of on any product!</div>
				<div class="subscribe-form">
					<form id="mc4wp-form-2" class="mc4wp-form mc4wp-form-275" method="post" data-id="275"
						data-name="">
						<div class="mc4wp-form-fields">
							<div class="newsletter-content">
								<input type="email" class="newsletter-email" name="EMAIL" placeholder="Your email"
									required="" />
								<input class="newsletter-submit" type="submit" value="Subscribe" />
							</div>
						</div>
						<div class="mc4wp-response"></div>
					</form>
				</div>

				<div class="subscribe-checkbox">
					<label for="popup_check"> <input id="popup_check" name="popup_check" type="checkbox" />
						<span>Don't show this popup again!</span>
					</label>
				</div>

				<div class="subscribe-social">
					<div class="subscribe-social-inner">
						<a href="http://www.facebook.com/" class="social-fb">
							<span class="fa fa-facebook"></span>
						</a>
						<a href="https://twitter.com/" class="social-tw">
							<span class="fa fa-twitter"></span>
						</a>
						<a href="https://plus.google.com/" class="social-gplus">
							<span class="fa fa-google-plus"></span>
						</a>
						<a href="#" class="social-pin">
							<span class="fa fa-instagram"></span>
						</a>
						<a href="http://www.pinterest.com/" class="social-linkedin">
							<span class="fa fa-pinterest-p"></span>
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
		<script type="text/javascript" src="resource/plugins/laysui/layui.js"></script>
		<script type="text/javascript">
			$(function() {
				console.log("123");
				var data = '${toShopDetailsShoppingCar}';
				console.log(data);

			});
			var sticky_navigation_offset_top = $("#header .header-bottom")
					.offset().top;
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
			function addcar(id,o) {
				$.ajax({
					url : 'MedicalInstruments/addCartMedicalInstruments',
					data:{articleId:id},
					type:'post',
					success : function(result) {
						if (result == "3") {
							alert("请先登录");
						}
						if (result == "1") {
							alert("添加成功");
							$(o).css('background','red');
							
						}
						if (result == "2") {
							alert("商品已存在");
						}
					}
				});
			}
			function addWish(id) {
				$
						.ajax({
							url : 'MedicalInstruments/addWishlistMedicalInstruments',
							data:{articleId:id},
							type:'post',
							success : function(result) {
								if (result == "3") {
									alert("请先登录");
								}
								if (result == "1") {
									alert("添加成功");
								}
								if (result == "2") {
									alert("商品已存在");
								}
							}
						});
			}
		</script>
		<!--<![endif]-->
</body>
</html>
