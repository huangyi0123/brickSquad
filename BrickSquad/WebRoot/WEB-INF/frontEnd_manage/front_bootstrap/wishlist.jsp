<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">	
	<title>Etro Store - Premium Multipurpose HTML5/CSS3 Theme</title>
	<meta charset="utf-8" />
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	
	<!-- FAVICONS -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="resource/front_bootstrap/icons/apple-touch-icon-144-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="resource/front_bootstrap/icons/apple-touch-icon-114-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="resource/front_bootstrap/icons/apple-touch-icon-72-precomposed.png" />
    <link rel="apple-touch-icon-precomposed" href="resource/front_bootstrap/icons/apple-touch-icon-57-precomposed.png" />
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
	<link rel="stylesheet" href="resource/front_bootstrap/css/woocommerce/woocommerce-layout.css" />
	<link rel="stylesheet" href="resource/front_bootstrap/css/woocommerce/woocommerce-smallscreen.css" />
	<link rel="stylesheet" href="resource/front_bootstrap/css/yith-woocommerce-wishlist/style.css" />
	
	
	<link rel="stylesheet" href="resource/front_bootstrap/css/custom.css" />
	<link rel="stylesheet" href="resource/front_bootstrap/css/app-orange.css" id="theme_color" />
	<link rel="stylesheet" href="" id="rtl" /> 
	<link rel="stylesheet" href="resource/front_bootstrap/css/app-responsive.css" />
</head>

