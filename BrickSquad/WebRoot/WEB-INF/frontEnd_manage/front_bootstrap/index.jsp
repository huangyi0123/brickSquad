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
																				<a
																					href="${pageContext.request.contextPath }/MedicalInstruments/findColthType?typeId=shangyi"
																					class="item-link">
																					<span class="have-title">
																						<span class="menu-color" data-color="#cac14a"></span>
																						<span class="menu-title">上衣</span>
																					</span>
																				</a>
																			</li>
																			<li class="menu-cameras-camcorders etrostore-menu-custom level1">
																				<a
																					href="${pageContext.request.contextPath }/MedicalInstruments/findColthType?typeId=d81c3ee4d9d411e7b4095254002ec43c"
																					class="item-link">
																					<span class="have-title">
																						<span class="menu-color" data-color="#fe9901"></span>
																						<span class="menu-title">裤子</span>
																					</span>
																				</a>
																			</li>
																			<li class="menu-home-appliances etrostore-menu-custom level1">
																				<a
																					href="${pageContext.request.contextPath }/MedicalInstruments/findColthType?typeId=207c1edad9d911e7b4095254002ec43c"
																					class="item-link">
																					<span class="have-title">
																						<span class="menu-color" data-color="#f034ca"></span>
																						<span class="menu-title">鞋类</span>
																					</span>
																				</a>
																			</li>

																			<li class="menu-home-furniture etrostore-menu-custom level1">
																				<a
																					href="${pageContext.request.contextPath }/MedicalInstruments/findColthType?typeId=maozi"
																					class="item-link">
																					<span class="have-title">
																						<span class="menu-color" data-color="#7745bc"></span>
																						<span class="menu-title">帽子</span>
																					</span>
																				</a>
																			</li>

																			<li class="fix-menu dropdown menu-smartphones-tablet etrostore-mega-menu level1">
																				<a
																					href="${pageContext.request.contextPath }/MedicalInstruments/findColthType?typeId=yiliaoqixie"
																					class="item-link">
																					<span class="have-title">
																						<span class="menu-color" data-color="#42b8d1"></span>
																						<span class="menu-title">医疗器械</span>
																					</span>
																				</a>

																				<ul class="dropdown-menu nav-level1 column-3">

																					<li class="dropdown-submenu column-3 menu-electronics">
																						<a
																							>
																							<span class="have-title">
																								<span class="menu-title">老人康复用品</span>
																							</span>
																						</a>

																						<ul class="dropdown-sub nav-level2">
																							<li class="menu-laptop-desktop-accessories">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=be521083c9d611e7ac4b086266dc6d46">
																									<span class="have-title">
																										<span class="menu-title">脚踏车</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-storage-external-drives">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=">
																									<span class="have-title">
																										<span class="menu-title">按摩捶</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-networking-wireless">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=352abaa7c9d711e7ac4b086266dc6d46">
																									<span class="have-title">
																										<span class="menu-title">海绵褥疮垫 褥疮垫圈 </span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-motherboards-cpus-psus">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=70c6c602c9d711e7ac4b086266dc6d46">
																									<span class="have-title">
																										<span class="menu-title">护髌骨带登山老人护膝户外用品</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-webcams">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=06444f92c9d811e7ac4b086266dc6d46">
																									<span class="have-title">
																										<span class="menu-title">玖健康复训练器材</span>
																									</span>
																								</a>
																							</li>
																						</ul>
																					</li>




																					<li class="dropdown-submenu column-3 menu-smartphone">
																						<a
																							>
																							<span class="have-title">
																								<span class="menu-title">老年人日常生活用品</span>
																							</span>
																						</a>

																						<ul class="dropdown-sub nav-level2">
																							<li class="menu-mobile-phones">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=47a894e2ca0911e78b04086266dc6d46">
																									<span class="have-title">
																										<span class="menu-title">生日礼物</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-smart-watches-accessories">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=e30cf0f6ca0811e78b04086266dc6d46">
																									<span class="have-title">
																										<span class="menu-title">日本折叠拐杖</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-mobile-accessories">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=bef0ce5dca0911e78b04086266dc6d46">
																									<span class="have-title">
																										<span class="menu-title">母亲节礼物</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-cases-covers">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=97836bceca0a11e78b04086266dc6d46">
																									<span class="have-title">
																										<span class="menu-title">中秋节礼物</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-power-banks">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=fce2e8fbca0a11e78b04086266dc6d46">
																									<span class="have-title">
																										<span class="menu-title">无线呼叫器</span>
																									</span>
																								</a>
																							</li>
																						</ul>
																					</li>



																					<li class="dropdown-submenu column-3 menu-tablets">
																						<a
																							>
																							<span class="have-title">
																								<span class="menu-title">老人养生保健用品</span>
																							</span>
																						</a>

																						<ul class="dropdown-sub nav-level2">
																							<li class="menu-tablet-accessories">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=8a51515eca0311e78b04086266dc6d46">
																									<span class="have-title">
																										<span class="menu-title">敲打捶按摩锤按摩棒器</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-cases-covers">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=e02b36c3ca0311e78b04086266dc6d46">
																									<span class="have-title">
																										<span class="menu-title">生活大便褥疮垫</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-power-banks">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=5b77588cca0411e78b04086266dc6d46">
																									<span class="have-title">
																										<span class="menu-title">塑料便盆医疗器械保健用品</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-memory-cards">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=9c84cdd0ca0411e78b04086266dc6d46">
																									<span class="have-title">
																										<span class="menu-title">实用保健用品经络神器</span>
																									</span>
																								</a>
																							</li>
																						</ul>
																					</li>

																					<li class="dropdown-submenu column-3 menu-computer">
																						<a
																							>
																							<span class="have-title">
																								<span class="menu-title">老年人护理用品</span>
																							</span>
																						</a>

																						<ul class="dropdown-sub nav-level2">
																							<li class="menu-macbooks-imacs">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=1e0e4402ca0511e78b04086266dc6d46">
																									<span class="have-title">
																										<span class="menu-title">脚踏车康复器</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-computers-desktops">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=663cb560ca0511e78b04086266dc6d46">
																									<span class="have-title">
																										<span class="menu-title">老人用品防褥疮气垫床</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-printers-scanners-faxs">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=daaba997ca0511e78b04086266dc6d46">
																									<span class="have-title">
																										<span class="menu-title">家用防褥疮气床垫</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-laptop-desktop-accessories">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=81d8c4ffca0711e78b04086266dc6d46">
																									<span class="have-title">
																										<span class="menu-title">老人床上靠背椅架卧床</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-storage-external-drives">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=b3fc35e3ca0711e78b04086266dc6d46">
																									<span class="have-title">
																										<span class="menu-title">卧床大便盆</span>
																									</span>
																								</a>
																							</li>
																						</ul>
																					</li>

																					<li class="fix-position dropdown-submenu column-3 menu-image">
																						<ul class="dropdown-sub nav-level2">
																							<li class="menu-image-1 etrostore-menu-img">
																								<a
																									>
																									<span class="">
																										<span class="menu-img">
																											<img src="resource/front_bootstrap/images/1903/yiliao1.jpg"
																												alt="Menu Image" />
																										</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-image-2 etrostore-menu-img">
																								<a
																									>
																									<span class="">
																										<span class="menu-img">
																											<img src="resource/front_bootstrap/images/1903/yiliao2.jpg"
																												alt="Menu Image" />
																										</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-image-3 etrostore-menu-img">
																								<a
																									>
																									<span class="">
																										<span class="menu-img">
																											<img src="resource/front_bootstrap/images/1903/yiliao3.jpg"
																												alt="Menu Image" />
																										</span>
																									</span>
																								</a>
																							</li>
																						</ul>
																					</li>


																				</ul>




																			</li>
																			<li class="fix-menu dropdown menu-smartphones-tablet etrostore-mega-menu level1">
																				<a
																					href="${pageContext.request.contextPath }/MedicalInstruments/findColthType?typeId=e17e4e4cc67811e7aca65254002ec43c"
																					class="item-link dropdown-toggle">
																					<span class="have-title">
																						<span class="menu-color" data-color="#efc73a"></span>
																						<span class="menu-title">运动用品</span>
																					</span>
																				</a>

																				<ul class="dropdown-menu nav-level1 column-3">
																					<li class="dropdown-submenu column-3 menu-electronics">
																						<%-- href="${pageContext.request.contextPath }/MedicalInstruments/findColthType?typeId=" --%>
																						<a
																							>
																							<span class="have-title">
																								<span class="menu-title">户外服饰</span>
																							</span>
																						</a>

																						<ul class="dropdown-sub nav-level2">
																							<li class="menu-laptop-desktop-accessories">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=f2718720d96811e79dea5254002ec43c">
																									<span class="have-title">
																										<span class="menu-title">户外服装防寒登山服</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-storage-external-drives">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=fea73cecd96811e79dea5254002ec43c">
																									<span class="have-title">
																										<span class="menu-title">FMIX 防风防水保暖登山服</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-networking-wireless">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=0b418cf0d96911e79dea5254002ec43c">
																									<span class="have-title">
																										<span class="menu-title">FMIX 三合一冲锋衣两件套女</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-motherboards-cpus-psus">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=1895829ed96911e79dea5254002ec43c">
																									<span class="have-title">
																										<span class="menu-title">宝参人（Baoshenren） 2017秋冬服装</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-webcams">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=23884ad8d96911e79dea5254002ec43c">
																									<span class="have-title">
																										<span class="menu-title">盾郎透气保暖防寒加大码外套连帽加</span>
																									</span>
																								</a>
																							</li>
																						</ul>
																					</li>

																					<li class="dropdown-submenu column-3 menu-smartphone">
																						<a
																							>
																							<span class="have-title">
																								<span class="menu-title">户外工具</span>
																							</span>
																						</a>

																						<ul class="dropdown-sub nav-level2">
																							<li class="menu-mobile-phones">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=d859a834d96511e79dea5254002ec43c">
																									<span class="have-title">
																										<span class="menu-title">10倍20倍放大镜</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-smart-watches-accessories">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=e572da18d96511e79dea5254002ec43c">
																									<span class="have-title">
																										<span class="menu-title">LEATHERMAN 美国莱泽曼 Tread 穿戴手链</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-mobile-accessories">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=f21cc896d96511e79dea5254002ec43c">
																									<span class="have-title">
																										<span class="menu-title">菲莱仕（FEIRSH） 瑞士科技 </span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-cases-covers">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=fdf842a8d96511e79dea5254002ec43c">
																									<span class="have-title">
																										<span class="menu-title">菲莱仕（FEIRSH） 硬合金钢</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-power-banks">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=097b42f6d96611e79dea5254002ec43c">
																									<span class="have-title">
																										<span class="menu-title">高分贝防狼报警器</span>
																									</span>
																								</a>
																							</li>
																						</ul>
																					</li>

																					<li class="dropdown-submenu column-3 menu-tablets">
																						<a
																							>
																							<span class="have-title">
																								<span class="menu-title">旅行装备</span>
																							</span>
																						</a>

																						<ul class="dropdown-sub nav-level2">
																							<li class="menu-tablet-accessories">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=c0db3c44d96611e79dea5254002ec43c">
																									<span class="have-title">
																										<span class="menu-title">YUYI 直柄翠绿</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-cases-covers">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=ce4488aed96611e79dea5254002ec43c">
																									<span class="have-title">
																										<span class="menu-title">防褥疮气垫瘫痪</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-power-banks">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=d9cda322d96611e79dea5254002ec43c">
																									<span class="have-title">
																										<span class="menu-title">护理用品护理坐垫</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-memory-cards">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=e66145d0d96611e79dea5254002ec43c">
																									<span class="have-title">
																										<span class="menu-title">脚底按摩毯</span>
																									</span>
																								</a>
																							</li>
																						</ul>
																					</li>

																					<li class="dropdown-submenu column-3 menu-computer">
																						<a
																							>
																							<span class="have-title">
																								<span class="menu-title">野餐用具</span>
																							</span>
																						</a>

																						<ul class="dropdown-sub nav-level2">
																							<li class="menu-macbooks-imacs">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=738ceb12d96711e79dea5254002ec43c">
																									<span class="have-title">
																										<span class="menu-title">放大镜方形6LED</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-computers-desktops">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=926dd8acd96711e79dea5254002ec43c">
																									<span class="have-title">
																										<span class="menu-title">场景装饰圣诞用品 </span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-printers-scanners-faxs">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=9fe7846ad96711e79dea5254002ec43c">
																									<span class="have-title">
																										<span class="menu-title">户外雪人娃娃老人圣诞节礼物</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-laptop-desktop-accessories">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=ad83dbbed96711e79dea5254002ec43c">
																									<span class="have-title">
																										<span class="menu-title">便捷式烧水机 老年机-金3</span>
																									</span>
																								</a>
																							</li>


																						</ul>
																					</li>

																					<li class="fix-position dropdown-submenu column-3 menu-image">
																						<ul class="dropdown-sub nav-level2">
																							<li class="menu-image-1 etrostore-menu-img">
																								<a
																									>
																									<span class="">
																										<span class="menu-img">
																											<img src="resource/front_bootstrap/images/1903/yifu1.jpg"
																												alt="Menu Image" />
																										</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-image-2 etrostore-menu-img">
																								<a
																									>
																									<span class="">
																										<span class="menu-img">
																											<img src="resource/front_bootstrap/images/1903/cuiyin.jpg"
																												alt="Menu Image" />
																										</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-image-3 etrostore-menu-img">
																								<a
																									>
																									<span class="">
																										<span class="menu-img">
																											<img src="resource/front_bootstrap/images/1903/qixing.jpg"
																												alt="Menu Image" />
																										</span>
																									</span>
																								</a>
																							</li>
																						</ul>
																					</li>
																				</ul>

																			</li>

																			<li class="menu-television etrostore-menu-custom level1">
																				<a
																					href="${pageContext.request.contextPath }/MedicalInstruments/findColthType?typeId=37e17244c35611e7aca65254002ec43c"
																					class="item-link">
																					<span class="have-title">
																						<span class="menu-color" data-color="#3f5eca"></span>
																						<span class="menu-title">食品</span>
																					</span>
																				</a>
																			</li>

																			<li class="menu-accessories-for-tablet etrostore-menu-custom level1">
																				<a
																					href="${pageContext.request.contextPath }/MedicalInstruments/findColthType?typeId=05c27738c67911e7aca65254002ec43c"
																					class="item-link">
																					<span class="have-title">
																						<span class="menu-color" data-color="#13528c"></span>
																						<span class="menu-title">滋补养生</span>
																					</span>
																				</a>
																			</li>
																			<li class="dropdown menu-electronic-component etrostore-mega-menu level1">
																				<a
																					href="${pageContext.request.contextPath }/MedicalInstruments/findColthType?typeId=2bd80726c67911e7aca65254002ec43c"
																					class="item-link dropdown-toggle">
																					<span class="have-title">
																						<span class="menu-color" data-color="#f03442"></span>
																						<span class="menu-title">中西药品</span>
																					</span>
																				</a>

																				<ul class="dropdown-menu nav-level1 column-3">
																					<li class="dropdown-submenu column-3 menu-electronics etrostore-menu-img">
																						<a
																							>
																							<span class="have-title">
																								<span class="menu-img">
																									<img src="resource/front_bootstrap/images/1903/jinnv.jpg" alt="Menu Image" />
																								</span>
																								<span class="menu-title">家庭常备</span>
																							</span>
																						</a>

																						<ul class="dropdown-sub nav-level2">
																							<li class="menu-leds">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=4672c3bed97511e79dea5254002ec43c">
																									<span class="have-title">
																										<span class="menu-title">药油 居家常备</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-laptop-desktop-accessories">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=5285d326d97511e79dea5254002ec43c">
																									<span class="have-title">
																										<span class="menu-title">防蚊晕车醒脑提神</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-storage-external-drives">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=5d9bb640d97511e79dea5254002ec43c">
																									<span class="have-title">
																										<span class="menu-title">999 抗病毒口服液</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-networking-wireless">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=69c4ecb6d97511e79dea5254002ec43c">
																									<span class="have-title">
																										<span class="menu-title"> 桑姜感冒胶囊 </span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-motherboards-cpus-psus">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=750b3d1ed97511e79dea5254002ec43c">
																									<span class="have-title">
																										<span class="menu-title">正露丸</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-webcams">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=7efd70e4d97511e79dea5254002ec43c">
																									<span class="have-title">
																										<span class="menu-title">四季感冒片</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-gaming-mice">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=8a8c6596d97511e79dea5254002ec43c">
																									<span class="have-title">
																										<span class="menu-title">正露丸</span>
																									</span>
																								</a>
																							</li>


																						</ul>
																					</li>

																					<li class="dropdown-submenu column-3 menu-smartphone etrostore-menu-img">
																						<a
																							>
																							<span class="have-title">
																								<span class="menu-img">
																									<img src="resource/front_bootstrap/images/1903/yaowu.jpg" alt="Menu Image" />
																								</span>
																								<span class="menu-title">老人用药</span>
																							</span>
																						</a>

																						<ul class="dropdown-sub nav-level2">
																							<li class="menu-smartphones">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=19b82e30d97611e79dea5254002ec43c">
																									<span class="have-title">
																										<span class="menu-title">克痤隐酮凝胶</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-mobile-phones">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=34045c1ed97611e79dea5254002ec43c">
																									<span class="have-title">
																										<span class="menu-title"> 达克宁软膏  </span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-smart-watches-accessories">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=3f6662fad97611e79dea5254002ec43c">
																									<span class="have-title">
																										<span class="menu-title">汉苑良方百女用</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-mobile-accessories">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=504dec3cd97611e79dea5254002ec43c">
																									<span class="have-title">
																										<span class="menu-title">九芝堂</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-cases-covers">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=5c3978d6d97611e79dea5254002ec43c">
																									<span class="have-title">
																										<span class="menu-title">亮甲复方聚维酮碘</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-power-banks">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=6df6e4aad97611e79dea5254002ec43c">
																									<span class="have-title">
																										<span class="menu-title">润葆 尿素维E乳膏</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-memory-cards">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=79b8562ad97611e79dea5254002ec43c">
																									<span class="have-title">
																										<span class="menu-title">善存银片</span>
																									</span>
																								</a>
																							</li>
																						</ul>
																					</li>

																					<li class="dropdown-submenu column-3 menu-tablet etrostore-menu-img">
																						<a
																							>
																							<span class="have-title">
																								<span class="menu-img">
																									<img src="resource/front_bootstrap/images/1903/pingwei.jpg"
																										alt="Menu Image" />
																								</span>
																								<span class="menu-title">保健药</span>
																							</span>
																						</a>

																						<ul class="dropdown-sub nav-level2">
																							<li class="menu-tablets">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=ce0a283ed97611e79dea5254002ec43c">
																									<span class="have-title">
																										<span class="menu-title">AliKing东革阿里XP</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-tablet-accessories">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=db5bc86cd97611e79dea5254002ec43c">
																									<span class="have-title">
																										<span class="menu-title">昂立多邦</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-cases-covers">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=f9da9becd97611e79dea5254002ec43c">
																									<span class="have-title">
																										<span class="menu-title">收纳胶囊药品 </span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-power-banks">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=0890a74ed97711e79dea5254002ec43c">
																									<span class="have-title">
																										<span class="menu-title">番茄红素软胶囊</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-memory-cards">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=1354a554d97711e79dea5254002ec43c">
																									<span class="have-title">
																										<span class="menu-title">美国进口vigrx</span>
																									</span>
																								</a>
																							</li>

																							<li class="menu-headphonesheadsets">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=34704b58d97711e79dea5254002ec43c">
																									<span class="have-title">
																										<span class="menu-title">牡蛎片男性保健品</span>
																									</span>
																								</a>
																							</li>
																							<li class="menu-headphonesheadsets">
																								<a
																									href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=463eaf50d97711e79dea5254002ec43c">
																									<span class="have-title">
																										<span class="menu-title">脑白金老年装</span>
																									</span>
																								</a>
																							</li>
																						</ul>
																					</li>
																				</ul>
																			</li>
																			<li class="menu-laptops-accessories etrostore-menu-custom level1">
																				<a
																					href="${pageContext.request.contextPath }/MedicalInstruments/findColthType?typeId=497b8a32c67911e7aca65254002ec43c"
																					class="item-link">
																					<span class="have-title">
																						<span class="menu-color" data-color="#2f2e2e"></span>
																						<span class="menu-title">保健器械</span>
																					</span>
																				</a>
																			</li>

																			<li class="menu-blender etrostore-menu-custom level1" style="display: none;">
																				<a
																					href="${pageContext.request.contextPath }/MedicalInstruments/findColthType?typeId=72713fa4c67911e7aca65254002ec43c"
																					class="item-link">
																					<span class="have-title">
																						<span class="menu-color" data-color="#e93434"></span>
																						<span class="menu-title">眼镜服务</span>
																					</span>
																				</a>
																			</li>

																			<li class="menu-vacuum-cleaner etrostore-menu-custom level1"
																				style="display: none;">
																				<a
																					href="${pageContext.request.contextPath }/MedicalInstruments/findColthType?typeId=92d83f5ec67911e7aca65254002ec43c"
																					class="item-link">
																					<span class="have-title">
																						<span class="menu-color" data-color="#f034ca"></span>
																						<span class="menu-title">护理用具</span>
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
																								<img src="resource/front_bootstrap/images/1903/lunbo111.jpg" alt="slider1"
																									class="img-responsive" height="559">
																							</a>
																						</div>
																						<div class="item">
																							<a>
																								<img src="resource/front_bootstrap/images/1903/01_index_v1.jpg"
																									alt="slider2" class="img-responsive" height="559">
																							</a>
																						</div>
																						<div class="item">
																							<a>
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
																	<figure class="wpb_wrapper vc_figure"> <a target="_self"
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


											</div>
										</div>
									</div>
								</div>

								<div class="vc_row-full-width vc_clearfix"></div>
								<!-----------------------------------------------------------------------------  -->
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

														</div>

														<div class="banner-content clearfix">
															<img width="195" height="354" src="images/1903/image-cd.jpg"
																class="attachment-larges size-larges" alt=""
																srcset="resource/front_bootstrap/images/1903/image-cd.jpg 195w, resource/front_bootstrap/images/1903/image-cd-165x300.jpg 165w"
																sizes="(max-width: 195px) 100vw, 195px" />
														</div>

														<div class="slider responsive">

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
																						title="${a.aname }">${a.aname }</a>
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
																					<a rel="nofollow" href="javascript:;" class="button product_type_simple  "
																						title="加入购物车" onclick="addcar('${a.id}')">加入购物车</a>
																					<div class="yith-wcwl-add-to-wishlist ">
																						<div class=" show" style="display:block">
																							<a href="javascript:;" rel="nofollow" title="加入收藏"
																								onclick="addWish('${a.id}')"> 加入收藏</a>
																						</div>
																					</div>

																				</div>
																			</div>
																		</div>
																	</div>
																</div>
															</c:forEach>
															<!-- 
															<div class="item-countdown product" id="product_sw_countdown_04">
																<div class="item-wrap">
																	<div class="item-detail">
																		<div class="item-content">
																			rating 
																			<div class="reviews-content">
																				<div class="star"></div>

																				<div class="item-number-rating">0 Review(s)</div>
																			</div>
																			end rating 

																			<h4>
																				<a href="simple_product.html" title="philips stand">philips stand</a>
																			</h4>

																			Price
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

																			add to cart, wishlist, compare
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
																			rating 
																			<div class="reviews-content">
																				<div class="star">
																					<span style="width:52.5px"></span>
																				</div>

																				<div class="item-number-rating">4 Review(s)</div>
																			</div>
																			end rating 

																			<h4>
																				<a href="simple_product.html" title="Vacuum cleaner">Vacuum cleaner</a>
																			</h4>

																			Price
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

																			add to cart, wishlist, compare
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
																			rating 
																			<div class="reviews-content">
																				<div class="star"></div>
																				<div class="item-number-rating">0 Review(s)</div>
																			</div>
																			end rating 

																			<h4>
																				<a href="simple_product.html" title="nisi ball tip">Nisi ball tip</a>
																			</h4>

																			Price
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

																			add to cart, wishlist, compare
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
																			rating 
																			<div class="reviews-content">
																				<div class="star"></div>
																				<div class="item-number-rating">0 Review(s)</div>
																			</div>
																			end rating 

																			<h4>
																				<a href="simple_product.html" title="MacBook Air">MacBook Air</a>
																			</h4>

																			Price
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

																			add to cart, wishlist, compare
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
														
														 -->
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!---------------------------------------------------------------------------  -->
								<div class="vc_row wpb_row vc_row-fluid margin-bottom-60">
									<!-------------------------------------------------  -->
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
																		<a
																			href="${pageContext.request.contextPath }/MedicalInstruments/findColthType?typeId=shangyi">上衣</a>
																	</li>
																	<li>
																		<a
																			href="${pageContext.request.contextPath }/MedicalInstruments/findColthType?typeId=kuzi">裤子</a>
																	</li>
																	<li>
																		<a
																			href="${pageContext.request.contextPath }/MedicalInstruments/findColthType?typeId=xielei">鞋类</a>
																	</li>
																	<li>
																		<a
																			href="${pageContext.request.contextPath }/MedicalInstruments/findColthType?typeId=maozi">帽子</a>
																	</li>
																	<li>
																		<a
																			href="${pageContext.request.contextPath }/MedicalInstruments/findColthType?typeId=yiliaoqixie">医疗器械</a>
																	</li>
																	<li>
																		<a
																			href="${pageContext.request.contextPath }/MedicalInstruments/findColthType?typeId=e17e4e4cc67811e7aca65254002ec43c">运动用品</a>
																	</li>
																	<li></li>
																</ul>

															</div>

															<div class="view-all">
																<a href="new_deals/findHotArticle" style="margin-right: 70px"> 查看更多</a>
															</div>

															<!-- <div class="view-all">
																<i class="fa  fa-caret-right"></i>
															</div> -->
														</div>
													</div>

													<div class="content-slider">
														<div class="childcat-slider-content clearfix">
															<!-- Brand -->
															<div class="child-cat-brand pull-left">
																<div class="item-brand">
																	<a href="javascript:;">
																		<img width="170" height="90" src="resource/front_bootstrap/images/1903/br4.jpg"
																			class="attachment-170x90 size-170x90" alt="" />
																	</a>
																</div>

																<div class="item-brand">
																	<a href="javascript:;">
																		<img width="170" height="90" src="resource/front_bootstrap/images/1903/br2.jpg"
																			class="attachment-170x90 size-170x90" alt="" />
																	</a>
																</div>

																<div class="item-brand">
																	<a href="javascript:;">
																		<img width="170" height="90" src="resource/front_bootstrap/images/1903/br3.jpg"
																			class="attachment-170x90 size-170x90" alt="" />
																	</a>
																</div>

																<div class="item-brand">
																	<a href="javascript:;">
																		<img width="170" height="90" src="resource/front_bootstrap/images/1903/br5.jpg"
																			class="attachment-170x90 size-170x90" alt="" />
																	</a>
																</div>

																<div class="item-brand">
																	<a href="javascript:;">
																		<img width="170" height="87"
																			src="resource/front_bootstrap/images/1903/Brand_1.jpg"
																			class="attachment-170x90 size-170x90" alt="" />
																	</a>
																</div>
															</div>

															<!-- slider content -->
															<div class="resp-slider-container">
																<div class="slider responsive">
																	<c:forEach var="a" items="${rArticles }" varStatus="p">
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
																									title="加入购物车" onclick="addcar('${a[0].id}')">加入购物车</a>

																								<div class="yith-wcwl-add-to-wishlist ">
																									<div class=" show" style="display:block">
																										<a href="javascript:;" onclick="addWish('${a[0].id}')" rel="nofollow"
																											title="加入收藏">加入收藏</a>
																									</div>

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
																								title="${a[0].aname }">${a[0].aname }</a>
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
																								onclick="addcar('${a[1].id}')">加入购物车</a>
																							<div class="yith-wcwl-add-to-wishlist ">
																								<div class=" show" style="display:block">
																									<a href="javascript:;" rel="nofollow" title="加入收藏"
																										onclick="addWish('${a[1].id}')">加入收藏</a>
																								</div>
																							</div>

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
																								title="${a[1].aname }">${a[1].aname }</a>
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
																						title="${a.aname }">
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
																								title="${a.aname }">${a.aname }</a>
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
									<!-----------------------------------------------------------------  -->
								</div>

								<div class="vc_row wpb_row vc_row-fluid margin-bottom-60">
									<div class="wpb_column vc_column_container vc_col-sm-6">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<div class="wpb_single_image wpb_content_element vc_align_center">
													<figure class="wpb_wrapper vc_figure"> <a href="javascript:;" target="_self"
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
													<figure class="wpb_wrapper vc_figure"> <a href="javascript:;" target="_self"
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
									<!------------------------------------------------------  -->
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
																			<a
																				href="${pageContext.request.contextPath }/MedicalInstruments/findColthType?typeId=shangyi">上衣</a>
																		</li>
																		<li>
																			<a
																				href="${pageContext.request.contextPath }/MedicalInstruments/findColthType?typeId=kuzi">裤子</a>
																		</li>
																		<li>
																			<a
																				href="${pageContext.request.contextPath }/MedicalInstruments/findColthType?typeId=xielei">鞋类</a>
																		</li>
																		<li>
																			<a
																				href="${pageContext.request.contextPath }/MedicalInstruments/findColthType?typeId=maozi">帽子</a>
																		</li>
																		<li>
																			<a
																				href="${pageContext.request.contextPath }/MedicalInstruments/findColthType?typeId=yiliaoqixie">医疗器械</a>
																		</li>
																		<li>
																			<a
																				href="${pageContext.request.contextPath }/MedicalInstruments/findColthType?typeId=e17e4e4cc67811e7aca65254002ec43c">运动用品</a>
																		</li>


																		<li></li>

																	</ul>

																</div>
																<div class="view-all">
																	<a href="new_deals/tonew_deals" style="margin-right: 70px"> 查看更多</a>
																</div>

																<!-- <div class="view-all" style="margin-right: 70px">
																	<i class="fa  fa-caret-right"></i>
																</div> -->
															</div>
														</div>

														<div class="content-slider">
															<div class="childcat-slider-content clearfix">
																<!-- Brand -->
																<div class="child-cat-brand pull-left">
																	<div class="item-brand">
																		<a href="javascript:;">
																			<img width="170" height="90" src="resource/front_bootstrap/images/1903/br2.jpg"
																				class="attachment-170x90 size-170x90" alt="" />
																		</a>
																	</div>

																	<div class="item-brand">
																		<a href="javascript:;">
																			<img width="170" height="90" src="resource/front_bootstrap/images/1903/br5.jpg"
																				class="attachment-170x90 size-170x90" alt="" />
																		</a>
																	</div>

																	<div class="item-brand">
																		<a href="javascript:;">
																			<img width="170" height="90" src="resource/front_bootstrap/images/1903/br4.jpg"
																				class="attachment-170x90 size-170x90" alt="" />
																		</a>
																	</div>

																	<div class="item-brand">
																		<a href="javascript:;">
																			<img width="170" height="90" src="resource/front_bootstrap/images/1903/br3.jpg"
																				class="attachment-170x90 size-170x90" alt="" />
																		</a>
																	</div>

																	<div class="item-brand">
																		<a href="javascript:;">
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
																									title="加入购物车" onclick="addcar('${a[0].id }')">加入购物车</a>

																								<div class="yith-wcwl-add-to-wishlist ">
																									<div class=" show" style="display:block">
																										<a href="javascript:;" rel="nofollow" class="" title="添加收藏"
																											onclick="addWish('${a[0].id}')">添加收藏</a>
																									</div>



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
																									title="${a[0].aname }">${a[0].aname }</a>
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

																									<div class="yith-wcwl-add-to-wishlist ">
																										<div class=" show" style="display:block">
																											<a href="javascript:;" rel="nofollow" class="" title="添加收藏"
																												onclick="addWish('${a[1].id}')">添加收藏</a>
																										</div>


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
																									title="${a[1].aname }">${a[1].aname }</a>
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
																							title="${a.aname }">${a.aname }</a>
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
									<!--------------------------------------------------------------  -->
									<div class="vc_row wpb_row vc_row-fluid margin-bottom-60">
										<div class="wpb_column vc_column_container vc_col-sm-6">
											<div class="vc_column-inner ">
												<div class="wpb_wrapper">
													<div class="wpb_single_image wpb_content_element vc_align_center">
														<figure class="wpb_wrapper vc_figure"> <a href="javascript:;" target="_self"
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
														<figure class="wpb_wrapper vc_figure"> <a href="javascript:;" target="_self"
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
										<!----------------------------------------------  -->
										
										<!-----------------------------------------------------  -->
									
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
																		<a
																			href="${pageContext.request.contextPath }/MedicalInstruments/findColthType?typeId=">电视机</a>
																	</li>
																	<li>
																		<a
																			href="${pageContext.request.contextPath }/MedicalInstruments/findColthType?typeId=">空气清新剂</a>
																	</li>
																	<li>
																		<a
																			href="${pageContext.request.contextPath }/MedicalInstruments/findColthType?typeId=">老人电脑
																			& 老人手机</a>
																	</li>
																	<li>
																		<a
																			href="${pageContext.request.contextPath }/MedicalInstruments/findColthType?typeId=">古董手表配件</a>
																	</li>
																	<li>
																		<a
																			href="${pageContext.request.contextPath }/MedicalInstruments/findColthType?typeId=">锻炼设施</a>
																	</li>
																	<li></li>
																</ul>
															</div>

															<!-- <div class="view-all">
																<a href="shopIndex/toShop" style="margin-right: 70px"> 查看更多</a>
															</div> -->


														</div>
													</div>

													<div class="content-slider">
														<div class="childcat-slider-content clearfix">
															<!-- Brand -->
															<div class="child-cat-brand pull-left">
																<div class="item-brand">
																	<a href="javascript:;">
																		<img width="170" height="87"
																			src="resource/front_bootstrap/images/1903/Brand_1.jpg"
																			class="attachment-170x90 size-170x90" alt="" />
																	</a>
																</div>

																<div class="item-brand">
																	<a href="javascript:;">
																		<img width="170" height="90" src="resource/front_bootstrap/images/1903/br5.jpg"
																			class="attachment-170x90 size-170x90" alt="" />
																	</a>
																</div>

																<div class="item-brand">
																	<a href="javascript:;">
																		<img width="170" height="90" src="resource/front_bootstrap/images/1903/br2.jpg"
																			class="attachment-170x90 size-170x90" alt="" />
																	</a>
																</div>

																<div class="item-brand">
																	<a href="javascript:;">
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
																							<a rel="nofollow" href="javascript:;" onclick="addcar('${a[0].id}')"
																								class="button product_type_simple" title="加入购物车">加入购物车6</a>
																							<div class="yith-wcwl-add-to-wishlist ">
																								<div class=" show" style="display:block">
																									<a href="javascript:;" onclick="addWish('${a[0].id}')" rel="nofollow"
																										title="加入收藏">添加收藏</a>
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
																								title="${a[0].aname }">${a[0].aname }</a>
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
																									class="button product_type_simple" title="加入购物车">加入购物车</a>

																								<div class="yith-wcwl-add-to-wishlist ">
																									<div class=" show" style="display:block">
																										<a href="javascript:;" onclick="addWish('${a[1].id}')" rel="nofollow"
																											title="加入收藏">加入收藏</a>

																									</div>
																								</div>
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
																								title="${a[1].aname }">${a[1].aname }</a>
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
			function addcar(id) {
				$.ajax({
					url : 'MedicalInstruments/addCartMedicalInstruments',
					data : {
						articleId : id
					},
					type : 'post',
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
			function addWish(id) {
				$.ajax({
					url : 'MedicalInstruments/addWishlistMedicalInstruments',
					data : {
						articleId : id
					},
					type : 'post',
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
