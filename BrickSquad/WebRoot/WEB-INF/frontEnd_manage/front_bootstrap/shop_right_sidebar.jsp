<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
	<title>商城左侧栏显示显示商品信息</title>
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
	<link rel="stylesheet" href="resource/front_bootstrap/css/yith-woocommerce-wishlist/style.css" />
	
	
	<link rel="stylesheet" href="resource/front_bootstrap/css/custom.css" />
	<link rel="stylesheet" href="resource/front_bootstrap/css/app-orange.css" id="theme_color" />
	<link rel="stylesheet" href="" id="rtl" />
	<link rel="stylesheet" href="resource/front_bootstrap/css/app-responsive.css" /> 
</head>

<body class="archive post-type-archive woocommerce post-type-archive-product">
     

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
					
						</div>
						
						<div class="wrap-myacc pull-right">
							<div class="sidebar-account pull-left">
								<div class="account-title">我的淘宝</div>
                        
								<div id="my-account" class="my-account">
									<div class="widget-1 widget-first widget nav_menu-4 widget_nav_menu">
										<div class="widget-inner">
											<ul id="menu-my-account" class="menu">
												<li class="menu-my-account">
													<a class="item-link" href="my_account.html">
														<span class="menu-title">已买到的宝贝</span>
													</a>
												</li>
												
												<li class="menu-cart">
													<a class="item-link" href="cart.html">
														<span class="menu-title">我的足迹</span>
													</a>
												</li>
											</ul>
										</div>
									</div>
									
									<div class="widget-2 widget-last widget sw_top-4 sw_top">
										<div class="widget-inner">
											<div class="top-login">
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="sidebar-account pull-left">
								<div class="account-title">登录</div>
                        
								<div id="my-account" class="my-account">
									<div class="widget-1 widget-first widget nav_menu-4 widget_nav_menu">
										<div class="widget-inner">
											<ul id="menu-my-account" class="menu">
												<li class="menu-my-account">
													<a class="item-link" href="my_account.html">
														<span class="menu-title">登录</span>
													</a>
												</li>
												
												<li class="menu-cart">
													<a class="item-link" href="cart.html">
														<span class="menu-title">注册</span>
													</a>
												</li>
											</ul>
										</div>
									</div>
									
									<div class="widget-2 widget-last widget sw_top-4 sw_top">
										<div class="widget-inner">
											<div class="top-login">
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
												<a class="item-link" href="common/toContactUs">
													<span class="menu-title">关于我们</span>
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
															<img 	width="100" height="100" src="resource/front_bootstrap/images/1903/45-150x150.jpg" class="attachment-100x100 size-100x100 wp-post-image" alt="" 
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
															<img 	width="100" height="100" src="resource/front_bootstrap/images/1903/22-150x150.jpg" class="attachment-100x100 size-100x100 wp-post-image" alt="" 
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
																<li class="active menu-shop">
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
																
																<li class="menu-wishlist">
																	<a href="wishlist.html">Wishlist</a>
																</li>
															</ul>
														</li>
													  
														<li class="res-dropdown menu-shop-layouts">
															<a class="item-link dropdown-toggle" href="#">Shop Layouts</a>
															<span class="show-dropdown"></span>
															
															<ul class="dropdown-resmenu">
																<li class="active menu-right-sidebar-grid">
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
														<li class="active menu-shop">
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
														
														<li class="menu-wishlist">
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
														<li class="active menu-right-sidebar-grid">
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
												<img 	width="100" height="100" src="resource/front_bootstrap/images/1903/45-150x150.jpg" class="attachment-100x100 size-100x100 wp-post-image" alt="" 
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
												<img	 width="100" height="100" src="resource/front_bootstrap/images/1903/22-150x150.jpg" class="attachment-100x100 size-100x100 wp-post-image" alt="" 
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
					<h1>Products</h1>
					
					<div class="bread">
						<div class="breadcrumbs theme-clearfix">
							<div class="container">
								<ul class="breadcrumb">
									<li>
										<a href="home_page_1.html">首页</a>
										<span class="go-page"></span>
									</li>
									
									<li class="active">
										<span>商品</span>
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
				<div id="contents" class="content has-side-bar col-lg-9 col-md-8 col-sm-8" role="main">
					<div class="listing-top">
						<div class="widget-1 widget-first widget rev-slider-widget-2 widget_revslider">
							<div class="widget-inner">
								<!-- OWL SLIDER -->
								<div class="wpb_revslider_element wpb_content_element no-margin">
									<div class="vc_column-inner ">
										<div class="wpb_wrapper">
											<div class="wpb_revslider_element wpb_content_element">
												<div id="main-slider" class="fullwidthbanner-container" style="position:relative; width:100%; height:auto; margin-top:0px; margin-bottom:0px">
													<div class="module slideshow no-margin">
														<div class="item">
															<a href="simple_product.html"><img src="resource/front_bootstrap/images/1903/slider-shop.jpg" alt="slider1" class="img-responsive" height="559"></a>
														</div>
														<div class="item">
															<a href="simple_product.html"><img src="resource/front_bootstrap/images/1903/slider-shop.jpg" alt="slider2" class="img-responsive" height="559"></a>
														</div>
													</div>
													<div class="loadeding"></div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- OWL LIGHT SLIDER -->
							</div>
						</div>
					  
						<div class="widget-2 widget-last widget sw_brand-2 sw_brand">
							<div class="widget-inner">
								<div id="sw_brand_01" class="responsive-slider sw-brand-container-slider clearfix" data-lg="5" data-md="4" data-sm="3" data-xs="2" data-mobile="1" data-speed="1000" data-scroll="1" data-interval="5000" data-autoplay="false">
									<div class="resp-slider-container">
										<div class="slider responsive">
											<div class="item item-brand-cat">
												<div class="item-image">
													<a href="shop.html"><img width="173" height="88" src="resource/front_bootstrap/images/1903/Brand_1.jpg" class="attachment-173x91 size-173x91" alt=""></a>						
												</div>
											</div>
										 
											<div class="item item-brand-cat">
												<div class="item-image">
													<a href="http://demo.smartaddons.com/templates/html/etrostore/shop.html-books"><img width="173" height="91" src="resource/front_bootstrap/images/1903/br1.jpg" class="attachment-173x91 size-173x91" alt=""></a>						
												</div>
											</div>
										 
											<div class="item item-brand-cat">
												<div class="item-image">
													<a href="shop.html"><img width="173" height="91" src="resource/front_bootstrap/images/1903/br2.jpg" class="attachment-173x91 size-173x91" alt=""></a>						
												</div>
											</div>
										 
											<div class="item item-brand-cat">
												<div class="item-image">
													<a href="shop.html"><img width="173" height="88" src="resource/front_bootstrap/images/1903/Brand_1.jpg" class="attachment-173x91 size-173x91" alt=""></a>						
												</div>
											</div>
										 
											<div class="item item-brand-cat">
												<div class="item-image">
													<a href="shop.html"><img width="173" height="88" src="resource/front_bootstrap/images/1903/Brand_10.jpg" class="attachment-173x91 size-173x91" alt=""></a>						
												</div>
											</div>
										 
											<div class="item item-brand-cat">
												<div class="item-image">
													<a href="shop.html"><img width="173" height="88" src="resource/front_bootstrap/images/1903/Brand_1.jpg" class="attachment-173x91 size-173x91" alt=""></a>						
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				   
					<div id="container">
						<div id="content" role="main">
							<!--  Shop Title -->
							<div class="products-wrapper">
								<div class="row-fix clearfix">
									<li class="product-category product first product-col-5 col-md-3 col-sm-6 col-xs-6 col-mb-12">
										<a href="shop.html">
											<img src="resource/front_bootstrap/images/1903/c7.jpg" alt="Accessories" width="300" height="300">		
											<h3>
												Accessories <mark class="count">(1)</mark>		
											</h3>
										</a>
									</li>
									
									<li class="product-category product product-col-5 col-md-3 col-sm-6 col-xs-6 col-mb-12">
										<a href="shop.html">
											<img src="resource/front_bootstrap/images/1903/c10.jpg" alt="Appliances" width="300" height="300">		
											<h3>
												Appliances <mark class="count">(6)</mark>		
											</h3>
										</a>
									</li>
									
									<li class="product-category product product-col-5 col-md-3 col-sm-6 col-xs-6 col-mb-12">
										<a href="shop.html">
											<img src="resource/front_bootstrap/images/1903/c5.jpg" alt="Cameras &amp; Accessories" width="300" height="300">		
											<h3>
												Cameras &amp; Accessories <mark class="count">(3)</mark>		
											</h3>
										</a>
									</li>
									
									<li class="product-category product last product-col-5 col-md-3 col-sm-6 col-xs-6 col-mb-12">
										<a href="shop.html">
											<img src="resource/front_bootstrap/images/1903/c3.jpg" alt="Computers &amp; Laptops" width="300" height="300">		
											<h3>
												Computers &amp; Laptops <mark class="count">(6)</mark>		
											</h3>
										</a>
									</li>
									
									<li class="product-category product first product-col-5 col-md-3 col-sm-6 col-xs-6 col-mb-12">
										<a href="shop.html">
											<img src="resource/front_bootstrap/images/1903/c4.jpg" alt="Computers &amp; Networking" width="300" height="300">		
											<h3>
												Computers &amp; Networking <mark class="count">(1)</mark>		
											</h3>
										</a>
									</li>
									
									<li class="product-category product product-col-5 col-md-3 col-sm-6 col-xs-6 col-mb-12">
										<a href="shop.html">
											<img src="resource/front_bootstrap/images/1903/c2.jpg" alt="Electronics" width="300" height="300">		
											<h3>
												Electronics <mark class="count">(8)</mark>		
											</h3>
										</a>
									</li>
									
									<li class="product-category product product-col-5 col-md-3 col-sm-6 col-xs-6 col-mb-12">
										<a href="shop.html">
											<img src="resource/front_bootstrap/images/1903/c8.jpg" alt="Home Appliances" width="300" height="300">		
											<h3>
												Home Appliances <mark class="count">(1)</mark>		
											</h3>
										</a>
									</li>
									
									<li class="product-category product last product-col-5 col-md-3 col-sm-6 col-xs-6 col-mb-12">
										<a href="shop.html">
											<img src="resource/front_bootstrap/images/1903/c9.jpg" alt="Home Furniture" width="300" height="300">		
											<h3>
												Home Furniture <mark class="count">(1)</mark>		
											</h3>
										</a>
									</li>
									
									<li class="product-category product first product-col-5 col-md-3 col-sm-6 col-xs-6 col-mb-12">
										<a href="shop.html">
											<img src="resource/front_bootstrap/images/1903/c1.jpg" alt="Smartphones &amp; Tablet" width="300" height="300">		
											<h3>
												Smartphones &amp; Tablet <mark class="count">(2)</mark>		
											</h3>
										</a>
									</li>
									
									<li class="product-category product product-col-5 col-md-3 col-sm-6 col-xs-6 col-mb-12">
										<a href="shop.html">
											<img src="resource/front_bootstrap/images/1903/c6.jpg" alt="Televisions" width="300" height="300">		
											<h3>
												Televisions <mark class="count">(2)</mark>		
											</h3>
										</a>
									</li>
								</div>
								
								<div class="products-nav clearfix">
									<div class="view-mode-wrap pull-left clearfix">
										<div class="view-mode">
											<a href="javascript:void(0)" class="grid-view active" title="Grid view"><span>Grid view</span></a>
											<a href="javascript:void(0)" class="list-view" title="List view"><span>List view</span></a>
										</div>
									</div>
									
									<div class="catalog-ordering">
										<div class="orderby-order-container clearfix">
											<ul class="orderby order-dropdown pull-left">
												<li>
													<span class="current-li"><span class="current-li-content"><a>Sort by Default</a></span></span>
													<ul>
														<li class="current"><a href="#">Sort by Default</a></li>
														<li class=""><a href="#">Sort by Popularity</a></li>
														<li class=""><a href="#">Sort by Rating</a></li>
														<li class=""><a href="#">Sort by Date</a></li>
														<li class=""><a href="#">Sort by Price</a></li>
													</ul>
												</li>
											</ul>
											
											<ul class="order pull-left">
												<li class="asc"><a href="#"><i class="fa fa-long-arrow-down"></i></a></li>
											</ul>
											
											<div class="product-number pull-left clearfix">
												<span class="show-product pull-left">Show </span>
												<ul class="sort-count order-dropdown pull-left">
													<li>
														<span class="current-li"><a>12</a></span>
														<ul>
															<li class="current"><a href="#">12</a></li>
															<li class=""><a href="#">24</a></li>
															<li class=""><a href="#">36</a></li>
														</ul>
													</li>
												</ul>
											</div>
										</div>
									</div>
									
									<nav class="woocommerce-pagination pull-right">
										<span class="note">Page:</span>
										<ul class="page-numbers">
											<li><span class="page-numbers current">1</span></li>
											<li><a class="page-numbers" href="#">2</a></li>
											<li><a class="page-numbers" href="#">3</a></li>
											<li><a class="next page-numbers" href="#">?</a></li>
										</ul>
									</nav>
								</div>
								
								<div class="clear"></div>
							
								<ul class="products-loop row grid clearfix">
									<li class="item col-lg-4 col-md-4 col-sm-6 col-xs-6 post-255 product type-product status-publish has-post-thumbnail product_cat-electronics product_cat-home-appliances product_cat-vacuum-cleaner product_brand-apoteket first instock sale featured shipping-taxable purchasable product-type-simple">
										<div class="products-entry item-wrap clearfix">
											<div class="item-detail">
												<div class="item-img products-thumb">
													<span class="onsale">Sale!</span>
													<a href="simple_product.html">
														<div class="product-thumb-hover">
															<img width="300" height="300" src="resource/front_bootstrap/images/1903/22-300x300.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="" srcset="resource/front_bootstrap/images/1903/22-300x300.jpg 300w, resource/front_bootstrap/images/1903/22-150x150.jpg 150w, resource/front_bootstrap/images/1903/22-180x180.jpg 180w, resource/front_bootstrap/images/1903/22.jpg 600w" sizes="(max-width: 300px) 100vw, 300px">
														</div>
													</a>
																				
													<!-- add to cart, wishlist, compare -->
													<div class="item-bottom clearfix">
														<a rel="nofollow" href="#" class="button product_type_simple add_to_cart_button ajax_add_to_cart" title="Add to Cart">Add to cart</a>
														
														<a href="javascript:void(0)" class="compare button" rel="nofollow" title="Add to Compare">Compare</a>
														
														<div class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
															<div class="yith-wcwl-add-button show" style="display:block">
																<a href="wishlist.html" rel="nofollow" class="add_to_wishlist">Add to Wishlist</a>
																<img src="resource/front_bootstrap/images/wpspin_light.gif" class="ajax-loading" alt="loading" width="16" height="16" style="visibility:hidden" />
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
														<a href="ajax/fancybox/example.html" data-fancybox-type="ajax" class="sm_quickview_handler-list fancybox fancybox.ajax">Quick View </a>
													</div>
												</div>
												
												<div class="item-content products-content">
													<div class="reviews-content">
														<div class="star"><span style="width: 63px"></span></div>
													</div>
													
													<h4><a href="simple_product.html" title="Cleaner with bag">Cleaner with bag</a></h4>
													
													<span class="item-price"><del><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>390.00</span></del> <ins><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>350.00</span></ins></span>
													
													<div class="item-description">Proin nunc nibh, adipiscing eu nisi id, ultrices suscipit augue. Sed rhoncus hendrerit lacus, et venenatis felis. Donec ut fringilla magna ultrices suscipit augue. Proin nunc nibh, adipiscing eu nisi id, ultrices suscipit augue. Sed rhoncus hendrerit lacus, et venenatis felis. Donec ut fringilla magna ultrices suscipit augue.</div>
											   
													<!-- add to cart, wishlist, compare -->
													<div class="item-bottom clearfix">
														<a rel="nofollow" href="#" class="button product_type_simple add_to_cart_button ajax_add_to_cart" title="Add to Cart">Add to cart</a>
														
														<a href="javascript:void(0)" class="compare button" rel="nofollow" title="Add to Compare">Compare</a>
														
														<div class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
															<div class="yith-wcwl-add-button show" style="display:block">
																<a href="wishlist.html" rel="nofollow" class="add_to_wishlist">Add to Wishlist</a>
																<img src="resource/front_bootstrap/images/wpspin_light.gif" class="ajax-loading" alt="loading" width="16" height="16" style="visibility:hidden" />
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
														<a href="ajax/fancybox/example.html" data-fancybox-type="ajax" class="sm_quickview_handler-list fancybox fancybox.ajax">Quick View </a>
													</div>
												</div>
											</div>
										</div>
									</li>
									
									<li class="item col-lg-4 col-md-4 col-sm-6 col-xs-6 post-246 product type-product status-publish has-post-thumbnail product_cat-laptop-asus product_brand-alpha  instock featured shipping-taxable purchasable product-type-simple">
										<div class="products-entry item-wrap clearfix">
											<div class="item-detail">
												<div class="item-img products-thumb">
													<a href="simple_product.html">
														<div class="product-thumb-hover">
															<img width="300" height="300" src="resource/front_bootstrap/images/1903/65-300x300.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="" srcset="resource/front_bootstrap/images/1903/65-300x300.jpg 300w, resource/front_bootstrap/images/1903/65-150x150.jpg 150w, resource/front_bootstrap/images/1903/65-180x180.jpg 180w, resource/front_bootstrap/images/1903/65.jpg 600w" sizes="(max-width: 300px) 100vw, 300px">
														</div>
													</a>
																				
													<!-- add to cart, wishlist, compare -->
													<div class="item-bottom clearfix">
														<a rel="nofollow" href="#" class="button product_type_simple add_to_cart_button ajax_add_to_cart" title="Add to Cart">Add to cart</a>
														
														<a href="javascript:void(0)" class="compare button" rel="nofollow" title="Add to Compare">Compare</a>
														
														<div class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
															<div class="yith-wcwl-add-button show" style="display:block">
																<a href="wishlist.html" rel="nofollow" class="add_to_wishlist">Add to Wishlist</a>
																<img src="resource/front_bootstrap/images/wpspin_light.gif" class="ajax-loading" alt="loading" width="16" height="16" style="visibility:hidden" />
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
														<a href="ajax/fancybox/example.html" data-fancybox-type="ajax" class="sm_quickview_handler-list fancybox fancybox.ajax">Quick View </a>
													</div>
												</div>
												
												<div class="item-content products-content">
													<div class="reviews-content">
														<div class="star"></div>
													</div>
													
													<h4><a href="simple_product.html" title="corned beef enim">corned beef enim</a></h4>
													
													<span class="item-price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>400.00</span></span>
													
													<div class="item-description">Proin nunc nibh, adipiscing eu nisi id, ultrices suscipit augue. Sed rhoncus hendrerit lacus, et venenatis felis. Donec ut fringilla magna ultrices suscipit augue. Proin nunc nibh, adipiscing eu nisi id, ultrices suscipit augue. Sed rhoncus hendrerit lacus, et venenatis felis. Donec ut fringilla magna ultrices suscipit augue.</div>
																				
													<!-- add to cart, wishlist, compare -->
													<div class="item-bottom clearfix">
														<a rel="nofollow" href="#" class="button product_type_simple add_to_cart_button ajax_add_to_cart" title="Add to Cart">Add to cart</a>
														
														<a href="javascript:void(0)" class="compare button" rel="nofollow" title="Add to Compare">Compare</a>
														
														<div class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
															<div class="yith-wcwl-add-button show" style="display:block">
																<a href="wishlist.html" rel="nofollow" class="add_to_wishlist">Add to Wishlist</a>
																<img src="resource/front_bootstrap/images/wpspin_light.gif" class="ajax-loading" alt="loading" width="16" height="16" style="visibility:hidden" />
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
														<a href="ajax/fancybox/example.html" data-fancybox-type="ajax" class="sm_quickview_handler-list fancybox fancybox.ajax">Quick View </a>
													</div>
												</div>
											</div>
										</div>
									</li>
									
									<li class="item col-lg-4 col-md-4 col-sm-6 col-xs-6 post-719 product type-product status-publish has-post-thumbnail product_cat-cameras-accessories  instock shipping-taxable purchasable product-type-simple">
										<div class="products-entry item-wrap clearfix">
											<div class="item-detail">
												<div class="item-img products-thumb">
													<a href="simple_product.html">
														<div class="product-thumb-hover">
															<img width="300" height="300" src="resource/front_bootstrap/images/1903/56-300x300.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="" srcset="resource/front_bootstrap/images/1903/56-300x300.jpg 300w, resource/front_bootstrap/images/1903/56-150x150.jpg 150w, resource/front_bootstrap/images/1903/56-180x180.jpg 180w, resource/front_bootstrap/images/1903/56.jpg 600w" sizes="(max-width: 300px) 100vw, 300px">
														</div>
													</a>
																				
													<!-- add to cart, wishlist, compare -->
													<div class="item-bottom clearfix">
														<a rel="nofollow" href="#" class="button product_type_simple add_to_cart_button ajax_add_to_cart" title="Add to Cart">Add to cart</a>
														
														<a href="javascript:void(0)" class="compare button" rel="nofollow" title="Add to Compare">Compare</a>
														
														<div class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
															<div class="yith-wcwl-add-button show" style="display:block">
																<a href="wishlist.html" rel="nofollow" class="add_to_wishlist">Add to Wishlist</a>
																<img src="resource/front_bootstrap/images/wpspin_light.gif" class="ajax-loading" alt="loading" width="16" height="16" style="visibility:hidden" />
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
														<a href="ajax/fancybox/example.html" data-fancybox-type="ajax" class="sm_quickview_handler-list fancybox fancybox.ajax">Quick View </a>
													</div>
												</div>
												
												<div class="item-content products-content">
													<div class="reviews-content">
														<div class="star"></div>
													</div>
													
													<h4><a href="simple_product.html" title="Enim eu kevin">Enim eu kevin</a></h4>
													
													<span class="item-price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>300.00</span></span>
													
													<div class="item-description">Proin nunc nibh, adipiscing eu nisi id, ultrices suscipit augue. Sed rhoncus hendrerit lacus, et venenatis felis. Donec ut fringilla magna ultrices suscipit augue. Proin nunc nibh, adipiscing eu nisi id, ultrices suscipit augue. Sed rhoncus hendrerit lacus, et venenatis felis. Donec ut fringilla magna ultrices suscipit augue.</div>
																				
													<!-- add to cart, wishlist, compare -->
													<div class="item-bottom clearfix">
														<a rel="nofollow" href="#" class="button product_type_simple add_to_cart_button ajax_add_to_cart" title="Add to Cart">Add to cart</a>
														
														<a href="javascript:void(0)" class="compare button" rel="nofollow" title="Add to Compare">Compare</a>
														
														<div class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
															<div class="yith-wcwl-add-button show" style="display:block">
																<a href="wishlist.html" rel="nofollow" class="add_to_wishlist">Add to Wishlist</a>
																<img src="resource/front_bootstrap/images/wpspin_light.gif" class="ajax-loading" alt="loading" width="16" height="16" style="visibility:hidden" />
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
														<a href="ajax/fancybox/example.html" data-fancybox-type="ajax" class="sm_quickview_handler-list fancybox fancybox.ajax">Quick View </a>
													</div>
												</div>
											</div>
										</div>
									</li>
									
									<li class="item col-lg-4 col-md-4 col-sm-6 col-xs-6 post-257 product type-product status-publish has-post-thumbnail product_cat-mixer product_brand-alpha last instock featured shipping-taxable purchasable product-type-simple">
										<div class="products-entry item-wrap clearfix">
											<div class="item-detail">
												<div class="item-img products-thumb">
													<a href="simple_product.html">
														<div class="product-thumb-hover">
															<img width="300" height="300" src="resource/front_bootstrap/images/1903/61-300x300.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="" srcset="resource/front_bootstrap/images/1903/61-300x300.jpg 300w, resource/front_bootstrap/images/1903/61-150x150.jpg 150w, resource/front_bootstrap/images/1903/61-180x180.jpg 180w, resource/front_bootstrap/images/1903/61.jpg 600w" sizes="(max-width: 300px) 100vw, 300px">
														</div>
													</a>
																				
													<!-- add to cart, wishlist, compare -->
													<div class="item-bottom clearfix">
														<a rel="nofollow" href="#" class="button product_type_simple add_to_cart_button ajax_add_to_cart" title="Add to Cart">Add to cart</a>
														
														<a href="javascript:void(0)" class="compare button" rel="nofollow" title="Add to Compare">Compare</a>
														
														<div class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
															<div class="yith-wcwl-add-button show" style="display:block">
																<a href="wishlist.html" rel="nofollow" class="add_to_wishlist">Add to Wishlist</a>
																<img src="resource/front_bootstrap/images/wpspin_light.gif" class="ajax-loading" alt="loading" width="16" height="16" style="visibility:hidden" />
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
														<a href="ajax/fancybox/example.html" data-fancybox-type="ajax" class="sm_quickview_handler-list fancybox fancybox.ajax">Quick View </a>
													</div>
												</div>
												
												<div class="item-content products-content">
													<div class="reviews-content">
														<div class="star"><span style="width: 35px"></span></div>
													</div>
													
													<h4><a href="simple_product.html" title="exercitation jerky">Exercitation jerky</a></h4>
													
													<span class="item-price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>260.00</span></span>
													
													<div class="item-description">Proin nunc nibh, adipiscing eu nisi id, ultrices suscipit augue. Sed rhoncus hendrerit lacus, et venenatis felis. Donec ut fringilla magna ultrices suscipit augue. Proin nunc nibh, adipiscing eu nisi id, ultrices suscipit augue. Sed rhoncus hendrerit lacus, et venenatis felis. Donec ut fringilla magna ultrices suscipit augue.</div>
																				
													<!-- add to cart, wishlist, compare -->
													<div class="item-bottom clearfix">
														<a rel="nofollow" href="#" class="button product_type_simple add_to_cart_button ajax_add_to_cart" title="Add to Cart">Add to cart</a>
														
														<a href="javascript:void(0)" class="compare button" rel="nofollow" title="Add to Compare">Compare</a>
														
														<div class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
															<div class="yith-wcwl-add-button show" style="display:block">
																<a href="wishlist.html" rel="nofollow" class="add_to_wishlist">Add to Wishlist</a>
																<img src="resource/front_bootstrap/images/wpspin_light.gif" class="ajax-loading" alt="loading" width="16" height="16" style="visibility:hidden" />
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
														<a href="ajax/fancybox/example.html" data-fancybox-type="ajax" class="sm_quickview_handler-list fancybox fancybox.ajax">Quick View </a>
													</div>
												</div>
											</div>
										</div>
									</li>
									
									<li class="item col-lg-4 col-md-4 col-sm-6 col-xs-6 post-686 product type-product status-publish has-post-thumbnail product_cat-accessories-2 product_brand-alpha first instock shipping-taxable purchasable product-type-simple">
										<div class="products-entry item-wrap clearfix">
											<div class="item-detail">
												<div class="item-img products-thumb">
													<a href="simple_product.html">
														<div class="product-thumb-hover">
															<img width="300" height="300" src="resource/front_bootstrap/images/1903/47-300x300.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="" srcset="resource/front_bootstrap/images/1903/47-300x300.jpg 300w, resource/front_bootstrap/images/1903/47-150x150.jpg 150w, resource/front_bootstrap/images/1903/47-180x180.jpg 180w, resource/front_bootstrap/images/1903/47.jpg 600w" sizes="(max-width: 300px) 100vw, 300px">
														</div>
													</a>
																				
													<!-- add to cart, wishlist, compare -->
													<div class="item-bottom clearfix">
														<a rel="nofollow" href="#" class="button product_type_simple add_to_cart_button ajax_add_to_cart" title="Add to Cart">Add to cart</a>
														
														<a href="javascript:void(0)" class="compare button" rel="nofollow" title="Add to Compare">Compare</a>
														
														<div class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
															<div class="yith-wcwl-add-button show" style="display:block">
																<a href="wishlist.html" rel="nofollow" class="add_to_wishlist">Add to Wishlist</a>
																<img src="resource/front_bootstrap/images/wpspin_light.gif" class="ajax-loading" alt="loading" width="16" height="16" style="visibility:hidden" />
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
														<a href="ajax/fancybox/example.html" data-fancybox-type="ajax" class="sm_quickview_handler-list fancybox fancybox.ajax">Quick View </a>
													</div>
												</div>
												
												<div class="item-content products-content">
													<div class="reviews-content">
														<div class="star"><span style="width: 49px"></span></div>
													</div>
													
													<h4><a href="simple_product.html" title="fatback enim velit">Fatback enim velit</a></h4>
													
													<span class="item-price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>150.00</span></span>
													
													<div class="item-description">Proin nunc nibh, adipiscing eu nisi id, ultrices suscipit augue. Sed rhoncus hendrerit lacus, et venenatis felis. Donec ut fringilla magna ultrices suscipit augue. Proin nunc nibh, adipiscing eu nisi id, ultrices suscipit augue. Sed rhoncus hendrerit lacus, et venenatis felis. Donec ut fringilla magna ultrices suscipit augue.</div>
																				
													<!-- add to cart, wishlist, compare -->
													<div class="item-bottom clearfix">
														<a rel="nofollow" href="#" class="button product_type_simple add_to_cart_button ajax_add_to_cart" title="Add to Cart">Add to cart</a>
														
														<a href="javascript:void(0)" class="compare button" rel="nofollow" title="Add to Compare">Compare</a>
														
														<div class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
															<div class="yith-wcwl-add-button show" style="display:block">
																<a href="wishlist.html" rel="nofollow" class="add_to_wishlist">Add to Wishlist</a>
																<img src="resource/front_bootstrap/images/wpspin_light.gif" class="ajax-loading" alt="loading" width="16" height="16" style="visibility:hidden" />
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
														<a href="ajax/fancybox/example.html" data-fancybox-type="ajax" class="sm_quickview_handler-list fancybox fancybox.ajax">Quick View </a>
													</div>
												</div>
											</div>
										</div>
									</li>
									
									<li class="item col-lg-4 col-md-4 col-sm-6 col-xs-6 post-528 product type-product status-publish has-post-thumbnail  instock sale shipping-taxable product-type-grouped">
										<div class="products-entry item-wrap clearfix">
											<div class="item-detail">
												<div class="item-img products-thumb">
													<span class="onsale">Sale!</span>
													
													<a href="simple_product.html">
														<div class="product-thumb-hover">
															<img width="300" height="300" src="resource/front_bootstrap/images/1903/44-300x300.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="" srcset="resource/front_bootstrap/images/1903/44-300x300.jpg 300w, resource/front_bootstrap/images/1903/44-150x150.jpg 150w, resource/front_bootstrap/images/1903/44-180x180.jpg 180w, resource/front_bootstrap/images/1903/44.jpg 600w" sizes="(max-width: 300px) 100vw, 300px">
														</div>
													</a>
																				
													<!-- add to cart, wishlist, compare -->
													<div class="item-bottom clearfix">
														<a rel="nofollow" href="#" class="button product_type_simple add_to_cart_button ajax_add_to_cart" title="Add to Cart">Add to cart</a>
														
														<a href="javascript:void(0)" class="compare button" rel="nofollow" title="Add to Compare">Compare</a>
														
														<div class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
															<div class="yith-wcwl-add-button show" style="display:block">
																<a href="wishlist.html" rel="nofollow" class="add_to_wishlist">Add to Wishlist</a>
																<img src="resource/front_bootstrap/images/wpspin_light.gif" class="ajax-loading" alt="loading" width="16" height="16" style="visibility:hidden" />
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
														<a href="ajax/fancybox/example.html" data-fancybox-type="ajax" class="sm_quickview_handler-list fancybox fancybox.ajax">Quick View </a>
													</div>
												</div>
												
												<div class="item-content products-content">
													<div class="reviews-content">
														<div class="star"></div>
													</div>
													
													<h4><a href="simple_product.html" title="Group Product">Group Product</a></h4>
													
													<span class="item-price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>190.00</span>-<span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>400.00</span></span>
													
													<div class="item-description">Proin nunc nibh, adipiscing eu nisi id, ultrices suscipit augue. Sed rhoncus hendrerit lacus, et venenatis felis. Donec ut fringilla magna ultrices suscipit augue. Proin nunc nibh, adipiscing eu nisi id, ultrices suscipit augue. Sed rhoncus hendrerit lacus, et venenatis felis. Donec ut fringilla magna ultrices suscipit augue.</div>
																				
													<!-- add to cart, wishlist, compare -->
													<div class="item-bottom clearfix">
														<a rel="nofollow" href="#" class="button product_type_simple add_to_cart_button ajax_add_to_cart" title="Add to Cart">Add to cart</a>
														
														<a href="javascript:void(0)" class="compare button" rel="nofollow" title="Add to Compare">Compare</a>
														
														<div class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
															<div class="yith-wcwl-add-button show" style="display:block">
																<a href="wishlist.html" rel="nofollow" class="add_to_wishlist">Add to Wishlist</a>
																<img src="resource/front_bootstrap/images/wpspin_light.gif" class="ajax-loading" alt="loading" width="16" height="16" style="visibility:hidden" />
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
														<a href="ajax/fancybox/example.html" data-fancybox-type="ajax" class="sm_quickview_handler-list fancybox fancybox.ajax">Quick View </a>
													</div>
												</div>
											</div>
										</div>
									</li>
									
									<li class="item col-lg-4 col-md-4 col-sm-6 col-xs-6 post-131 product type-product status-publish has-post-thumbnail product_cat-computers-laptops product_brand-livefyre  instock sale featured shipping-taxable purchasable product-type-simple">
										<div class="products-entry item-wrap clearfix">
											<div class="item-detail">
												<div class="item-img products-thumb">
													<span class="onsale">Sale!</span>
													<a href="simple_product.html">
														<div class="product-thumb-hover">
															<img width="300" height="300" src="resource/front_bootstrap/images/1903/63-300x300.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="" srcset="resource/front_bootstrap/images/1903/63-300x300.jpg 300w, resource/front_bootstrap/images/1903/63-150x150.jpg 150w, resource/front_bootstrap/images/1903/63-180x180.jpg 180w, resource/front_bootstrap/images/1903/63.jpg 600w" sizes="(max-width: 300px) 100vw, 300px">
														</div>
													</a>
																				
													<!-- add to cart, wishlist, compare -->
													<div class="item-bottom clearfix">
														<a rel="nofollow" href="#" class="button product_type_simple add_to_cart_button ajax_add_to_cart" title="Add to Cart">Add to cart</a>
														
														<a href="javascript:void(0)" class="compare button" rel="nofollow" title="Add to Compare">Compare</a>
														
														<div class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
															<div class="yith-wcwl-add-button show" style="display:block">
																<a href="wishlist.html" rel="nofollow" class="add_to_wishlist">Add to Wishlist</a>
																<img src="resource/front_bootstrap/images/wpspin_light.gif" class="ajax-loading" alt="loading" width="16" height="16" style="visibility:hidden" />
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
														<a href="ajax/fancybox/example.html" data-fancybox-type="ajax" class="sm_quickview_handler-list fancybox fancybox.ajax">Quick View </a>
													</div>
												</div>
												
												<div class="item-content products-content">
													<div class="reviews-content">
														<div class="star"></div>
													</div>
													
													<h4><a href="simple_product.html" title="iMac Retina 4K">iMac Retina 4K</a></h4>
													
													<span class="item-price"><del><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>600.00</span></del> <ins><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>300.00</span></ins></span>
													
													<div class="item-description">Proin nunc nibh, adipiscing eu nisi id, ultrices suscipit augue. Sed rhoncus hendrerit lacus, et venenatis felis. Donec ut fringilla magna ultrices suscipit augue. Proin nunc nibh, adipiscing eu nisi id, ultrices suscipit augue. Sed rhoncus hendrerit lacus, et venenatis felis. Donec ut fringilla magna ultrices suscipit augue.</div>
																				
													<!-- add to cart, wishlist, compare -->
													<div class="item-bottom clearfix">
														<a rel="nofollow" href="#" class="button product_type_simple add_to_cart_button ajax_add_to_cart" title="Add to Cart">Add to cart</a>
														
														<a href="javascript:void(0)" class="compare button" rel="nofollow" title="Add to Compare">Compare</a>
														
														<div class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
															<div class="yith-wcwl-add-button show" style="display:block">
																<a href="wishlist.html" rel="nofollow" class="add_to_wishlist">Add to Wishlist</a>
																<img src="resource/front_bootstrap/images/wpspin_light.gif" class="ajax-loading" alt="loading" width="16" height="16" style="visibility:hidden" />
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
														<a href="ajax/fancybox/example.html" data-fancybox-type="ajax" class="sm_quickview_handler-list fancybox fancybox.ajax">Quick View </a>
													</div>
												</div>
											</div>
										</div>
									</li>
									
									<li class="item col-lg-4 col-md-4 col-sm-6 col-xs-6 post-220 product type-product status-publish has-post-thumbnail product_cat-accessories-for-tablet product_brand-alpha last instock sale shipping-taxable purchasable product-type-simple">
										<div class="products-entry item-wrap clearfix">
											<div class="item-detail">
												<div class="item-img products-thumb">
													<span class="onsale">Sale!</span>
													<a href="simple_product.html">
														<div class="product-thumb-hover">
															<img width="300" height="300" src="resource/front_bootstrap/images/1903/39-300x300.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="" srcset="resource/front_bootstrap/images/1903/39-300x300.jpg 300w, resource/front_bootstrap/images/1903/39-150x150.jpg 150w, resource/front_bootstrap/images/1903/39-180x180.jpg 180w, resource/front_bootstrap/images/1903/39.jpg 600w" sizes="(max-width: 300px) 100vw, 300px">
														</div>
													</a>
																				
													<!-- add to cart, wishlist, compare -->
													<div class="item-bottom clearfix">
														<a rel="nofollow" href="#" class="button product_type_simple add_to_cart_button ajax_add_to_cart" title="Add to Cart">Add to cart</a>
														
														<a href="javascript:void(0)" class="compare button" rel="nofollow" title="Add to Compare">Compare</a>
														
														<div class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
															<div class="yith-wcwl-add-button show" style="display:block">
																<a href="wishlist.html" rel="nofollow" class="add_to_wishlist">Add to Wishlist</a>
																<img src="resource/front_bootstrap/images/wpspin_light.gif" class="ajax-loading" alt="loading" width="16" height="16" style="visibility:hidden" />
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
														<a href="ajax/fancybox/example.html" data-fancybox-type="ajax" class="sm_quickview_handler-list fancybox fancybox.ajax">Quick View </a>
													</div>
												</div>
												
												<div class="item-content products-content">
													<div class="reviews-content">
														<div class="star"></div>
													</div>
													
													<h4><a href="simple_product.html" title="iPad Mini 2 Retina">iPad Mini 2 Retina</a></h4>
													
													<span class="item-price"><del><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>300.00</span></del> <ins><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>290.00</span></ins></span>
													
													<div class="item-description">Proin nunc nibh, adipiscing eu nisi id, ultrices suscipit augue. Sed rhoncus hendrerit lacus, et venenatis felis. Donec ut fringilla magna ultrices suscipit augue. Proin nunc nibh, adipiscing eu nisi id, ultrices suscipit augue. Sed rhoncus hendrerit lacus, et venenatis felis. Donec ut fringilla magna ultrices suscipit augue.</div>
																				
													<!-- add to cart, wishlist, compare -->
													<div class="item-bottom clearfix">
														<a rel="nofollow" href="#" class="button product_type_simple add_to_cart_button ajax_add_to_cart" title="Add to Cart">Add to cart</a>
														
														<a href="javascript:void(0)" class="compare button" rel="nofollow" title="Add to Compare">Compare</a>
														
														<div class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
															<div class="yith-wcwl-add-button show" style="display:block">
																<a href="wishlist.html" rel="nofollow" class="add_to_wishlist">Add to Wishlist</a>
																<img src="resource/front_bootstrap/images/wpspin_light.gif" class="ajax-loading" alt="loading" width="16" height="16" style="visibility:hidden" />
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
														<a href="ajax/fancybox/example.html" data-fancybox-type="ajax" class="sm_quickview_handler-list fancybox fancybox.ajax">Quick View </a>
													</div>
												</div>
											</div>
										</div>
									</li>
									
									<li class="item col-lg-4 col-md-4 col-sm-6 col-xs-6 post-130 product type-product status-publish has-post-thumbnail product_cat-smartphones-tablet first instock shipping-taxable purchasable product-type-simple">
										<div class="products-entry item-wrap clearfix">
											<div class="item-detail">
												<div class="item-img products-thumb">
													<a href="simple_product.html">
														<div class="product-thumb-hover">
															<img width="300" height="300" src="resource/front_bootstrap/images/1903/36-300x300.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="" srcset="resource/front_bootstrap/images/1903/36-300x300.jpg 300w, resource/front_bootstrap/images/1903/36-150x150.jpg 150w, resource/front_bootstrap/images/1903/36-180x180.jpg 180w, resource/front_bootstrap/images/1903/36.jpg 600w" sizes="(max-width: 300px) 100vw, 300px">
														</div>
													</a>
																				
													<!-- add to cart, wishlist, compare -->
													<div class="item-bottom clearfix">
														<a rel="nofollow" href="#" class="button product_type_simple add_to_cart_button ajax_add_to_cart" title="Add to Cart">Add to cart</a>
														
														<a href="javascript:void(0)" class="compare button" rel="nofollow" title="Add to Compare">Compare</a>
														
														<div class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
															<div class="yith-wcwl-add-button show" style="display:block">
																<a href="wishlist.html" rel="nofollow" class="add_to_wishlist">Add to Wishlist</a>
																<img src="resource/front_bootstrap/images/wpspin_light.gif" class="ajax-loading" alt="loading" width="16" height="16" style="visibility:hidden" />
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
														<a href="ajax/fancybox/example.html" data-fancybox-type="ajax" class="sm_quickview_handler-list fancybox fancybox.ajax">Quick View </a>
													</div>
												</div>
												
												<div class="item-content products-content">
													<div class="reviews-content">
														<div class="star"></div>
													</div>
													
													<h4><a href="simple_product.html" title="iphone 6 plus">Iphone 6 plus</a></h4>
											   
													<span class="item-price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>400.00</span></span>
													
													<div class="item-description">Proin nunc nibh, adipiscing eu nisi id, ultrices suscipit augue. Sed rhoncus hendrerit lacus, et venenatis felis. Donec ut fringilla magna ultrices suscipit augue. Proin nunc nibh, adipiscing eu nisi id, ultrices suscipit augue. Sed rhoncus hendrerit lacus, et venenatis felis. Donec ut fringilla magna ultrices suscipit augue.</div>
											   
													<!-- add to cart, wishlist, compare -->
													<div class="item-bottom clearfix">
														<a rel="nofollow" href="#" class="button product_type_simple add_to_cart_button ajax_add_to_cart" title="Add to Cart">Add to cart</a>
														
														<a href="javascript:void(0)" class="compare button" rel="nofollow" title="Add to Compare">Compare</a>
														
														<div class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
															<div class="yith-wcwl-add-button show" style="display:block">
																<a href="wishlist.html" rel="nofollow" class="add_to_wishlist">Add to Wishlist</a>
																<img src="resource/front_bootstrap/images/wpspin_light.gif" class="ajax-loading" alt="loading" width="16" height="16" style="visibility:hidden" />
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
														<a href="ajax/fancybox/example.html" data-fancybox-type="ajax" class="sm_quickview_handler-list fancybox fancybox.ajax">Quick View </a>
													</div>
												</div>
											</div>
										</div>
									</li>
									
									<li class="item col-lg-4 col-md-4 col-sm-6 col-xs-6 post-245 product type-product status-publish has-post-thumbnail product_cat-laptop-dell product_brand-apoteket  instock sale featured shipping-taxable purchasable product-type-simple">
										<div class="products-entry item-wrap clearfix">
											<div class="item-detail">
												<div class="item-img products-thumb">
													<span class="onsale">Sale!</span>
													<a href="simple_product.html">
														<div class="product-thumb-hover">
															<img width="300" height="300" src="resource/front_bootstrap/images/1903/51-300x300.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="" srcset="resource/front_bootstrap/images/1903/51-300x300.jpg 300w, resource/front_bootstrap/images/1903/51-150x150.jpg 150w, resource/front_bootstrap/images/1903/51-180x180.jpg 180w, resource/front_bootstrap/images/1903/51.jpg 600w" sizes="(max-width: 300px) 100vw, 300px">
														</div>
													</a>
																				
													<!-- add to cart, wishlist, compare -->
													<div class="item-bottom clearfix">
														<a rel="nofollow" href="#" class="button product_type_simple add_to_cart_button ajax_add_to_cart" title="Add to Cart">Add to cart</a>
														
														<a href="javascript:void(0)" class="compare button" rel="nofollow" title="Add to Compare">Compare</a>
														
														<div class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
															<div class="yith-wcwl-add-button show" style="display:block">
																<a href="wishlist.html" rel="nofollow" class="add_to_wishlist">Add to Wishlist</a>
																<img src="resource/front_bootstrap/images/wpspin_light.gif" class="ajax-loading" alt="loading" width="16" height="16" style="visibility:hidden" />
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
														<a href="ajax/fancybox/example.html" data-fancybox-type="ajax" class="sm_quickview_handler-list fancybox fancybox.ajax">Quick View </a>
													</div>
												</div>
													
												<div class="item-content products-content">
													<div class="reviews-content">
														<div class="star"></div>
													</div>
													
													<h4><a href="simple_product.html" title="ipsum esse nisi">Ipsum esse nisi</a></h4>
													
													<span class="item-price"><del><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>600.00</span></del> <ins><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>550.00</span></ins></span>
													
													<div class="item-description">Proin nunc nibh, adipiscing eu nisi id, ultrices suscipit augue. Sed rhoncus hendrerit lacus, et venenatis felis. Donec ut fringilla magna ultrices suscipit augue. Proin nunc nibh, adipiscing eu nisi id, ultrices suscipit augue. Sed rhoncus hendrerit lacus, et venenatis felis. Donec ut fringilla magna ultrices suscipit augue.</div>
											  
													<!-- add to cart, wishlist, compare -->
													<div class="item-bottom clearfix">
														<a rel="nofollow" href="#" class="button product_type_simple add_to_cart_button ajax_add_to_cart" title="Add to Cart">Add to cart</a>
														
														<a href="javascript:void(0)" class="compare button" rel="nofollow" title="Add to Compare">Compare</a>
														
														<div class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
															<div class="yith-wcwl-add-button show" style="display:block">
																<a href="wishlist.html" rel="nofollow" class="add_to_wishlist">Add to Wishlist</a>
																<img src="resource/front_bootstrap/images/wpspin_light.gif" class="ajax-loading" alt="loading" width="16" height="16" style="visibility:hidden" />
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
														<a href="ajax/fancybox/example.html" data-fancybox-type="ajax" class="sm_quickview_handler-list fancybox fancybox.ajax">Quick View </a>
													</div>
												</div>
											</div>
										</div>
									</li>
									
									<li class="item col-lg-4 col-md-4 col-sm-6 col-xs-6 post-229 product type-product status-publish has-post-thumbnail product_cat-accessories-for-tablet product_brand-brand-10  instock shipping-taxable purchasable product-type-simple">
										<div class="products-entry item-wrap clearfix">
											<div class="item-detail">
												<div class="item-img products-thumb">
													<a href="simple_product.html">
														<div class="product-thumb-hover">
															<img width="300" height="300" src="resource/front_bootstrap/images/1903/66-300x300.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="" srcset="resource/front_bootstrap/images/1903/66-300x300.jpg 300w, resource/front_bootstrap/images/1903/66-150x150.jpg 150w, resource/front_bootstrap/images/1903/66-180x180.jpg 180w, resource/front_bootstrap/images/1903/66.jpg 600w" sizes="(max-width: 300px) 100vw, 300px">
														</div>
													</a>
																				
													<!-- add to cart, wishlist, compare -->
													<div class="item-bottom clearfix">
														<a rel="nofollow" href="#" class="button product_type_simple add_to_cart_button ajax_add_to_cart" title="Add to Cart">Add to cart</a>
														
														<a href="javascript:void(0)" class="compare button" rel="nofollow" title="Add to Compare">Compare</a>
														
														<div class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
															<div class="yith-wcwl-add-button show" style="display:block">
																<a href="wishlist.html" rel="nofollow" class="add_to_wishlist">Add to Wishlist</a>
																<img src="resource/front_bootstrap/images/wpspin_light.gif" class="ajax-loading" alt="loading" width="16" height="16" style="visibility:hidden" />
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
														<a href="ajax/fancybox/example.html" data-fancybox-type="ajax" class="sm_quickview_handler-list fancybox fancybox.ajax">Quick View </a>
													</div>
												</div>
												
												<div class="item-content products-content">
													<div class="reviews-content">
														<div class="star"></div>
													</div>
													
													<h4><a href="simple_product.html" title="ipsum fugiat">Ipsum fugiat</a></h4>
													
													<span class="item-price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>250.00</span></span>
											  
													<div class="item-description">Proin nunc nibh, adipiscing eu nisi id, ultrices suscipit augue. Sed rhoncus hendrerit lacus, et venenatis felis. Donec ut fringilla magna ultrices suscipit augue. Proin nunc nibh, adipiscing eu nisi id, ultrices suscipit augue. Sed rhoncus hendrerit lacus, et venenatis felis. Donec ut fringilla magna ultrices suscipit augue.</div>
																				
													<!-- add to cart, wishlist, compare -->
													<div class="item-bottom clearfix">
														<a rel="nofollow" href="#" class="button product_type_simple add_to_cart_button ajax_add_to_cart" title="Add to Cart">Add to cart</a>
														
														<a href="javascript:void(0)" class="compare button" rel="nofollow" title="Add to Compare">Compare</a>
														
														<div class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
															<div class="yith-wcwl-add-button show" style="display:block">
																<a href="wishlist.html" rel="nofollow" class="add_to_wishlist">Add to Wishlist</a>
																<img src="resource/front_bootstrap/images/wpspin_light.gif" class="ajax-loading" alt="loading" width="16" height="16" style="visibility:hidden" />
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
														<a href="ajax/fancybox/example.html" data-fancybox-type="ajax" class="sm_quickview_handler-list fancybox fancybox.ajax">Quick View </a>
													</div>
												</div>
											</div>
										</div>
									</li>
									
									<li class="item col-lg-4 col-md-4 col-sm-6 col-xs-6 post-214 product type-product status-publish has-post-thumbnail product_cat-computers-networking last instock shipping-taxable purchasable product-type-simple">
										<div class="products-entry item-wrap clearfix">
											<div class="item-detail">
												<div class="item-img products-thumb">
													<a href="simple_product.html">
														<div class="product-thumb-hover">
															<img width="300" height="300" src="resource/front_bootstrap/images/1903/53-300x300.jpg" class="attachment-shop_catalog size-shop_catalog wp-post-image" alt="" srcset="resource/front_bootstrap/images/1903/53-300x300.jpg 300w, resource/front_bootstrap/images/1903/53-150x150.jpg 150w, resource/front_bootstrap/images/1903/53-180x180.jpg 180w, resource/front_bootstrap/images/1903/53.jpg 600w" sizes="(max-width: 300px) 100vw, 300px">
														</div>
													</a>
																				
													<!-- add to cart, wishlist, compare -->
													<div class="item-bottom clearfix">
														<a rel="nofollow" href="#" class="button product_type_simple add_to_cart_button ajax_add_to_cart" title="Add to Cart">Add to cart</a>
														
														<a href="javascript:void(0)" class="compare button" rel="nofollow" title="Add to Compare">Compare</a>
														
														<div class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
															<div class="yith-wcwl-add-button show" style="display:block">
																<a href="wishlist.html" rel="nofollow" class="add_to_wishlist">Add to Wishlist</a>
																<img src="resource/front_bootstrap/images/wpspin_light.gif" class="ajax-loading" alt="loading" width="16" height="16" style="visibility:hidden" />
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
														<a href="ajax/fancybox/example.html" data-fancybox-type="ajax" class="sm_quickview_handler-list fancybox fancybox.ajax">Quick View </a>
													</div>
												</div>
												
												<div class="item-content products-content">
													<div class="reviews-content">
														<div class="star"></div>
													</div>
													
													<h4><a href="simple_product.html" title="macbook air">Macbook air</a></h4>
													
													<span class="item-price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>500.00</span></span>
													
													<div class="item-description">Proin nunc nibh, adipiscing eu nisi id, ultrices suscipit augue. Sed rhoncus hendrerit lacus, et venenatis felis. Donec ut fringilla magna ultrices suscipit augue. Proin nunc nibh, adipiscing eu nisi id, ultrices suscipit augue. Sed rhoncus hendrerit lacus, et venenatis felis. Donec ut fringilla magna ultrices suscipit augue.</div>
											   
													<!-- add to cart, wishlist, compare -->
													<div class="item-bottom clearfix">
														<a rel="nofollow" href="#" class="button product_type_simple add_to_cart_button ajax_add_to_cart" title="Add to Cart">Add to cart</a>
														
														<a href="javascript:void(0)" class="compare button" rel="nofollow" title="Add to Compare">Compare</a>
														
														<div class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
															<div class="yith-wcwl-add-button show" style="display:block">
																<a href="wishlist.html" rel="nofollow" class="add_to_wishlist">Add to Wishlist</a>
																<img src="resource/front_bootstrap/images/wpspin_light.gif" class="ajax-loading" alt="loading" width="16" height="16" style="visibility:hidden" />
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
														<a href="ajax/fancybox/example.html" data-fancybox-type="ajax" class="sm_quickview_handler-list fancybox fancybox.ajax">Quick View </a>
													</div>
												</div>
											</div>
										</div>
									</li>
								</ul>
							
								<div class="clear"></div>
								
								<div class="products-nav clearfix">
									<div class="view-mode-wrap pull-left clearfix">
										<div class="view-mode">
											<a href="javascript:void(0)" class="grid-view active" title="Grid view"><span>Grid view</span></a>
											<a href="javascript:void(0)" class="list-view" title="List view"><span>List view</span></a>
										</div>
									</div>
								  
									<div class="catalog-ordering">
										<div class="orderby-order-container clearfix">
											<ul class="orderby order-dropdown pull-left">
												<li>
													<span class="current-li"><span class="current-li-content"><a>Sort by Default</a></span></span>
													<ul>
														<li class="current"><a href="#">Sort by Default</a></li>
														<li class=""><a href="#">Sort by Popularity</a></li>
														<li class=""><a href="#">Sort by Rating</a></li>
														<li class=""><a href="#">Sort by Date</a></li>
														<li class=""><a href="#">Sort by Price</a></li>
													</ul>
												</li>
											</ul>
											
											<ul class="order pull-left">
												<li class="asc"><a href="#"><i class="fa fa-long-arrow-down"></i></a></li>
											</ul>
											
											<div class="product-number pull-left clearfix">
												<span class="show-product pull-left">Show </span>
												<ul class="sort-count order-dropdown pull-left">
													<li>
														<span class="current-li"><a>12</a></span>
														<ul>
															<li class="current"><a href="#">12</a></li>
															<li class=""><a href="#">24</a></li>
															<li class=""><a href="#">36</a></li>
														</ul>
													</li>
												</ul>
											</div>
										</div>
									</div>
								   
									<nav class="woocommerce-pagination pull-right">
										<span class="note">Page:</span>
										<ul class="page-numbers">
											<li><span class="page-numbers current">1</span></li>
											<li><a class="page-numbers" href="#">2</a></li>
											<li><a class="page-numbers" href="#">3</a></li>
											<li><a class="next page-numbers" href="#">?</a></li>
										</ul>
									</nav>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="clear-both"></div>
				<aside id="right" class="sidebar col-lg-3 col-md-4 col-sm-4">
					<div class="widget-1 widget-first widget woocommerce_product_categories-3 woocommerce widget_product_categories">
						<div class="widget-inner">
							<div class="block-title-widget">
								<h2><span>Categories</span></h2>
							</div>
							
							<ul class="product-categories">
								<li class="cat-item"><a href="shop.html">Accessories</a> <span class="count">(2)</span></li>
								<li class="cat-item"><a href="shop.html">Accessories</a> <span class="count">(1)</span></li>
								<li class="cat-item"><a href="shop.html">Accessories for Tablet</a> <span class="count">(2)</span></li>
								<li class="cat-item"><a href="shop.html">Air Conditional</a> <span class="count">(0)</span></li>
								<li class="cat-item"><a href="shop.html">Appliances</a> <span class="count">(6)</span></li>
								<li class="cat-item"><a href="shop.html">Batteries &amp; Chargers</a> <span class="count">(1)</span></li>
								<li class="cat-item"><a href="shop.html">Blender</a> <span class="count">(2)</span></li>
								<li class="cat-item"><a href="shop.html">Cameras &amp; Accessories</a> <span class="count">(3)</span></li>
								<li class="cat-item"><a href="shop.html">Cameras &amp; Camcorders</a> <span class="count">(2)</span></li>
								<li class="cat-item"><a href="shop.html">Computers &amp; Laptops</a> <span class="count">(6)</span></li>
								<li class="cat-item"><a href="shop.html">Computers &amp; Networking</a> <span class="count">(1)</span></li>
								<li class="cat-item"><a href="shop.html">Electronic Component</a> <span class="count">(0)</span></li>
								<li class="cat-item"><a href="shop.html">Electronics</a> <span class="count">(8)</span></li>
								<li class="cat-item"><a href="shop.html">Headphone</a> <span class="count">(1)</span></li>
								<li class="cat-item"><a href="shop.html">Home Appliances</a> <span class="count">(1)</span></li>
								<li class="cat-item"><a href="shop.html">Home Furniture</a> <span class="count">(1)</span></li>
								<li class="cat-item"><a href="shop.html">Household Goods</a> <span class="count">(0)</span></li>
								<li class="cat-item"><a href="shop.html">Laptop Asus</a> <span class="count">(1)</span></li>
								<li class="cat-item"><a href="shop.html">Laptop Dell</a> <span class="count">(1)</span></li>
								<li class="cat-item"><a href="shop.html">Laptop HP</a> <span class="count">(0)</span></li>
								<li class="cat-item"><a href="shop.html">Laptop MSI</a> <span class="count">(0)</span></li>
								<li class="cat-item"><a href="shop.html">Laptops &amp; Accessories</a> <span class="count">(2)</span></li>
								<li class="cat-item"><a href="shop.html">Macbook</a> <span class="count">(1)</span></li>
								<li class="cat-item"><a href="shop.html">Microwave</a> <span class="count">(1)</span></li>
								<li class="cat-item"><a href="shop.html">Mixer</a> <span class="count">(1)</span></li>
								<li class="cat-item"><a href="shop.html">Mp3 Player Accessories</a> <span class="count">(1)</span></li>
								<li class="cat-item"><a href="shop.html">Paper Towel</a> <span class="count">(0)</span></li>
								<li class="cat-item"><a href="shop.html">Smartphones &amp; Tablet</a> <span class="count">(2)</span></li>
								<li class="cat-item"><a href="shop.html">Sponge</a> <span class="count">(0)</span></li>
								<li class="cat-item"><a href="shop.html">Television</a> <span class="count">(2)</span></li>
								<li class="cat-item"><a href="shop.html">Television</a> <span class="count">(1)</span></li>
								<li class="cat-item"><a href="shop.html">Televisions</a> <span class="count">(2)</span></li>
								<li class="cat-item"><a href="shop.html">Vacuum Cleaner</a> <span class="count">(2)</span></li>
							</ul>
						</div>
					</div>
					
					<div class="widget-2 widget woocommerce_layered_nav-4 woocommerce widget_layered_nav">
						<div class="widget-inner">
							<div class="block-title-widget">
								<h2><span>Colors</span></h2>
							</div>
							
							<ul>
								<li class="wc-layered-nav-term "><a href="shop.html">Black</a> <span class="count">(3)</span></li>
								<li class="wc-layered-nav-term "><a href="shop.html">Blue</a> <span class="count">(2)</span></li>
								<li class="wc-layered-nav-term "><a href="shop.html">Orange</a> <span class="count">(1)</span></li>
								<li class="wc-layered-nav-term "><a href="shop.html">White</a> <span class="count">(3)</span></li>
								<li class="wc-layered-nav-term "><a href="shop.html">Yellow</a> <span class="count">(1)</span></li>
							</ul>
						</div>
					</div>
					
					<div class="widget-3 widget woocommerce_layered_nav-5 woocommerce widget_layered_nav">
						<div class="widget-inner">
							<div class="block-title-widget">
								<h2><span>Size</span></h2>
							</div>
							
							<ul>
								<li class="wc-layered-nav-term "><a href="shop.html">L</a> <span class="count">(3)</span></li>
								<li class="wc-layered-nav-term "><a href="shop.html">M</a> <span class="count">(1)</span></li>
								<li class="wc-layered-nav-term "><a href="shop.html">S</a> <span class="count">(2)</span></li>
								<li class="wc-layered-nav-term "><a href="shop.html">XL</a> <span class="count">(3)</span></li>
								<li class="wc-layered-nav-term "><a href="shop.html">XS</a> <span class="count">(1)</span></li>
							</ul>
						</div>
					</div>
					
					<div class="widget-4 widget woocommerce_price_filter-3 woocommerce widget_price_filter">
						<div class="widget-inner">
							<div class="block-title-widget">
								<h2><span>price</span></h2>
							</div>
							
							<form method="get" action="">
								<div class="price_slider_wrapper">
									<div class="price_slider" style="display:none;"></div>
									<div class="price_slider_amount">
										<input type="text" id="min_price" name="min_price" value="" data-min="150" placeholder="Min price">
										<input type="text" id="max_price" name="max_price" value="" data-max="700" placeholder="Max price">
										
										<button type="submit" class="button">Filter</button>
										
										<div class="price_label" style="display:none;">
											Price: <span class="from"></span> � <span class="to"></span>
										</div>
										<div class="clear"></div>
									</div>
								</div>
							</form>
						</div>
					</div>
					
					<div class="widget-5 widget etrostore_best_seller_product-3 etrostore_best_seller_product">
						<div class="widget-inner">
							<div class="block-title-widget">
								<h2><span>Best Sellers</span></h2>
							</div>
							
							<div id="best-seller-01" class="sw-best-seller-product">
								<ul class="list-unstyled">
									<li class="clearfix">
										<div class="item-img">
											<a href="simple_product.html" title="corned beef enim">
												<img width="180" height="180" src="resource/front_bootstrap/images/1903/65-180x180.jpg" class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image" alt="" srcset="resource/front_bootstrap/images/1903/65-180x180.jpg 180w, resource/front_bootstrap/images/1903/65-150x150.jpg 150w, resource/front_bootstrap/images/1903/65-300x300.jpg 300w, resource/front_bootstrap/images/1903/65.jpg 600w" sizes="(max-width: 180px) 100vw, 180px">
											</a>
										</div>
										
										<div class="item-content">
											<div class="reviews-content">
												<div class="star"></div>
												<div class="item-number-rating">
													0 Review(s)					
												</div>
											</div>
											
											<h4><a href="simple_product.html" title="corned beef enim">Corned beef enim</a></h4>
											
											<div class="price"><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>400.00</span></div>
										</div>
									</li>
								   
									<li class="clearfix">
										<div class="item-img">
											<a href="simple_product.html" title="philips stand">
												<img width="180" height="180" src="resource/front_bootstrap/images/1903/62-180x180.jpg" class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image" alt="" srcset="resource/front_bootstrap/images/1903/62-180x180.jpg 180w, resource/front_bootstrap/images/1903/62-150x150.jpg 150w, resource/front_bootstrap/images/1903/62-300x300.jpg 300w, resource/front_bootstrap/images/1903/62.jpg 600w" sizes="(max-width: 180px) 100vw, 180px">
											</a>
										</div>
										
										<div class="item-content">
											<div class="reviews-content">
												<div class="star"></div>
												<div class="item-number-rating">
													0 Review(s)					
												</div>
											</div>
											
											<h4><a href="simple_product.html" title="philips stand">Philips stand</a></h4>
											
											<div class="price"><del><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>300.00</span></del> <ins><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>250.00</span></ins></div>
										</div>
									</li>
								   
									<li class="clearfix">
										<div class="item-img">
											<a href="simple_product.html" title="Vacuum cleaner">
												<img width="180" height="180" src="resource/front_bootstrap/images/1903/26-180x180.jpg" class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image" alt="" srcset="resource/front_bootstrap/images/1903/26-180x180.jpg 180w, resource/front_bootstrap/images/1903/26-150x150.jpg 150w, resource/front_bootstrap/images/1903/26-300x300.jpg 300w, resource/front_bootstrap/images/1903/26.jpg 600w" sizes="(max-width: 180px) 100vw, 180px">
											</a>
										</div>
										
										<div class="item-content">
											<div class="reviews-content">
												<div class="star"><span style="width:52.5px"></span></div>
												<div class="item-number-rating">
													4 Review(s)					
												</div>
											</div>
											
											<h4><a href="simple_product.html" title="Vacuum cleaner">Vacuum cleaner</a></h4>
											
											<div class="price"><del><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>350.00</span></del> <ins><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>260.00</span></ins></div>
										</div>
									</li>
								   
									<li class="clearfix">
										<div class="item-img">
											<a href="simple_product.html" title="veniam dolore">
												<img width="180" height="180" src="resource/front_bootstrap/images/1903/45-180x180.jpg" class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image" alt="" srcset="resource/front_bootstrap/images/1903/45-180x180.jpg 180w, resource/front_bootstrap/images/1903/45-150x150.jpg 150w, resource/front_bootstrap/images/1903/45-300x300.jpg 300w, resource/front_bootstrap/images/1903/45.jpg 600w" sizes="(max-width: 180px) 100vw, 180px">
											</a>
										</div>
										
										<div class="item-content">
											<div class="reviews-content">
												<div class="star"><span style="width:35px"></span></div>
												<div class="item-number-rating">
													2 Review(s)					
												</div>
											</div>
											
											<h4><a href="simple_product.html" title="veniam dolore">Veniam dolore</a></h4>
											
											<div class="price"><del><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>250.00</span></del> <ins><span class="woocommerce-Price-amount amount"><span class="woocommerce-Price-currencySymbol">$</span>190.00</span></ins></div>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
					
					<div class="widget-6 widget-last widget text-6 widget_text">
						<div class="widget-inner">
							<div class="textwidget">
								<div class="banner-sidebar">
									<img src="resource/front_bootstrap/images/1903/banner-detail.jpg" title="banner" alt="banner">
								</div>
							</div>
						</div>
					</div>
				</aside>
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
														In auctor ex id urna faucibus porttitor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.�						
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
														In auctor ex id urna faucibus porttitor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.�						
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
														In auctor ex id urna faucibus porttitor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.�						
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
														In auctor ex id urna faucibus porttitor. Lorem ipsum dolor sit amet, consectetur adipiscing elit.�						
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
	
	<div id="subscribe_popup" class="subscribe-popup" style="background: url(resource/front_bootstrap/images/icons/bg_newsletter.jpg)">
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
	
	<script type="text/javascript">
		/* <![CDATA[ */
			var woocommerce_price_slider_params = {"currency_symbol":"$","currency_pos":"left","min_price":"100","max_price":"500"};
		/* ]]> */
	</script>
	
	<script type="text/javascript" src="resource/front_bootstrap/js/widget.min.js"></script>
	<script type="text/javascript" src="resource/front_bootstrap/js/mouse.min.js"></script>
	<script type="text/javascript" src="resource/front_bootstrap/js/slider.min.js"></script>
	<script type="text/javascript" src="resource/front_bootstrap/js/js_composer/js_composer_front.min.js"></script>
	
	<script type="text/javascript" src="resource/front_bootstrap/js/yith-woocommerce-compare/jquery.colorbox-min.js"></script>
	<script type="text/javascript" src="resource/front_bootstrap/js/sw_core/isotope.js"></script>
	<script type="text/javascript" src="resource/front_bootstrap/js/sw_core/jquery.fancybox.pack.js"></script>
	<script type="text/javascript" src="resource/front_bootstrap/js/sw_woocommerce/category-ajax.js"></script>
	<script type="text/javascript" src="resource/front_bootstrap/js/sw_woocommerce/jquery.countdown.min.js"></script>
	<script type="text/javascript" src="resource/front_bootstrap/js/woocommerce/price-slider.min.js"></script>
	
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