<body class="page woocommerce-wishlist woocommerce woocommerce-page">

     


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
										<div class="call-us"><span>Call Us Now: </span>0123-444-666654123</div>
									</div>
								</div>
							</div>
							
							<div class="widget text-3 widget_text pull-left">
								<div class="widget-inner">
									<div class="textwidget">
										<div id="lang_sel">
											<ul class="nav">
												<li>
													<a class="lang_sel_sel icl-en">
														<img class="iclflag" title="English" alt="en" src="resource/front_bootstrap/images/icons/en.png" width="18" height="12" /> English
													</a>
													<ul>
														<li class="icl-en">
															<a href="#">
																<img class="iclflag" title="English" alt="en" src="resource/front_bootstrap/images/icons/en.png" width="18" height="12" /> English
															</a>
														</li>
														
														<li class="icl-ar">
															<a href="#">
																<img class="iclflag" title="Arabic" alt="ar" src="resource/front_bootstrap/images/icons/ar.png" width="18" height="12" /> Arabic
															</a>
														</li>
													</ul>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							
							<div class="widget woocommerce_currency_converter-2 widget_currency_converter pull-left">
								<div class="widget-inner">
									<form method="post" class="currency_converter" action="">
										<ul class="currency_w">
											<li>
												<a href="#" class="">USD</a>
												<ul class="currency_switcher">
													<li><a href="#" class="reset default active" data-currencycode="USD">USD</a></li>
													<li><a href="#" class="" data-currencycode="EUR">EUR</a></li>
												</ul>
											</li>
										</ul>
									</form>
								</div>
							</div>
						</div>
						
						<div class="wrap-myacc pull-right">
							<div class="sidebar-account pull-left">
								<div class="account-title">My account</div>
                        
								<div id="my-account" class="my-account">
									<div class="widget-1 widget-first widget nav_menu-4 widget_nav_menu">
										<div class="widget-inner">
											<ul id="menu-my-account" class="menu">
												<li class="menu-my-account">
													<a class="item-link" href="my_account.html">
														<span class="menu-title">My Account</span>
													</a>
												</li>
												
												<li class="menu-cart">
													<a class="item-link" href="cart.html">
														<span class="menu-title">Cart</span>
													</a>
												</li>
												
												<li class="menu-checkout">
													<a class="item-link" href="checkout.html">
														<span class="menu-title">Checkout</span>
													</a>
												</li>
												
												<li class="menu-wishlist">
													<a class="item-link" href="common/toWishlist">
														<span class="menu-title">我的收藏</span>
													</a>
												</li>
											</ul>
										</div>
									</div>
									
									<div class="widget-2 widget-last widget sw_top-4 sw_top">
										<div class="widget-inner">
											<div class="top-login">
												<div class="div-logined">
													<ul>
														<li>
															<a href="javascript:void(0);" data-toggle="modal" data-target="#login_form">
																<span>Login</span>
															</a>
															<span class="wg">Welcome Guest</span>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							<div class="pull-left top2">
								<div class="widget-1 widget-first widget nav_menu-2 widget_nav_menu">
									<div class="widget-inner">
										<ul id="menu-checkout" class="menu">
											<li class="menu-checkout">
												<a class="item-link" href="checkout.html">
													<span class="menu-title">Checkout</span>
												</a>
											</li>
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
							<a href="home_page_1.html">
								<img src="resource/front_bootstrap/images/icons/logo-orange.png" alt="Shoopy">
							</a>
						</div>
						
						<div class="mid-header pull-right">
							<div class="widget-1 widget-first widget sw_top-2 sw_top">
								<div class="widget-inner">
									<div class="top-form top-search">
										<div class="topsearch-entry">
											<form method="get" action="">
												<div>
												   <input type="text" value="" name="s" placeholder="Enter your keyword...">	
													<div class="cat-wrapper">
														<label class="label-search">
															<select name="search_category" class="s1_option">
																<option value="">All Categories</option>
																<option value="8">Computers & Laptops</option>
																<option value="13">Computers & Networking</option>
																<option value="14">Smartphones & Tablet</option>
																<option value="15">Home Furniture</option>
																<option value="16">Home Appliances</option>
																<option value="17">Electronic Component</option>
																<option value="18">Household Goods</option>
																<option value="32">Appliances</option>
																<option value="49">Accessories</option>
																<option value="51">Electronics</option>
																<option value="78">Televisions</option>
																<option value="80">Cameras & Accessories</option>
															</select>
														</label>
													</div>
													
													<button type="submit" title="Search" class="fa fa-search button-search-pro form-button"></button>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>
							
							<div class="widget sw_top-3 sw_top pull-left">
								<div class="widget-inner">
									<div class="top-form top-form-minicart etrostore-minicart pull-right">
										<div class="top-minicart-icon pull-right">
											<i class="fa fa-shopping-cart"></i>
											<a class="cart-contents" href="cart.html" title="View your shopping cart">
												<span class="minicart-number">2</span>
											</a>
										</div>
										
										<div class="wrapp-minicart">
											<div class="minicart-padding">
												<div class="number-item">
													There are <span>items</span> in your cart
												</div>
												
												<ul class="minicart-content">
													<li>
														<a href="simple_product.html" class="product-image">
															<img 	width="100" height="100" src="images/1903/45-150x150.jpg" class="attachment-100x100 size-100x100 wp-post-image" alt="" 
																	srcset="resource/front_bootstrap/images/1903/45-150x150.jpg 150w, resource/front_bootstrap/images/1903/45-300x300.jpg 300w, resource/front_bootstrap/images/1903/45-180x180.jpg 180w, resource/front_bootstrap/images/1903/45.jpg 600w" 
																	sizes="(max-width: 100px) 100vw, 100px" />
														</a>
														
														<div class="detail-item">
															<div class="product-details">
																<h4>
																	<a class="title-item" href="simple_product.html">Veniam Dolore</a>
																</h4>
																
																<div class="product-price">
																	<span class="price">
																		<span class="woocommerce-Price-amount amount">
																			<span class="woocommerce-Price-currencySymbol">$</span>190.00
																		</span>
																	</span>
																	
																	<div class="qty">
																		<span class="qty-number">1</span>									
																	</div>
																</div>
																
																<div class="product-action clearfix">
																	<a href="#" class="btn-remove" title="Remove this item">
																		<span class="fa fa-trash-o"></span>
																	</a>
																	
																	<a class="btn-edit" href="cart.html" title="View your shopping cart">
																		<span class="fa fa-pencil"></span>
																	</a>    
																</div>
															</div>
														</div>
													</li>
													
													<li>
														<a href="simple_product.html" class="product-image">
															<img 	width="100" height="100" src="images/1903/22-150x150.jpg" class="attachment-100x100 size-100x100 wp-post-image" alt="" 
																	srcset="resource/front_bootstrap/images/1903/22-150x150.jpg 150w, resource/front_bootstrap/images/1903/22-300x300.jpg 300w, resource/front_bootstrap/images/1903/22-180x180.jpg 180w, resource/front_bootstrap/images/1903/22.jpg 600w" 
																	sizes="(max-width: 100px) 100vw, 100px" />
														</a>
														
														<div class="detail-item">
															<div class="product-details">
																<h4>
																	<a class="title-item" href="simple_product.html">Cleaner with bag</a>
																</h4>
																
																<div class="product-price">
																	<span class="price">
																		<span class="woocommerce-Price-amount amount">
																			<span class="woocommerce-Price-currencySymbol">$</span>350.00
																		</span>
																	</span>
																	
																	<div class="qty">
																		<span class="qty-number">1</span>									
																	</div>
																</div>
																
																<div class="product-action clearfix">
																	<a href="#" class="btn-remove" title="Remove this item">
																		<span class="fa fa-trash-o"></span>
																	</a>
																	
																	<a class="btn-edit" href="cart.html" title="View your shopping cart">
																		<span class="fa fa-pencil"></span>
																	</a>
																</div>
															</div>
														</div>
													</li>
												</ul>
												
												<div class="cart-checkout">
													<div class="price-total">
														<span class="label-price-total">Total</span>
														
														<span class="price-total-w">
															<span class="price">
																<span class="woocommerce-Price-amount amount">
																	<span class="woocommerce-Price-currencySymbol">$</span>540.00
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
										<li class="menu-wishlist">
											<a class="item-link" href="wishlist.html">
												<span class="menu-title">Wishlist</span>
											</a>
										</li>
										
										<li class="yith-woocompare-open menu-compare">
											<a class="item-link compare" href="#">
												<span class="menu-title">Compare</span>
											</a>
										</li>
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
										<button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#ResMenuprimary_menu">
											<span class="sr-only">Categories</span>
											<span class="icon-bar"></span>
											<span class="icon-bar"></span>
											<span class="icon-bar"></span>
										</button>
										
										<div id="ResMenuprimary_menu" class="collapse menu-responsive-wrapper">
											<ul id="menu-primary-menu" class="etrostore_resmenu">
												<li class="res-dropdown menu-home">
													<a class="item-link dropdown-toggle" href="home_page_1.html">Home</a>
													<span class="show-dropdown"></span>
													
													<ul class="dropdown-resmenu">
														<li class="res-dropdown menu-home-pages">
															<a class="item-link dropdown-toggle" href="#">Home Pages</a>
															<span class="show-dropdown"></span>
															
															<ul class="dropdown-resmenu">
																<li class="menu-home-page-1">
																	<a href="home_page_1.html">Home Page 1</a>
																</li>
																
																<li class="menu-home-page-2">
																	<a href="home_page_2.html">Home Page 2</a>
																</li>
																
																<li class="menu-home-page-3">
																	<a href="home_page_3.html">Home Page 3</a>
																</li>
																
																<li class="menu-home-page-4">
																	<a href="home_page_4.html">Home Page 4</a>
																</li>
																
																<li class="menu-home-page-5">
																	<a href="home_page_5.html">Home Page 5</a>
																</li>
																
																<li class="menu-home-page-boxed">
																	<a href="home_page_1_boxed.html">Home Page Boxed</a>
																</li>
																
																<li class="menu-home-page-full">
																	<a href="home_page_1_full.html">Home Page Full</a>
																</li>
															</ul>
														</li>
														
														<li class="res-dropdown menu-color-styles">
															<a class="item-link dropdown-toggle" href="#">Color Styles</a>
															<span class="show-dropdown"></span>
															
															<ul class="dropdown-resmenu">
																<li class="menu-default">
																	<a data-theme="default">Default</a>
																</li>
																
																<li class="menu-orange">
																	<a data-theme="orange">Orange</a>
																</li>
															</ul>
														</li>
														
														<li class="res-dropdown menu-advanced">
															<a class="item-link dropdown-toggle" href="#">Advanced</a>
															<span class="show-dropdown"></span>
															
															<ul class="dropdown-resmenu">
																<li class="menu-default">
																	<a data-advanced="ltr">Left to right</a>
																</li>
																
																<li class="menu-orange">
																	<a data-advanced="rtl">Right to left</a>
																</li>
															</ul>
														</li>
													</ul>
												</li>
												
												<li class="active res-dropdown menu-shop">
													<a class="item-link dropdown-toggle" href="#">Shop</a>
													<span class="show-dropdown"></span>
													
													<ul class="dropdown-resmenu">
														<li class="active res-dropdown menu-shop-pages">
															<a class="item-link dropdown-toggle" href="#">Shop Pages</a>
															<span class="show-dropdown"></span>
															
															<ul class="dropdown-resmenu">
																<li class="menu-shop">
																	<a href="shop.html">Shop</a>
																</li>
																
																<li class="menu-cart">
																	<a href="cart.html">Cart</a>
																</li>
																
																<li class="menu-checkout">
																	<a href="checkout.html">Checkout</a>
																</li>
																
																<li class="menu-my-account">
																	<a href="my_account.html">My Account</a>
																</li>
																
																<li class="active menu-wishlist">
																	<a href="wishlist.html">Wishlist</a>
																</li>
															</ul>
														</li>
													  
														<li class="res-dropdown menu-shop-layouts">
															<a class="item-link dropdown-toggle" href="#">Shop Layouts</a>
															<span class="show-dropdown"></span>
															
															<ul class="dropdown-resmenu">
																<li class="menu-right-sidebar-grid">
																	<a href="shop_right_sidebar.html">Right Sidebar Grid</a>
																</li>
																
																<li class="menu-left-sidebar-grid">
																	<a href="shop_left_sidebar.html">Left Sidebar Grid</a>
																</li>
																
																<li class="menu-full-width-grid">
																	<a href="shop_full_width.html">Full Width Grid</a>
																</li>
																
																<li class="menu-2-columns-grid">
																	<a href="shop_two_columns.html">2 Columns Grid</a>
																</li>
																
																<li class="menu-3-columns-grid">
																	<a href="shop_three_columns.html">3 Columns Grid</a>
																</li>
																
																<li class="menu-4-columns-grid">
																	<a href="shop_four_columns.html">4 Columns Grid</a>
																</li>
															</ul>
														</li>
													  
														<li class="res-dropdown menu-product-types">
															<a class="item-link dropdown-toggle" href="#">Product Types</a>
															<span class="show-dropdown"></span>
															
															<ul class="dropdown-resmenu">
																<li class="menu-simple-product">
																	<a href="simple_product.html">Simple Product</a>
																</li>
																
																<li class="menu-variable-product">
																	<a href="variable_product.html">Variable Product</a>
																</li>
																
																<li class="menu-group-product">
																	<a href="group_product.html">Group Product</a>
																</li>
																
																<li class="menu-externalaffiliate-product">
																	<a href="externalaffiliate_product.html">External/Affiliate Product</a>
																</li>
															</ul>
														</li>
													  
														<li class="res-dropdown menu-product-layouts">
															<a class="item-link dropdown-toggle" href="#">Product Layouts</a>
															<span class="show-dropdown"></span>
															
															<ul class="dropdown-resmenu">
																<li class="menu-full-width">
																	<a href="sidebar_product_full.html">Full width</a>
																</li>
																
																<li class="menu-left-sidebar">
																	<a href="sidebar_product_left.html">Left Sidebar</a>
																</li>
																
																<li class="menu-right-sidebar">
																	<a href="sidebar_product_right.html">Right Sidebar</a>
																</li>
															</ul>
														</li>
													</ul>
												</li>
											
												<li class="res-dropdown menu-smartphones-tablet">
													<a class="item-link dropdown-toggle" href="#">Smartphones & Tablet</a>
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
																
																<li class="menu-gaming">
																	<a href="#">Gaming</a>
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
																
																<li class="menu-headphonesheadsets">
																	<a href="#">Headphones/Headsets</a>
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
												  
														<li class="res-dropdown menu-computer">
															<a class="item-link dropdown-toggle" href="#">Computer</a>
															<span class="show-dropdown"></span>
															
															<ul class="dropdown-resmenu">
																<li class="menu-computers">
																	<a href="#">Computers</a>
																</li>
																
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
																
																<li class="menu-networking-wireless">
																	<a href="#">Networking & Wireless</a>
																</li>
																
																<li class="menu-motherboards-cpus-psus">
																	<a href="#">Motherboards, CPUs & PSUs</a>
																</li>
															</ul>
														</li>
													</ul>
												</li>
												
												<li class="res-dropdown menu-blog">
													<a class="item-link dropdown-toggle" href="#">Blog</a>
													<span class="show-dropdown"></span>
													
													<ul class="dropdown-resmenu">
														<li class="res-dropdown menu-blog-layouts">
															<a class="item-link dropdown-toggle" href="#">Blog Layouts</a>
															<span class="show-dropdown"></span>
															
															<ul class="dropdown-resmenu">
																<li class="menu-left-sidebar-default">
																	<a href="blog_left_sidebar.html">Left Sidebar Default</a>
																</li>
																
																<li class="menu-left-sidebar-list">
																	<a href="blog_left_sidebar_list.html">Left Sidebar List</a>
																</li>
																
																<li class="menu-right-sidebar-list">
																	<a href="blog_right_sidebar_list.html">Right Sidebar List</a>
																</li>
																
																<li class="menu-full-width-list">
																	<a href="blog_full_width_list.html">Full width List</a>
																</li>
															</ul>
														</li>
														
														<li class="res-dropdown menu-blog-layouts-2">
															<a class="item-link dropdown-toggle" href="#">Blog Layouts 2</a>
															<span class="show-dropdown"></span>
															
															<ul class="dropdown-resmenu">
																<li class="menu-2-columns-grid">
																	<a href="blog_two_columns.html">2 Columns Grid</a>
																</li>
																
																<li class="menu-3-columns-grid">
																	<a href="blog_three_columns.html">3 Columns Grid</a>
																</li>
																
																<li class="menu-4-columns-grid">
																	<a href="blog_four_columns.html">4 Columns Grid</a>
																</li>
															</ul>
														</li>
														
														<li class="res-dropdown menu-post-formats">
															<a class="item-link dropdown-toggle" href="#">Post Formats</a>
															<span class="show-dropdown"></span>
															
															<ul class="dropdown-resmenu">
																<li class="menu-post-format-image">
																	<a href="post_format_image.html">Post Format : Image</a>
																</li>
																
																<li class="menu-post-format-audio">
																	<a href="post_format_audio.html">Post Format : Audio</a>
																</li>
																
																<li class="menu-post-format-gallery">
																	<a href="post_format_gallery.html">Post Format : Gallery</a>
																</li>
																
																<li class="menu-post-format-video">
																	<a href="post_format_video.html">Post Format : Video</a>
																</li>
															</ul>
														</li>
														
														<li class="res-dropdown menu-post-layouts">
															<a class="item-link dropdown-toggle" href="#">Post Layouts</a>
															<span class="show-dropdown"></span>
															
															<ul class="dropdown-resmenu">
																<li class="menu-full-width">
																	<a href="post_layout_full_width.html">Full Width</a>
																</li>
																
																<li class="menu-left-sidebar">
																	<a href="post_layout_left_sidebar.html">Left Sidebar</a>
																</li>
																
																<li class="menu-right-sidebar">
																	<a href="post_layout_right_sidebar.html">Right Sidebar</a>
																</li>
															</ul>
														</li>
													</ul>
												</li>
												
												<li class="menu-deals">
													<a class="item-link" href="deals.html">Deals</a>
												</li>
												
												<li class="res-dropdown menu-portfolios">
													<a class="item-link dropdown-toggle" href="#">Portfolios</a>
													<span class="show-dropdown"></span>
													
													<ul class="dropdown-resmenu">
														<li class="menu-portfolio-2-columns">
															<a href="portfolios_two_columns.html">Portfolio 2 Columns</a>
														</li>
														
														<li class="menu-portfolio-3-columns">
															<a href="portfolios_three_columns.html">Portfolio 3 Columns</a>
														</li>
														
														<li class="menu-portfolio-4-columns">
															<a href="portfolios_four_columns.html">Portfolio 4 Columns</a>
														</li>
														
														<li class="menu-portfolio-masonry">
															<a href="portfolios_masonry.html">Portfolio Masonry</a>
														</li>
													</ul>
												</li>
												
												<li class="menu-about-us">
													<a class="item-link" href="about_us.html">About Us</a>
												</li>
												
												<li class="menu-contact-us">
													<a class="item-link" href="contact_us.html">Contact Us</a>
												</li>
											</ul>
										</div>
									</div>
									
									<ul id="menu-primary-menu-1" class="nav nav-pills nav-mega etrostore-mega etrostore-menures">
										<li class="dropdown menu-home etrostore-mega-menu level1">
											<a href="home_page_1.html" class="item-link dropdown-toggle">
												<span class="have-title">
													<span class="menu-color" data-color="#f034ca"></span>
													<span class="menu-title">Home</span>
												</span>
											</a>
											
											<ul class="dropdown-menu nav-level1 column-3">
												<li class="dropdown-submenu column-3 menu-home-pages">
													<a href="#">
														<span class="have-title">
															<span class="menu-title">Home Pages</span>
														</span>
													</a>
													
													<ul class="dropdown-sub nav-level2">
														<li class="menu-home-page-1">
															<a href="home_page_1.html">
																<span class="have-title">
																	<span class="menu-title">Home Page 1</span>
																</span>
															</a>
														</li>
														
														<li class="menu-home-page-2">
															<a href="home_page_2.html">
																<span class="have-title">
																	<span class="menu-title">Home Page 2</span>
																</span>
															</a>
														</li>
														
														<li class="menu-home-page-3">
															<a href="home_page_3.html">
																<span class="have-title">
																	<span class="menu-title">Home Page 3</span>
																</span>
															</a>
														</li>
														
														<li class="menu-home-page-4">
															<a href="home_page_4.html">
																<span class="have-title">
																	<span class="menu-title">Home Page 4</span>
																</span>
															</a>
														</li>
														
														<li class="menu-home-page-5">
															<a href="home_page_5.html">
																<span class="have-title">
																	<span class="menu-title">Home Page 5</span>
																</span>
															</a>
														</li>
														
														<li class="menu-home-page-boxed">
															<a href="home_page_1_boxed.html">
																<span class="have-title">
																	<span class="menu-title">Home Page Boxed</span>
																</span>
															</a>
														</li>
														
														<li class="menu-home-page-full">
															<a href="home_page_1_full.html">
																<span class="have-title">
																	<span class="menu-title">Home Page Full</span>
																</span>
															</a>
														</li>
													</ul>
												</li>
												
												<li class="dropdown-submenu column-3 menu-color-styles">
													<a href="#">
														<span class="have-title">
															<span class="menu-title">Color Styles</span>
														</span>
													</a>
													
													<ul class="dropdown-sub nav-level2">
														<li class="menu-default">
															<a data-theme="default">
																<span class="have-title">
																	<span class="menu-title">Default</span>
																</span>
															</a>
														</li>
														
														<li class="menu-orange">
															<a data-theme="orange">
																<span class="have-title">
																	<span class="menu-title">Orange</span>
																</span>
															</a>
														</li>
													</ul>
												</li>
												
												<li class="dropdown-submenu column-3 menu-advanced">
													<a href="#">
														<span class="have-title">
															<span class="menu-title">Advanced</span>
														</span>
													</a>
													
													<ul class="dropdown-sub nav-level2">
														<li class="menu-default">
															<a data-advanced="ltr">
																<span class="have-title">
																	<span class="menu-title">Left to right</span>
																</span>
															</a>
														</li>
														
														<li class="menu-orange">
															<a data-advanced="rtl">
																<span class="have-title">
																	<span class="menu-title">Right to left</span>
																</span>
															</a>
														</li>
													</ul>
												</li>
											</ul>
										</li>
										
										<li class="active dropdown menu-shop etrostore-mega-menu level1 etrostore-menu-img">
											<a href="#" class="item-link dropdown-toggle">
												<span class="have-title">
													<span class="menu-color" data-color="#f03442"></span>
													
													<span class="menu-img">
														<img src="resource/front_bootstrap/images/1903/icon-new-1.png" alt="Menu Image" />
													</span>
													
													<span class="menu-title">Shop</span>
												</span>
											</a>
											
											<ul class="dropdown-menu nav-level1 column-4">
												<li class="active dropdown-submenu column-4 menu-shop-pages">
													<a href="#">
														<span class="have-title">
															<span class="menu-title">Shop Pages</span>
														</span>
													</a>
													
													<ul class="dropdown-sub nav-level2">
														<li class="menu-shop">
															<a href="shop.html">
																<span class="have-title">
																	<span class="menu-title">Shop</span>
																</span>
															</a>
														</li>
														
														<li class="menu-cart">
															<a href="cart.html">
																<span class="have-title">
																	<span class="menu-title">Cart</span>
																</span>
															</a>
														</li>
														
														<li class="menu-checkout">
															<a href="checkout.html">
																<span class="have-title">
																	<span class="menu-title">Checkout</span>
																</span>
															</a>
														</li>
														
														<li class="menu-my-account">
															<a href="my_account.html">
																<span class="have-title">
																	<span class="menu-title">My Account</span>
																</span>
															</a>
														</li>
														
														<li class="active menu-wishlist">
															<a href="wishlist.html">
																<span class="have-title">
																	<span class="menu-title">Wishlist</span>
																</span>
															</a>
														</li>
													</ul>
												</li>
												
												<li class="dropdown-submenu column-4 menu-shop-layouts">
													<a href="#">
														<span class="have-title">
															<span class="menu-title">Shop Layouts</span>
														</span>
													</a>
													
													<ul class="dropdown-sub nav-level2">
														<li class="menu-right-sidebar-grid">
															<a href="shop_right_sidebar.html">
																<span class="have-title">
																	<span class="menu-title">Right Sidebar Grid</span>
																</span>
															</a>
														</li>
														
														<li class="menu-left-sidebar-grid">
															<a href="shop_left_sidebar.html">
																<span class="have-title">
																	<span class="menu-title">Left Sidebar Grid</span>
																</span>
															</a>
														</li>
														
														<li class="menu-full-width-grid">
															<a href="shop_full_width.html">
																<span class="have-title">
																	<span class="menu-title">Full Width Grid</span>
																</span>
															</a>
														</li>
														
														<li class="menu-2-columns-grid">
															<a href="shop_two_columns.html">
																<span class="have-title">
																	<span class="menu-title">2 Columns Grid</span>
																</span>
															</a>
														</li>
														
														<li class="menu-3-columns-grid">
															<a href="shop_three_columns.html">
																<span class="have-title">
																	<span class="menu-title">3 Columns Grid</span>
																</span>
															</a>
														</li>
														
														<li class="menu-4-columns-grid">
															<a href="shop_four_columns.html">
																<span class="have-title">
																	<span class="menu-title">4 Columns Grid</span>
																</span>
															</a>
														</li>
													</ul>
												</li>
												
												<li class="dropdown-submenu column-4 menu-product-types">
													<a href="#">
														<span class="have-title">
															<span class="menu-title">Product Types</span>
														</span>
													</a>
													
													<ul class="dropdown-sub nav-level2">
														<li class="menu-simple-product">
															<a href="simple_product.html">
																<span class="have-title">
																	<span class="menu-title">Simple Product</span>
																</span>
															</a>
														</li>
														
														<li class="menu-variable-product">
															<a href="variable_product.html">
																<span class="have-title">
																	<span class="menu-title">Variable Product</span>
																</span>
															</a>
														</li>
														
														<li class="menu-group-product">
															<a href="group_product.html">
																<span class="have-title">
																	<span class="menu-title">Group Product</span>
																</span>
															</a>
														</li>
														
														<li class="menu-externalaffiliate-product">
															<a href="externalaffiliate_product.html">
																<span class="have-title">
																	<span class="menu-title">External/Affiliate Product</span>
																</span>
															</a>
														</li>
													</ul>
												</li>
												
												<li class="dropdown-submenu column-4 menu-product-layouts">
													<a href="#">
														<span class="have-title">
															<span class="menu-title">Product Layouts</span>
														</span>
													</a>
													
													<ul class="dropdown-sub nav-level2">
														<li class="menu-full-width">
															<a href="sidebar_product_full.html">
																<span class="have-title">
																	<span class="menu-title">Full width</span>
																</span>
															</a>
														</li>
														
														<li class="menu-left-sidebar">
															<a href="sidebar_product_left.html">
																<span class="have-title">
																	<span class="menu-title">Left Sidebar</span>
																</span>
															</a>
														</li>
														
														<li class="menu-right-sidebar">
															<a href="sidebar_product_right.html">
																<span class="have-title">
																	<span class="menu-title">Right Sidebar</span>
																</span>
															</a>
														</li>
													</ul>
												</li>
											</ul>
										</li>
										
										<li class="dropdown menu-smartphones-tablet etrostore-mega-menu level1">
											<a href="#" class="item-link dropdown-toggle">
												<span class="have-title">
													<span class="menu-color" data-color="#13528c"></span>
													
													<span class="menu-title">Smartphones & Tablet</span>
												</span>
											</a>
											
											<ul class="dropdown-menu nav-level1 column-4">
												<li class="dropdown-submenu column-4 menu-electronics etrostore-menu-img">
													<a href="#">
														<span class="have-title">
															<span class="menu-img">
																<img src="resource/front_bootstrap/images/1903/menu-bn3.jpg" alt="Menu Image" />
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
														
														<li class="menu-gaming">
															<a href="#">
																<span class="have-title">
																	<span class="menu-title">Gaming</span>
																</span>
															</a>
														</li>
													</ul>
												</li>
												
												<li class="dropdown-submenu column-4 menu-smartphone etrostore-menu-img">
													<a href="#">
														<span class="have-title">
															<span class="menu-img">
																<img src="resource/front_bootstrap/images/1903/menu-bn4.jpg" alt="Menu Image" />
															</span>
															
															<span class="menu-title">Smartphone</span>
														</span>
													</a>
													
													<ul class="dropdown-sub nav-level2">
														<li class="menu-smartphones">
															<a href="#">
																<span class="have-title">
																<span class="menu-title">Smartphones</span></span></a></li>
														
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
														
														<li class="menu-headphonesheadsets">
															<a href="#">
																<span class="have-title">
																	<span class="menu-title">Headphones/Headsets</span>
																</span>
															</a>
														</li>
													</ul>
												</li>
												
												<li class="dropdown-submenu column-4 menu-tablet etrostore-menu-img">
													<a href="#">
														<span class="have-title">
															<span class="menu-img">
																<img src="resource/front_bootstrap/images/1903/menu-bn5.jpg" alt="Menu Image" />
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
												
												<li class="dropdown-submenu column-4 menu-computer etrostore-menu-img">
													<a href="#">
														<span class="have-title">
															<span class="menu-img">
																<img src="resource/front_bootstrap/images/1903/menu-bn6.jpg" alt="Menu Image" />
															</span>
															
															<span class="menu-title">Computer</span>
														</span>
													</a>
													
													<ul class="dropdown-sub nav-level2">
														<li class="menu-computers">
															<a href="#">
																<span class="have-title">
																	<span class="menu-title">Computers</span>
																</span>
															</a>
														</li>
														
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
													</ul>
												</li>
											</ul>
										</li>
									 
										<li class="dropdown menu-blog etrostore-mega-menu level1">
											<a href="#" class="item-link dropdown-toggle">
												<span class="have-title">
													<span class="menu-title">Blog</span>
												</span>
											</a>
											
											<ul class="dropdown-menu nav-level1 column-4">
												<li class="dropdown-submenu column-4 menu-blog-layouts">
													<a href="#">
														<span class="have-title">
															<span class="menu-title">Blog Layouts</span>
														</span>
													</a>
													
													<ul class="dropdown-sub nav-level2">
														<li class="menu-left-sidebar-default">
															<a href="blog_left_sidebar.html">
																<span class="have-title">
																	<span class="menu-title">Left Sidebar Default</span>
																</span>
															</a>
														</li>
														
														<li class="menu-left-sidebar-list">
															<a href="blog_left_sidebar_list.html">
																<span class="have-title">
																	<span class="menu-title">Left Sidebar List</span>
																</span>
															</a>
														</li>
														
														<li class="menu-right-sidebar-list">
															<a href="blog_right_sidebar_list.html">
																<span class="have-title">
																	<span class="menu-title">Right Sidebar List</span>
																</span>
															</a>
														</li>
														
														<li class="menu-full-width-list">
															<a href="blog_full_width_list.html">
																<span class="have-title">
																	<span class="menu-title">Full width List</span>
																</span>
															</a>
														</li>
													</ul>
												</li>
												
												<li class="dropdown-submenu column-4 menu-blog-layouts-2">
													<a href="#">
														<span class="have-title">
															<span class="menu-title">Blog Layouts 2</span>
														</span>
													</a>
													
													<ul class="dropdown-sub nav-level2">
														<li class="menu-2-columns-grid">
															<a href="blog_two_columns.html">
																<span class="have-title">
																	<span class="menu-title">2 Columns Grid</span>
																</span>
															</a>
														</li>
													
														<li class="menu-3-columns-grid">
															<a href="blog_three_columns.html">
																<span class="have-title">
																	<span class="menu-title">3 Columns Grid</span>
																</span>
															</a>
														</li>
														
														<li class="menu-4-columns-grid">
															<a href="blog_four_columns.html">
																<span class="have-title">
																	<span class="menu-title">4 Columns Grid</span>
																</span>
															</a>
														</li>
													</ul>
												</li>
												
												<li class="dropdown-submenu column-4 menu-post-formats">
													<a href="#">
														<span class="have-title">
															<span class="menu-title">Post Formats</span>
														</span>
													</a>
													
													<ul class="dropdown-sub nav-level2">
														<li class="menu-post-format-image">
															<a href="post_format_image.html">
																<span class="have-title">
																	<span class="menu-title">Post Format : Image</span>
																</span>
															</a>
														</li>
														
														<li class="menu-post-format-audio">
															<a href="post_format_audio.html">
																<span class="have-title">
																	<span class="menu-title">Post Format : Audio</span>
																</span>
															</a>
														</li>
														
														<li class="menu-post-format-gallery">
															<a href="post_format_gallery.html">
																<span class="have-title">
																	<span class="menu-title">Post Format : Gallery</span>
																</span>
															</a>
														</li>
														
														<li class="menu-post-format-video">
															<a href="post_format_video.html">
																<span class="have-title">
																	<span class="menu-title">Post Format : Video</span>
																</span>
															</a>
														</li>
													</ul>
												</li>
												
												<li class="dropdown-submenu column-4 menu-post-layouts">
													<a href="#">
														<span class="have-title">
															<span class="menu-title">Post Layouts</span>
														</span>
													</a>
													
													<ul class="dropdown-sub nav-level2">
														<li class="menu-full-width">
															<a href="post_layout_full_width.html">
																<span class="have-title">
																	<span class="menu-title">Full Width</span>
																</span>
															</a>
														</li>
														
														<li class="menu-left-sidebar">
															<a href="post_layout_left_sidebar.html">
																<span class="have-title">
																	<span class="menu-title">Left Sidebar</span>
																</span>
															</a>
														</li>
														
														<li class="menu-right-sidebar">
															<a href="post_layout_right_sidebar.html">
																<span class="have-title">
																	<span class="menu-title">Right Sidebar</span>
																</span>
															</a>
														</li>
													</ul>
												</li>
												
												<li class="image-fix column-4 menu-image etrostore-menu-img">
													<a href="#">
														<span class="">
															<span class="menu-img">
																<img src="resource/front_bootstrap/images/1903/menu-bn1.jpg" alt="Menu Image" />
															</span>
														</span>
													</a>
												</li>
												
												<li class="image-fix column-4 menu-image etrostore-menu-img">
													<a href="#">
														<span class="">
															<span class="menu-img">
																<img src="resource/front_bootstrap/images/1903/menu-bn2.jpg" alt="Menu Image" />
															</span>
														</span>
													</a>
												</li>
											</ul>
										</li>
										
										<li class="menu-deals etrostore-menu-custom level1 etrostore-menu-img">
											<a href="deals.html" class="item-link">
												<span class="have-title">
													<span class="menu-img">
														<img src="resource/front_bootstrap/images/1903/icon-hot.png" alt="Menu Image" />
													</span>
													
													<span class="menu-title">Deals</span>
												</span>
											</a>
										</li>
									 
										<li class="dropdown menu-portfolios etrostore-menu-custom level1">
											<a href="#" class="item-link dropdown-toggle">
												<span class="have-title">
													<span class="menu-title">Portfolios</span>
												</span>
											</a>
											
											<ul class="dropdown-menu">
												<li class="column-1 menu-portfolio-2-columns">
													<a href="portfolios_two_columns.html">
														<span class="have-title">
															<span class="menu-title">Portfolio 2 Columns</span>
														</span>
													</a>
												</li>
												
												<li class="column-1 menu-portfolio-3-columns">
													<a href="portfolios_three_columns.html">
														<span class="have-title">
															<span class="menu-title">Portfolio 3 Columns</span>
														</span>
													</a>
												</li>
												
												<li class="column-1 menu-portfolio-4-columns">
													<a href="portfolios_four_columns.html">
														<span class="have-title">
															<span class="menu-title">Portfolio 4 Columns</span>
														</span>
													</a>
												</li>
												
												<li class="column-1 menu-portfolio-masonry">
													<a href="portfolios_masonry.html">
														<span class="have-title">
															<span class="menu-title">Portfolio Masonry</span>
														</span>
													</a>
												</li>
											</ul>
										</li>
									  
										<li class="menu-about-us etrostore-menu-custom level1">
											<a href="about_us.html" class="item-link">
												<span class="have-title">
													<span class="menu-title">About Us</span>
												</span>
											</a>
											
										</li>
										
										<li class="menu-contact-us etrostore-menu-custom level1">
											<a href="contact_us.html" class="item-link">
												<span class="have-title">
													<span class="menu-title">Contact Us</span>
												</span>
											</a>
										</li>
									</ul>
								</div>
							</nav>
						</div>
						<!-- /Primary navbar -->
				  
						<div class="top-form top-form-minicart etrostore-minicart pull-right">
							<div class="top-minicart-icon pull-right">
								<i class="fa fa-shopping-cart"></i>
								<a class="cart-contents" href="cart.html" title="View your shopping cart">
									<span class="minicart-number">2</span>
								</a>
							</div>
						 
							<div class="wrapp-minicart">
								<div class="minicart-padding">
									<div class="number-item">
										There are <span>items</span> in your cart
									</div>
									
									<ul class="minicart-content">
										<li>
											<a href="simple_product.html" class="product-image">
												<img 	width="100" height="100" src="images/1903/45-150x150.jpg" class="attachment-100x100 size-100x100 wp-post-image" alt="" 
														srcset="resource/front_bootstrap/images/1903/45-150x150.jpg 150w, resource/front_bootstrap/images/1903/45-300x300.jpg 300w, resource/front_bootstrap/images/1903/45-180x180.jpg 180w, resource/front_bootstrap/images/1903/45.jpg 600w" 
														sizes="(max-width: 100px) 100vw, 100px" />
											</a>
											
											<div class="detail-item">
												<div class="product-details">
													<h4>
														<a class="title-item" href="simple_product.html">Veniam Dolore</a>
													</h4>
													
													<div class="product-price">
														<span class="price">														
															<span class="woocommerce-Price-amount amount">
																<span class="woocommerce-Price-currencySymbol">$</span>190.00
															</span>
														</span>	      
														
														<div class="qty">
															<span class="qty-number">1</span>									
														</div>
													</div>
													
													<div class="product-action clearfix">
														<a href="#" class="btn-remove" title="Remove this item">
															<span class="fa fa-trash-o"></span>
														</a>
														
														<a class="btn-edit" href="cart.html" title="View your shopping cart">
															<span class="fa fa-pencil"></span>
														</a>    
													</div>
												</div>
											</div>
										</li>
									  
										<li>
											<a href="simple_product.html" class="product-image">
												<img	 width="100" height="100" src="images/1903/22-150x150.jpg" class="attachment-100x100 size-100x100 wp-post-image" alt="" 
														srcset="resource/front_bootstrap/images/1903/22-150x150.jpg 150w, resource/front_bootstrap/images/1903/22-300x300.jpg 300w, resource/front_bootstrap/images/1903/22-180x180.jpg 180w, resource/front_bootstrap/images/1903/22.jpg 600w" 
														sizes="(max-width: 100px) 100vw, 100px" />
											</a>
											
											<div class="detail-item">
												<div class="product-details">
													<h4>
														<a class="title-item" href="simple_product.html">Cleaner with bag</a>
													</h4>
													
													<div class="product-price">
														<span class="price">
															<span class="woocommerce-Price-amount amount">
																<span class="woocommerce-Price-currencySymbol">$</span>350.00
															</span>
														</span>
														
														<div class="qty">
															<span class="qty-number">1</span>									
														</div>
													</div>
													
													<div class="product-action clearfix">
														<a href="#" class="btn-remove" title="Remove this item">
															<span class="fa fa-trash-o"></span>
														</a>           
														
														<a class="btn-edit" href="cart.html" title="View your shopping cart">
															<span class="fa fa-pencil"></span>
														</a>
													</div>
												</div>
											</div>
										</li>
									</ul>
									
									<div class="cart-checkout">
										<div class="price-total">
											<span class="label-price-total">Total</span>
											
											<span class="price-total-w">
												<span class="price">
													<span class="woocommerce-Price-amount amount">
														<span class="woocommerce-Price-currencySymbol">$</span>540.00
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
		
		<div class="listings-title">
			<div class="container">
				<div class="wrap-title">
					<h1>Wishlist</h1>
					<div class="bread">
						<div class="breadcrumbs theme-clearfix">
							<div class="container">
								<ul class="breadcrumb">
									<li>
										<a href="common/toShop">Home</a>
										<span class="go-page"></span>
									</li>
									
									<li class="active">
										<span>Wishlist</span>
									</li>
								</ul>
							</div>
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
								<div id="yith-wcwl-messages"></div>
								<form id="yith-wcwl-form" action="" method="post" class="woocommerce">
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
													<span class="nobr">Product Name</span>
												</th>
												
												<th class="product-price">
													<span class="nobr">Unit Price</span>
												</th>
												
												<th class="product-stock-stauts">
													<span class="nobr">Stock Status</span>
												</th>
												
												<th class="product-add-to-cart"></th>
											</tr>
										</thead>
										
										<tbody>
											<tr>
												<td class="product-remove">
													<div>
														<a href="" class="remove remove_from_wishlist" title="Remove this product">&#215;</a>
													</div>
												</td>
											   
												<td class="product-name">
													<a href="simple_product.html">Pisan maze ikan kazen</a>
												</td>
												
												<td class="product-price">
													<del>
														<span class="woocommerce-Price-amount amount">
															<span class="woocommerce-Price-currencySymbol">$</span>5.50
														</span>
													</del> 
													
													<ins>
														<span class="woocommerce-Price-amount amount">
															<span class="woocommerce-Price-currencySymbol">$</span>5.00
														</span>
													</ins>                            
												</td>
												
												<td class="product-stock-status">
													<span class="wishlist-in-stock">In Stock</span>                            
												</td>
											   
												<td class="product-add-to-cart">
													<a rel="nofollow" href="" class="button product_type_simple add_to_cart_button ajax_add_to_cart add_to_cart button alt">Add to Cart</a>
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
															<a target="_blank" class="facebook" href="https://www.facebook.com/" title="Facebook"></a>
														</li>
														
														<li style="list-style-type: none; display: inline-block;">
															<a target="_blank" class="twitter" href="https://twitter.com/" title="Twitter"></a>
														</li>
														
														<li style="list-style-type: none; display: inline-block;">
															<a target="_blank" class="pinterest" href="http://pinterest.com/" title="Pinterest" onclick="window.open(this.href); return false;"></a>
														</li>
														
														<li style="list-style-type: none; display: inline-block;">
															<a target="_blank" class="googleplus" href="https://plus.google.com/" title="Google+" onclick="javascript:window.open(this.href,&quot;&quot;, &quot;menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600&quot;);return false;"></a>
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
		
		<footer id="footer" class="footer default theme-clearfix">
			<!-- Content footer -->
			<div class="container">
				<div class="vc_row wpb_row vc_row-fluid">
					<div class="wpb_column vc_column_container vc_col-sm-12">
						<div class="vc_column-inner ">
							<div class="wpb_wrapper">
								<div id="sw_testimonial01" class="testimonial-slider client-wrapper-b carousel slide " data-interval="0">
									<div class="carousel-cl nav-custom">
										<a class="prev-test fa fa-angle-left" href="#sw_testimonial01" role="button" data-slide="prev"><span></span></a>
										<a class="next-test fa fa-angle-right" href="#sw_testimonial01" role="button" data-slide="next"><span></span></a>
									</div>
									
									<div class="carousel-inner">
										<div class="item active">
											<div class="item-inner">
												<div class="image-client pull-left">
													<a href="#" title="">
														<img width="127" height="127" src="resource/front_bootstrap/images/1903/tm3.jpg" class="attachment-thumbnail size-thumbnail wp-post-image" alt="" />
													</a>
												</div>
												
												<div class="client-say-info">
													<div class="client-comment">
														In auctor ex id urna faucibus porttitor. Lorem ipsum dolor sit amet, consectetur adipiscing elit....						
													</div>
													
													<div class="name-client">
														<h2><a href="#" title="">Jerry</a></h2>
														<p>Web Developer</p>
													</div>
												</div>
											</div>
											
											<div class="item-inner">
												<div class="image-client pull-left">
													<a href="#" title="">
														<img width="127" height="127" src="resource/front_bootstrap/images/1903/tm1.png" class="attachment-thumbnail size-thumbnail wp-post-image" alt="" />
													</a>
												</div>
											
												<div class="client-say-info">
													<div class="client-comment">
														In auctor ex id urna faucibus porttitor. Lorem ipsum dolor sit amet, consectetur adipiscing elit....						
													</div>
													
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
													<a href="#" title="">
														<img width="127" height="127" src="resource/front_bootstrap/images/1903/tm2.png" class="attachment-thumbnail size-thumbnail wp-post-image" alt="" />
													</a>
												</div>
												
												<div class="client-say-info">
													<div class="client-comment">
														In auctor ex id urna faucibus porttitor. Lorem ipsum dolor sit amet, consectetur adipiscing elit....						
													</div>
													
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
													<a href="#" title="">
														<img width="127" height="127" src="resource/front_bootstrap/images/1903/tm3.jpg" class="attachment-thumbnail size-thumbnail wp-post-image" alt="" />
													</a>
												</div>
												
												<div class="client-say-info">
													<div class="client-comment">
														In auctor ex id urna faucibus porttitor. Lorem ipsum dolor sit amet, consectetur adipiscing elit....						
													</div>
													
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
				
				<div data-vc-full-width="true" data-vc-full-width-init="false" data-vc-stretch-content="true" class="vc_row wpb_row vc_row-fluid footer-style1 vc_row-no-padding">
					<div class="container float wpb_column vc_column_container vc_col-sm-12">
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
															
															<form id="mc4wp-form-1" class="mc4wp-form mc4wp-form-275" method="post" data-id="275" data-name="">
																<div class="mc4wp-form-fields">
																	<div class="newsletter-content">
																		<input type="email" class="newsletter-email" name="EMAIL" placeholder="Your email" required="" />
																		<input class="newsletter-submit" type="submit" value="Subscribe" />
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
																<li>
																	<a href="https://www.facebook.com/">
																		<i class="fa fa-facebook"></i>
																	</a>
																</li>
																
																<li>
																	<a href="https://twitter.com/">
																		<i class="fa fa-twitter"></i>
																	</a>
																</li>
																
																<li>
																	<a href="https://plus.google.com/">
																		<i class="fa fa-google-plus"></i>
																	</a>
																</li>
																
																<li>
																	<a href="https://www.linkedin.com/">
																		<i class="fa fa-linkedin"></i>
																	</a>
																</li>
																
																<li>
																	<a href="https://www.pinterest.com/">
																		<i class="fa fa-pinterest-p"></i>
																	</a>
																</li>
															</ul>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								
								<div class="vc_row wpb_row vc_inner vc_row-fluid footer-bottom">
									<div class="item-res wpb_column vc_column_container vc_col-sm-6 vc_col-lg-4 vc_col-md-4 vc_col-xs-12">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<div class="wpb_text_column wpb_content_element ">
													<div class="wpb_wrapper">
														<div class="ya-logo">
															<a href="home_page_1.html">
																<img src="resource/front_bootstrap/images/icons/logo-footer.png" alt="logo" />
															</a>
														</div>
													</div>
												</div>
												
												<div class="wpb_raw_code wpb_content_element wpb_raw_html">
													<div class="wpb_wrapper">
														<div class="infomation">
															<p>
																Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.
															</p>
															
															<div class="info-support">
																<ul>
																   <li>No 1123, Marmora Road, Glasgow, D04 89GR.</li>
																   <li>(801) 2345 - 6788 / (801) 2345 - 6789</li>
																   <li><a href="mailto:contact@etrostore.com">support@etrostore.com</a></li>
																</ul>
															</div>
															
															<div class="store">
																<a href="#">
																	<img src="resource/front_bootstrap/images/1903/app-store.png" alt="store" title="store" />
																</a>
																
																<a href="#">
																	<img src="resource/front_bootstrap/images/1903/google-store.png" alt="store" title="store" />
																</a>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								 
									<div class="item-res wpb_column vc_column_container vc_col-sm-6 vc_col-lg-2 vc_col-md-2 vc_col-xs-12">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<div class="vc_wp_custommenu wpb_content_element">
													<div class="widget widget_nav_menu">
														<h2 class="widgettitle">Support</h2>
														
														<ul id="menu-support" class="menu">
															<li class="menu-product-support">
																<a class="item-link" href="#">
																	<span class="menu-title">Product Support</span>
																</a>
															</li>
															
															<li class="menu-pc-setup-support-services">
																<a class="item-link" href="#">
																	<span class="menu-title">PC Setup & Support Services</span>
																</a>
															</li>
															
															<li class="menu-extended-service-plans">
																<a class="item-link" href="#">
																	<span class="menu-title">Extended Service Plans</span>
																</a>
															</li>
															
															<li class="menu-community">
																<a class="item-link" href="#">
																	<span class="menu-title">Community</span>
																</a>
															</li>
															
															<li class="menu-product-manuals">
																<a class="item-link" href="#">
																	<span class="menu-title">Product Manuals</span>
																</a>
															</li>
															
															<li class="menu-product-registration">
																<a class="item-link" href="#">
																	<span class="menu-title">Product Registration</span>
																</a>
															</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
								  
									<div class="item-res wpb_column vc_column_container vc_col-sm-6 vc_col-lg-2 vc_col-md-2 vc_col-xs-12">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<div class="vc_wp_custommenu wpb_content_element">
													<div class="widget widget_nav_menu">
														<h2 class="widgettitle">Your Links</h2>
														
														<ul id="menu-your-links" class="menu">
															<li class="menu-my-account">
																<a class="item-link" href="my_account.html">
																	<span class="menu-title">My Account</span>
																</a>
															</li>
															
															<li class="menu-order-tracking">
																<a class="item-link" href="#">
																	<span class="menu-title">Order Tracking</span>
																</a>
															</li>
															
															<li class="menu-watch-list">
																<a class="item-link" href="#">
																	<span class="menu-title">Watch List</span>
																</a>
															</li>
															
															<li class="menu-customer-service">
																<a class="item-link" href="#">
																	<span class="menu-title">Customer Service</span>
																</a>
															</li>
															
															<li class="menu-returns-exchanges">
																<a class="item-link" href="#">
																	<span class="menu-title">Returns / Exchanges</span>
																</a>
															</li>
															
															<li class="menu-faqs">
																<a class="item-link" href="#">
																	<span class="menu-title">FAQs</span>
																</a>
															</li>
															
															<li class="menu-financing">
																<a class="item-link" href="#">
																	<span class="menu-title">Financing</span>
																</a>
															</li>
															
															<li class="menu-card">
																<a class="item-link" href="#">
																	<span class="menu-title">Card</span>
																</a>
															</li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
								   
									<div class="item-res wpb_column vc_column_container vc_col-sm-6 vc_col-lg-4 vc_col-md-4 vc_col-xs-12">
										<div class="vc_column-inner ">
											<div class="wpb_wrapper">
												<div class="wpb_raw_code wpb_content_element wpb_raw_html">
													<div class="wpb_wrapper">
														<div class="sp-map">
															<div class="title">
																<h2>find a store</h2>
															</div>
															
															<img src="resource/front_bootstrap/images/1903/map.jpg" alt="map" title="map" />
															
															<a href="#" class="link-map">Store locator</a>
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
											<li class="menu-about-us">
												<a class="item-link" href="about_us.html">
													<span class="menu-title">About Us</span>
												</a>
											</li>
											
											<li class="menu-customer-service">
												<a class="item-link" href="#">
													<span class="menu-title">Customer Service</span>
												</a>
											</li>
											
											<li class="menu-privacy-policy">
												<a class="item-link" href="#">
													<span class="menu-title">Privacy Policy</span>
												</a>
											</li>
											
											<li class="menu-site-map">
												<a class="item-link" href="#">
													<span class="menu-title">Site Map</span>
												</a>
											</li>
											
											<li class="menu-orders-and-returns">
												<a class="item-link" href="#">
													<span class="menu-title">Orders and Returns</span>
												</a>
											</li>
											
											<li class="menu-contact-us">
												<a class="item-link" href="contact_us.html">
													<span class="menu-title">Contact Us</span>
												</a>
											</li>
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
						<p>Etro Store - Premium Multipurpose HTML5/CSS3 Theme Designed by <a href="http://www.smartaddons.com/">SmartAddons.Com</a>.</p>
					</div>
					
					<div class="sidebar-copyright pull-right">
						<div class="widget-1 widget-first widget text-4 widget_text">
							<div class="widget-inner">
								<div class="textwidget">
									<div class="payment">
										<a href="#">
											<img src="resource/front_bootstrap/images/1903/paypal.png" alt="payment" title="payment" />
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
							<input type="text" class="form-control input-text username" name="username" id="username" placeholder="Username" />
						</div>
						
						<div class="pass-input">
							<input class="form-control input-text password" type="password" placeholder="Password" name="password" id="password" />
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
	
	<div id="subscribe_popup" class="subscribe-popup" style="background: url(images/icons/bg_newsletter.jpg)">
		<div class="subscribe-popup-container">
			<h2>Join our newsletter</h2>
			<div class="description">Subscribe now to get 40% of on any product!</div>
			<div class="subscribe-form">
				<form id="mc4wp-form-2" class="mc4wp-form mc4wp-form-275" method="post" data-id="275" data-name="">
					<div class="mc4wp-form-fields">
						<div class="newsletter-content">
							<input type="email" class="newsletter-email" name="EMAIL" placeholder="Your email" required="" />
							<input class="newsletter-submit" type="submit" value="Subscribe" />
						</div>
					</div>
					<div class="mc4wp-response"></div>
				</form>		
			</div>
			
			<div class="subscribe-checkbox">
				<label for="popup_check">
					<input id="popup_check" name="popup_check" type="checkbox" />
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
	
	<script type="text/javascript" src="resource/front_bootstrap/js/yith-woocommerce-compare/jquery.colorbox-min.js"></script>
	<script type="text/javascript" src="resource/front_bootstrap/js/sw_core/isotope.js"></script>
	<script type="text/javascript" src="resource/front_bootstrap/js/sw_core/jquery.fancybox.pack.js"></script>
	<script type="text/javascript" src="resource/front_bootstrap/js/sw_woocommerce/category-ajax.js"></script>
	<script type="text/javascript" src="resource/front_bootstrap/js/sw_woocommerce/jquery.countdown.min.js"></script>
	<script type="text/javascript" src="resource/front_bootstrap/js/js_composer/js_composer_front.min.js"></script>
	
	<script type="text/javascript" src="resource/front_bootstrap/js/plugins.js"></script>
	<script type="text/javascript" src="resource/front_bootstrap/js/megamenu.min.js"></script>
	<script type="text/javascript" src="resource/front_bootstrap/js/main.min.js"></script>
   
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