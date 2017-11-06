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
<head>
<title>Variable Product - Premium Multipurpose HTML5/CSS3 Theme</title>
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
<link rel="shortcut icon" href="icons/favicon.png" />

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
<link href="resource/plugins/layui/css/layui.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="resource/plugins/bootstrap/bootstrap.min.css"
	rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" type="text/css"
	href="resource/css/ProductDetails.css">
</head>

<body
	class="product-template-default single single-product woocommerce woocommerce-page">
	<div class="body-wrapper theme-clearfix">
		<jsp:include page="shop_header.jsp"></jsp:include>

		<div class="container">
			<div class="wrap-title">
				<h1>变量产品</h1>
				<div class="bread">
					<div class="breadcrumbs theme-clearfix">
						<div class="container">
							<ul class="breadcrumb" style="margin-left: 830px;">
								<li><a href="common/toShop">首页</a><span class="go-page"></span></li>
								<li><a href="shop_full_width.html">相机 &amp; 配件</a><span
									class="go-page"></span></li>
								<li><a href="shop_full_width.html">电池 &amp; 充电器</a><span
									class="go-page"></span></li>
								<li class="active"><span>变量产品</span></li>
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
							<!-- <div id="product-01"
								class="post-01 product type-product status-publish has-post-thumbnail product_cat-batteries-chargers product_cat-cameras-camcorders product_cat-mp3-player-accessories product_cat-television-cameras-accessories first instock shipping-taxable purchasable product-type-variable has-default-attributes has-children">
								<div class="product_detail row">
									<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 clear_xs">
										<div class="slider_img_productd">
											woocommerce_show_product_images
											<div id="product_img_01" class="product-images loading"
												data-rtl="false">
												<div
													class="product-images-container clearfix thumbnail-bottom">
													Image Slider
													<div class="slider product-responsive">
														<div class="item-img-slider">
															<div class="images">
																<a href="resource/front_bootstrap/images/1903/54.jpg "
																	data-rel="prettyPhoto[product-gallery]" class="zoom">
																	<img width="600" height="600"
																	src="resource/front_bootstrap/images/1903/54.jpg"
																	class="attachment-shop_single size-shop_single" alt=""
																	srcset="resource/front_bootstrap/images/1903/54.jpg 600w, resource/front_bootstrap/images/1903/54-150x150.jpg 150w, resource/front_bootstrap/images/1903/54-300x300.jpg 300w, resource/front_bootstrap/images/1903/54-180x180.jpg 180w"
																	sizes="(max-width: 600px) 100vw, 600px">
																</a>
															</div>
														</div>

														<div class="item-img-slider">
															<div class="images">
																<a href="resource/front_bootstrap/images/1903/58.jpg "
																	data-rel="prettyPhoto[product-gallery]" class="zoom">
																	<img width="600" height="600"
																	src="resource/front_bootstrap/images/1903/58.jpg"
																	class="attachment-shop_single size-shop_single" alt=""
																	srcset="resource/front_bootstrap/images/1903/58.jpg 600w, resource/front_bootstrap/images/1903/58-150x150.jpg 150w, resource/front_bootstrap/images/1903/58-300x300.jpg 300w, resource/front_bootstrap/images/1903/58-180x180.jpg 180w"
																	sizes="(max-width: 600px) 100vw, 600px">
																</a>
															</div>
														</div>

														<div class="item-img-slider">
															<div class="images">
																<a href="resource/front_bootstrap/images/1903/56.jpg "
																	data-rel="prettyPhoto[product-gallery]" class="zoom">
																	<img width="600" height="600"
																	src="resource/front_bootstrap/images/1903/56.jpg"
																	class="attachment-shop_single size-shop_single" alt=""
																	srcset="resource/front_bootstrap/images/1903/56.jpg 600w, resource/front_bootstrap/images/1903/56-150x150.jpg 150w, resource/front_bootstrap/images/1903/56-300x300.jpg 300w, resource/front_bootstrap/images/1903/56-180x180.jpg 180w"
																	sizes="(max-width: 600px) 100vw, 600px">
																</a>
															</div>
														</div>

														<div class="item-img-slider">
															<div class="images">
																<a href="resource/front_bootstrap/images/1903/55.jpg "
																	data-rel="prettyPhoto[product-gallery]" class="zoom">
																	<img width="600" height="600"
																	src="resource/front_bootstrap/images/1903/55.jpg"
																	class="attachment-shop_single size-shop_single" alt=""
																	srcset="resource/front_bootstrap/images/1903/55.jpg 600w, resource/front_bootstrap/images/1903/55-150x150.jpg 150w, resource/front_bootstrap/images/1903/55-300x300.jpg 300w, resource/front_bootstrap/images/1903/55-180x180.jpg 180w"
																	sizes="(max-width: 600px) 100vw, 600px">
																</a>
															</div>
														</div>

														<div class="item-img-slider">
															<div class="images">
																<a href="resource/front_bootstrap/images/1903/54.jpg "
																	data-rel="prettyPhoto[product-gallery]" class="zoom">
																	<img width="600" height="600" src="images/1903/54.jpg"
																	class="attachment-shop_single size-shop_single" alt=""
																	srcset="resource/front_bootstrap/images/1903/54.jpg 600w, resource/front_bootstrap/images/1903/54-150x150.jpg 150w, resource/front_bootstrap/images/1903/54-300x300.jpg 300w, resource/front_bootstrap/images/1903/54-180x180.jpg 180w"
																	sizes="(max-width: 600px) 100vw, 600px">
																</a>
															</div>
														</div>

														<div class="item-img-slider">
															<div class="images">
																<a href="resource/front_bootstrap/images/1903/18.jpg "
																	data-rel="prettyPhoto[product-gallery]" class="zoom">
																	<img width="600" height="600" src="images/1903/18.jpg"
																	class="attachment-shop_single size-shop_single" alt=""
																	srcset="resource/front_bootstrap/images/1903/18.jpg 600w, resource/front_bootstrap/images/1903/18-150x150.jpg 150w, resource/front_bootstrap/images/1903/18-300x300.jpg 300w, resource/front_bootstrap/images/1903/18-180x180.jpg 180w"
																	sizes="(max-width: 600px) 100vw, 600px">
																</a>
															</div>
														</div>
													</div>

													Thumbnail Slider
													<div class="slider product-responsive-thumbnail"
														id="product_thumbnail_427">
														<div class="item-thumbnail-product">
															<div class="thumbnail-wrapper">
																<img width="180" height="180"
																	src="resource/front_bootstrap/images/1903/54-180x180.jpg"
																	class="attachment-shop_thumbnail size-shop_thumbnail"
																	alt=""
																	srcset="resource/front_bootstrap/images/1903/54-180x180.jpg 180w, resource/front_bootstrap/images/1903/54-150x150.jpg 150w, resource/front_bootstrap/images/1903/54-300x300.jpg 300w, resource/front_bootstrap/images/1903/54.jpg 600w"
																	sizes="(max-width: 180px) 100vw, 180px">
															</div>
														</div>

														<div class="item-thumbnail-product">
															<div class="thumbnail-wrapper">
																<img width="180" height="180"
																	src="resource/front_bootstrap/images/1903/58-180x180.jpg"
																	class="attachment-shop_thumbnail size-shop_thumbnail"
																	alt=""
																	srcset="resource/front_bootstrap/images/1903/58-180x180.jpg 180w, resource/front_bootstrap/images/1903/58-150x150.jpg 150w, resource/front_bootstrap/images/1903/58-300x300.jpg 300w, resource/front_bootstrap/images/1903/58.jpg 600w"
																	sizes="(max-width: 180px) 100vw, 180px">
															</div>
														</div>

														<div class="item-thumbnail-product">
															<div class="thumbnail-wrapper">
																<img width="180" height="180"
																	src="resource/front_bootstrap/images/1903/56-180x180.jpg"
																	class="attachment-shop_thumbnail size-shop_thumbnail"
																	alt=""
																	srcset="resource/front_bootstrap/images/1903/56-180x180.jpg 180w, resource/front_bootstrap/images/1903/56-150x150.jpg 150w, resource/front_bootstrap/images/1903/56-300x300.jpg 300w, resource/front_bootstrap/images/1903/56.jpg 600w"
																	sizes="(max-width: 180px) 100vw, 180px">
															</div>
														</div>

														<div class="item-thumbnail-product">
															<div class="thumbnail-wrapper">
																<img width="180" height="180"
																	src="resource/front_bootstrap/images/1903/55-180x180.jpg"
																	class="attachment-shop_thumbnail size-shop_thumbnail"
																	alt=""
																	srcset="resource/front_bootstrap/images/1903/55-180x180.jpg 180w, resource/front_bootstrap/images/1903/55-150x150.jpg 150w, resource/front_bootstrap/images/1903/55-300x300.jpg 300w, resource/front_bootstrap/images/1903/55.jpg 600w"
																	sizes="(max-width: 180px) 100vw, 180px">
															</div>
														</div>

														<div class="item-thumbnail-product">
															<div class="thumbnail-wrapper">
																<img width="180" height="180"
																	src="resource/front_bootstrap/images/1903/54-180x180.jpg"
																	class="attachment-shop_thumbnail size-shop_thumbnail"
																	alt=""
																	srcset="resource/front_bootstrap/images/1903/54-180x180.jpg 180w, resource/front_bootstrap/images/1903/54-150x150.jpg 150w, resource/front_bootstrap/images/1903/54-300x300.jpg 300w, resource/front_bootstrap/images/1903/54.jpg 600w"
																	sizes="(max-width: 180px) 100vw, 180px">
															</div>
														</div>

														<div class="item-thumbnail-product">
															<div class="thumbnail-wrapper">
																<img width="180" height="180"
																	src="resource/front_bootstrap/images/1903/18-180x180.jpg"
																	class="attachment-shop_thumbnail size-shop_thumbnail"
																	alt=""
																	srcset="resource/front_bootstrap/images/1903/18-180x180.jpg 180w, resource/front_bootstrap/images/1903/18-150x150.jpg 150w, resource/front_bootstrap/images/1903/18-300x300.jpg 300w, resource/front_bootstrap/images/1903/18.jpg 600w"
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
											<h1 itemprop="name" class="product_title entry-title">数码相机</h1>

											<div class="reviews-content">
												<div class="star"></div>
												<a href="#reviews" class="woocommerce-review-link"
													rel="nofollow">评论<span class="count">（0）</span></a>
											</div>

											<div>
												<p class="price">
													<span class="woocommerce-Price-amount amount"><span
														class="woocommerce-Price-currencySymbol">$</span>150.00</span>-<span
														class="woocommerce-Price-amount amount"><span
														class="woocommerce-Price-currencySymbol">$</span>310.00</span>
												</p>
											</div>

											<div class="product-info clearfix">
												<div class="product-stock pull-left in-stock">
													<span>库存量：</span>
												</div>
												<span class="sku_wrapper pull-left">货号 ： sku - <span
													class="sku" itemprop="sku">123465</span>
												</span>
											</div>

											<div class="description" itemprop="description">
												<p>Proin nunc nibh, adipiscing eu nisi id, ultrices
													suscipit augue. Sed rhoncus hendrerit lacus, et venenatis
													felis. Donec ut fringilla magna ultrices suscipit augue.
													Proin nunc nibh, adipiscing eu nisi id, ultrices suscipit
													augue. Sed rhoncus hendrerit lacus, et venenatis felis.
													Donec ut fringilla magna ultrices suscipit augue.</p>
											</div>

											<form class="variations_form cart" method="post"
												enctype="multipart/form-data">
												<table class="variations" cellspacing="0">
													<tbody>
														<tr>
															<td class="label">
																<label for="pa_color">颜色</label>
															</td>
															<td class="value">
																<select id="pa_color" class="" name="attribute_pa_color"
																	data-attribute_name="attribute_pa_color"
																	"="" data-show_option_none="yes">
																	<option value="">请选择</option>
																	<option value="black">黑色</option>
																	<option value="blue">蓝色</option>
																	<option value="orange">橘色</option>
																	<option value="white">白色</option>
																	<option value="yellow">黄色</option>
																</select>
															</td>
														</tr>
														<tr>
															<td class="label">
																<label for="pa_size">尺寸</label>
															</td>
															<td class="value">
																<select id="pa_size" class="" name="attribute_pa_size"
																	data-attribute_name="attribute_pa_size"
																	"="" data-show_option_none="yes">
																	<option value="">请选择</option>
																	<option value="l">L</option>
																	<option value="m">M</option>
																	<option value="s">S</option>
																	<option value="xl">XL</option>
																	<option value="xs">XS</option>
																</select> <a class="reset_variations" href="#">Clear</a>
															</td>
														</tr>
													</tbody>
												</table>

												<div class="addcart-wrapper clearfix">
													<div class="single_variation_wrap">
														<div class="woocommerce-variation single_variation"></div>

														<div
															class="woocommerce-variation-add-to-cart variations_button">
															<div class="quantity">
																<input type="number" step="1" min="" max=""
																	name="quantity" value="1" title="Qty"
																	class="input-text qty text" size="4" pattern="[0-9]*"
																	inputmode="numeric">
															</div>
															<button type="submit"
																class="single_add_to_cart_button button alt">添加至购物车</button>
														</div>

														add to cart, wishlist, compare
														<div class="item-bottom">
															<a href="javascript:void(0)" class="compare button"
																rel="nofollow" title="Add to Compare">Compare</a>

															<div
																class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
																<div class="yith-wcwl-add-button show"
																	style="display:block">
																	<a href="wishlist.html" rel="nofollow"
																		class="add_to_wishlist">添加至我的收藏</a> <img
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
																	<span class="feedback">The product is already in
																		the wishlist!</span> <a href="#" rel="nofollow">Browse
																		Wishlist</a>
																</div>

																<div style="clear:both"></div>
																<div class="yith-wcwl-wishlistaddresponse"></div>
															</div>

															<div class="clear"></div>
														</div>
													</div>
												</div>
											</form>

											<div class="social-share">
												<div class="title-share">Share</div>
												<div class="wrap-content">
													<a href="http://www.facebook.com/"
														onclick="javascript:window.open(this.href,'', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;"><i
														class="fa fa-facebook"></i></a> <a href="http://twitter.com/"
														onclick="javascript:window.open(this.href,'', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;"><i
														class="fa fa-twitter"></i></a> <a
														href="https://plus.google.com/"
														onclick="javascript:window.open(this.href,'', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');return false;"><i
														class="fa fa-google-plus"></i></a> <a href="#"> <i
														class="fa fa-dribbble"></i></a> <a href="#"><i
														class="fa fa-instagram"></i></a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div> -->

							<div class="Pro_info">
								<div class="comm_img">
									<a href="#"><img alt="" src="resource/image/3.png"
										style="width: 550px;height: 420px;margin-left: 15px;margin-top: 20px;"></a>
									<div class="comm_imgs">
										<a href="#"><img alt="" src="resource/image/3.png"></a>
										<a href="#"><img alt="" src="resource/image/3.png"></a>
										<a href="#"><img alt="" src="resource/image/3.png"></a>
										<a href="#"><img alt="" src="resource/image/3.png"></a>
										<a href="#"><img alt="" src="resource/image/3.png"></a>
										<div>
											<div style="float: left;">
												<a href="#"
													style="color: #BAAA99;border: none;margin-left: 30px;margin-top: 40px;">
													<i class="glyphicon glyphicon-share"></i> <label
													style="cursor: pointer;">分享</label>
												</a> <a href="#"
													style="display:block; color: #BAAA99;border: none;margin-left: 30px;margin-top: 40px;">
													<i class="glyphicon glyphicon-star"></i> <label
													style="cursor: pointer;">收藏商品</label>
												</a> <label
													style="font-size: 0.1px;margin-top: 42px;color:#BAAA99;">（1762人气）</label>
											</div>
											<div style="float: left;">
												<a href="#"
													style="display: block; margin-left:285px;margin-top: 38px;border: none;color: #BAAA99;">举报</a>
											</div>
										</div>
									</div>
								</div>
								<div class="comm_info">
									<p
										style="width: 400px;margin-left: 30px;margin-top: 20px;font-size:1.2em; font-weight: bold;">珂卡芙2017新款冬季女鞋韩版圆头粗跟长筒靴女中跟女靴964186621@</p>
									<label
										style="margin-left: 30px;margin-top: -5px;color: red;font-size: 0.8em">全国线下3000家实体店</label>
									<div class="comm_backimg">
										<dl>
											<dd>
												<label>价格</label> <label style="margin-left: 50px;">78</label>
											</dd>
											<dd>
												<label>促销价</label> <label style="margin-left: 36px;">60</label>
											</dd>
											<dd>
												<label>本店活动</label> <label style="margin-left: 22px;">满2件，包邮</label>
											</dd>
										</dl>
									</div>
									<label style="display:block; margin-left:30px;margin-top:15px;">运费</label>
									<label
										style="display:block; margin-left:110px;margin-top: -25px;">浙江温州
										至 </label>
									<div class="btn-group">
										<button type="button" class="btn btn-default dropdown-toggle"
											style="display:block; border: none;margin-left:190px;margin-top: -32px;font-weight: bold;"
											data-toggle="dropdown" aria-haspopup="true"
											aria-expanded="ture">
											南通 <span class="caret"></span>
										</button>
										<ul class="dropdown-menu" style="width: 280px;">
											<li><ul>
													<li class="layui-this"><a href="#">北京</a></li>
													<li><a href="#">天津</a></li>
													<li><a href="#">上海</a></li>
													<li><a href="#">重庆</a></li>
												</ul></li>
											<li><ul>
													<li class="layui-this"><a href="#">河北</a></li>
													<li><a href="#">山西</a></li>
													<li><a href="#">内蒙古</a></li>
													<li><a href="#">辽宁</a></li>
													<li><a href="#">吉林</a></li>
													<li><a href="#">黑龙江</a></li>
												</ul></li>
											<li><ul>
													<li class="layui-this"><a href="#">江苏</a></li>
													<li><a href="#">浙江</a></li>
													<li><a href="#">安徽</a></li>
													<li><a href="#">福建</a></li>
													<li><a href="#">江西</a></li>
													<li><a href="#">山东</a></li>
												</ul></li>
											<li><ul>
													<li class="layui-this"><a href="#">河南</a></li>
													<li><a href="#">湖北</a></li>
													<li><a href="#">湖南</a></li>
													<li><a href="#">广东</a></li>
													<li><a href="#">广西</a></li>
													<li><a href="#">海南</a></li>
												</ul></li>
											<li><ul>
													<li class="layui-this"><a href="#">四川</a></li>
													<li><a href="#">贵州</a></li>
													<li><a href="#">云南</a></li>
													<li><a href="#">西藏</a></li>
													<li><a href="#">陕西</a></li>
													<li><a href="#">甘肃</a></li>
												</ul></li>
											<li><ul>
													<li class="layui-this"><a href="#">青海</a></li>
													<li><a href="#">宁夏</a></li>
													<li><a href="#">新疆</a></li>
													<li><a href="#">台湾</a></li>
													<li><a href="#">香港</a></li>
													<li><a href="#">澳门</a></li>
												</ul></li>
										</ul>
									</div>
									<div
										style="margin-top:8px;margin-left:20px; width: 100%;height: 2px;border-top: 1px #C9C9C9 dashed;"></div>
									<label style="margin-left: 50px;margin-top: 10px;">月销量</label>
									<label>1235</label>
									<p style="display:block; margin-top: -26px;margin-left: 180px;">|</p>
									<label
										style="display:block; margin-left: 220px;margin-top: -29px;">累计评价</label>
									<label style="margin-left: 290px;margin-top: -25px;">235</label>
									<p style="margin-top: -26px;margin-left: 350px;">|</p>
									<label
										style="display:block; margin-left: 390px;margin-top: -29px;">天猫积分</label>
									<label style="margin-left: 460px;margin-top: -25px;">123</label>
									<div
										style="margin-top:7px;margin-left:20px; width: 100%;height: 2px;border-top: 1px #C9C9C9 dashed;"></div>
									<form class="layui-form" action="">
										<div class="layui-form-item">
											<label class="layui-form-label"
												style="font-weight: bold;margin-top: 15px;margin-left: -5px;">尺码</label>
											<div class="layui-input-block myInput">
												<a href="javascript:;" style="margin-left: -1px;"
													name="size" title="S">S</a> <a href="#" name="size"
													title="M">M</a> <a href="#" name="size" title="L">L</a> <a
													href="#" name="size" title="XL">XL</a>
											</div>
										</div>
									</form>
									<form class="layui-form" action="">
										<div class="layui-form-item" style="margin-top: -20px;">
											<label class="layui-form-label"
												style="width:100px; font-weight: bold;margin-top: 10px;margin-left: 2px;">颜色分类</label>
											<div class="layui-input-block">
												<a><img src="resource/image/2.png"
													style="margin-left: -1px;" name="color" title="红色"></a> <a><img
													style="margin-left: 70px;" src="resource/image/2.png"
													name="color" title="黄色"></a> <a><img
													style="margin-left: 140px;" src="resource/image/2.png"
													name="color" title="绿色"></a> <a><img
													style="margin-left: 210px;" src="resource/image/2.png"
													name="color" title="蓝色"></a>
											</div>
										</div>
									</form>
									<div style="margin-top: 20px;">
										<label style="margin-left: 30px;">数量</label>
										<input type="number" class="layui-input"
											style=" width: 70px;margin-left: 110px;margin-top: -35px;">
										<label
											style="display:block; margin-top: -30px;margin-left: 185px;">件</label>
										<label
											style="display:block; margin-top: -25px;margin-left: 210px;">库存189件</label>
									</div>
									<input type="submit" value="立即购买"
										style="width: 150px;font-weight:bold; height: 40px;background-color: white; margin-top: 40px;margin-left: 100px;">
									<input type="submit" value="加入购物车"
										style="width: 150px;font-weight:bold; height: 40px;background-color: white;margin-top: 40px;margin-left: 40px;">


								</div>

							</div>
							<div style="clear: both;"></div>

							<div class="tabs clearfix">
								<div class="tabbable">
									<ul class="nav nav-tabs">
										<li class="description_tab active"><a
											href="#tab-description" data-toggle="tab">商品详情</a></li>

										<li class="additional_information_tab "><a
											href="#tab-additional_information" data-toggle="tab">商品咨询</a></li>

										<li class="reviews_tab "><a href="#tab-reviews"
											data-toggle="tab">商品评价（0）</a></li>
									</ul>

									<div class="clear"></div>

									<div class=" tab-content">
										<div class="tab-pane active" id="tab-description">
											<h2>商品详情</h2>

											<i class="glyphicon glyphicon-bookmark"
												style="color: orange;font-size: 1.2em;"></i>
											<h3
												style="margin-left: 25px;margin-top: -20px;color: orange;">商品尺码SIZE</h3>

											<div style="width: 100%; border-top: 1px dashed #E8E8E8 ;"></div>

											<label style="margin-top: 10px;">TIPS:</label> <label
												style="display: block;font-stretch: normal;">1.
												选购时，请综合参考尺码表中各项参数，有助于你选择到更合适的尺码。</label> <label
												style="display: block;font-stretch: normal;">2.（只适用服装）平铺测量自己的合身服装尺寸作参考，对比选购更准确！</label>
											<label style="display: block;font-stretch: normal;">3.
												请放心挑选尺码，7天退货无忧替你保驾护航。</label> <label
												style="display: block;font-weight: bold;margin-top: 20px;">尺码对照表：</label>
											<table class="layui-table">
												<thead>
													<tr>
														<th style="background-color:#F2F2F2; ">尺码</th>
														<th style="background-color:#F2F2F2; ">号型</th>
														<th style="background-color:#F2F2F2; ">肩宽</th>
														<th style="background-color:#F2F2F2; ">胸围</th>
														<th style="background-color:#F2F2F2; ">裙长</th>
														<th style="background-color:#F2F2F2; ">袖长</th>
													</tr>
													<tr>
														<th>XS</th>
														<th>155/76A</th>
														<th>35</th>
														<th>82</th>
														<th>84</th>
														<th>56</th>
													</tr>
													<tr>
														<th>S</th>
														<th>160/80A</th>
														<th>36</th>
														<th>86</th>
														<th>85</th>
														<th>57</th>
													</tr>
													<tr>
														<th>M</th>
														<th>165/84A</th>
														<th>37</th>
														<th>90</th>
														<th>86</th>
														<th>58</th>
													</tr>
												</thead>
											</table>
											<i class="glyphicon glyphicon-bookmark"
												style="color: orange;font-size: 1.2em;margin-top: 30px;"></i>
											<h3
												style="margin-left: 25px;margin-top: -20px;color: orange;">商品参数DETAILS</h3>

											<table class="layui-table details">
												<tr>
													<th>品牌名称
													<td>苏醒的乐园</td>
													</th>
													<th>材质成分
													<td>聚丙烯腈纤维(腈纶)53% 棉47</td>
													</th>
													<th>服装版型
													<td>宽松</td>
													</th>
												</tr>
												<tr>
													<th>组合形式
													<td>两件套</td>
													</th>
													<th>领子
													<td>西装领</td>
													</th>
													<th>上市年份/季节
													<td>2017年秋季</td>
													</th>
												</tr>

											</table>
											<i class="glyphicon glyphicon-bookmark"
												style="color: orange;font-size: 1.2em;margin-top: 30px;"></i>
											<h3
												style="margin-left: 25px;margin-top: -20px;color: orange;">商品展示IMAGES</h3>
											<div style="width: 100%; border-top: 1px dashed #E8E8E8 ;"></div>

											<input
												style="display:block; width: 120px;height: 40px;border-radius:10px;border-color:#E5E5E5; text-align: center;margin: 30 auto;"
												value="模特展示">

											<img alt="" src="resource/image/3.png">
											<img alt="" src="resource/image/3.png">
											<img alt="" src="resource/image/3.png" style="display: block;margin: 20 auto;">
											<img alt="" src="resource/image/3.png">
											<img alt="" src="resource/image/3.png">
											<img alt="" src="resource/image/3.png">
											<img alt="" src="resource/image/3.png">
											<img alt="" src="resource/image/3.png" style="display: block;margin: 20 auto;">

										</div>

										<div class="tab-pane " id="tab-additional_information">
											<h2>商品咨询</h2>
											<table class="shop_attributes">
												<tbody>
													<tr class="">
														<th>Color</th>
														<td>
															<p>Black, Blue, Orange, White, Yellow</p>
														</td>
													</tr>

													<tr class="alt">
														<th>Size</th>
														<td>
															<p>L, M, S, XL, XS</p>
														</td>
													</tr>
												</tbody>
											</table>
										</div>

										<div class="tab-pane" id="tab-reviews">
											<div id="reviews">
												<div id="comments">
													<h2>商品评价（0）</h2>
													<p class="woocommerce-noreviews">There are no reviews
														yet.</p>
												</div>

												<div id="review_form_wrapper">
													<div id="review_form">
														<div id="respond" class="comment-respond">
															<h3 id="reply-title" class="comment-reply-title">
																Be the first to review "Variable Product" <small><a
																	rel="nofollow" id="cancel-comment-reply-link" href=""
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
														<!-- #respond -->
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
									<div class="widget-inner"></div>
								</div>

								<div
									class="widget-2 widget-last widget sw_related_upsell_widget-3 sw_related_upsell_widget"
									data-scroll-reveal="enter bottom move 20px wait 0.2s">
									<div class="widget-inner">
										<div id="sliderup_sw_related_upsell_widget-3"
											class="sw-woo-container-slider upsells-products responsive-slider clearfix loading"
											data-lg="4" data-md="3" data-sm="2" data-xs="2"
											data-mobile="1" data-speed="1000" data-scroll="1"
											data-interval="5000" data-autoplay="false">
											<div class="resp-slider-container">
												<div class="box-slider-title">
													<h2>
														<span>Upsell Products</span>
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
																			title="Add to Cart">添加至购物车</a> <a
																			href="javascript:void(0)" class="compare button"
																			rel="nofollow" title="Add to Compare">Compare</a>

																		<div
																			class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
																			<div class="yith-wcwl-add-button show"
																				style="display:block">
																				<a href="wishlist.html" rel="nofollow"
																					class="add_to_wishlist">添加至我的收藏</a> <img
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
																				<span class="feedback">商品已经添加</span> <a href="#"
																					rel="nofollow">查看我的收藏</a>
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
																				<span class="feedback">The product is already
																					in the wishlist!</span> <a href="#" rel="nofollow">Browse
																					Wishlist</a>
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
																				srcset="resource/front_bootstrap/images/1903/22-300x300.jpg 300w, resource/front_bootstrap/images/1903/22-150x150.jpg 150w,resource/front_bootstrap/ images/1903/22-180x180.jpg 180w, resource/front_bootstrap/images/1903/22.jpg 600w"
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
																				<span class="feedback">The product is already
																					in the wishlist!</span> <a href="#" rel="nofollow">Browse
																					Wishlist</a>
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
																				<span class="feedback">The product is already
																					in the wishlist!</span> <a href="#" rel="nofollow">Browse
																					Wishlist</a>
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
																				<span class="feedback">The product is already
																					in the wishlist!</span> <a href="#" rel="nofollow">Browse
																					Wishlist</a>
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
							</div>
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
		src="resource/front_bootstrap/js/wc-quantity-increment.min.js"></script>
	<script type="text/javascript"
		src="resource/front_bootstrap/js/plugins.js"></script>
	<script type="text/javascript"
		src="resource/front_bootstrap/js/megamenu.min.js"></script>
	<script type="text/javascript"
		src="resource/front_bootstrap/js/main.min.js"></script>
	<script type="text/javascript"
		src="resource/plugins/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="resource/plugins/layui/layui.js"></script>
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
