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
<head>
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
<link rel="shortcut icon" href="icons/favicon.png" />

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
<link rel="stylesheet" href="resource/front_bootstrap/css/woocommerce/prettyPhoto.css" />
<link rel="stylesheet" href="resource/front_bootstrap/css/yith-woocommerce-wishlist/style.css" />


<link rel="stylesheet" href="resource/front_bootstrap/css/custom.css" />
<link rel="stylesheet" href="resource/front_bootstrap/css/app-orange.css" id="theme_color" />
<link rel="stylesheet" href="" id="rtl" />
<link rel="stylesheet" href="resource/front_bootstrap/css/app-responsive.css" />
<link href="resource/plugins/laysui/css/layui.css" rel="stylesheet" type="text/css" media="all" />
<link href="resource/plugins/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css"
	media="all" />
<link rel="stylesheet" type="text/css" href="resource/css/ProductDetails.css">
<link rel="stylesheet" type="text/css" href="resource/plugins/pictureMagnification/css/default.css">
<link rel="stylesheet" href="resource/plugins/pictureMagnification/css/smoothproducts.css">

<style type="text/css">
.page {
	padding: 5px 30px 30px 30px;
	max-width: 800px;
	margin: 0 auto;
	font-family: "Segoe UI", Frutiger, "Frutiger Linotype", "Dejavu Sans",
		"Helvetica Neue", Arial, sans-serif;
	background: #fff;
	color: #555;
}

img {
	border: none;
}

a:link,a:visited {
	color: #F0353A;
}

a:hover {
	color: #8C0B0E;
}

ul {
	overflow: hidden;
}

pre {
	background: #333;
	padding: 10px;
	overflow: auto;
	color: #BBB7A9;
}

.demo {
	text-align: center;
	padding: 30px 0
}

.clear {
	clear: both;
}

.imgList {
	padding: 0;
	margin: 0;
}

.imgList li {
	float: left;
	width: 80px;
	height: 130px;
	margin: 10px;
}

.imgList li img {
	width: 80px;
	height: 80px;
}
.imgList li img:HOVER {
	border: 1px solid red;
	cursor:pointer;
}
</style>
<script type="text/javascript" src="resource/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
	var a=$(".imgList").find('img');
	$(a[0]).css('border',' 1px solid red');
	console.log(a[0]);
	$(".imgList").find("li").click(function() {
		var img=$(".imgList").find("li").find('img');
		$(img).each(function() {
			$(this).css('border','none');
		});
		$(this).find('img').css('border',' 1px solid red');
		$(".prodeImg").attr('src',$(this).find("img").attr('src'));
	});
});
</script>
</head>

<body class="product-template-default single single-product woocommerce woocommerce-page">
	<div class="body-wrapper theme-clearfix">
		<jsp:include page="shop_header.jsp"></jsp:include>

		<div class="container">
			<div class="wrap-title">
				<div class="bread">
					<div class="breadcrumbs theme-clearfix">
						<div class="container">
							<ul class="breadcrumb" style="margin-left: 830px;">
								<li>
									<a href="shopIndex/toShop">首页</a>
									<span class="go-page"></span>
								</li>
								<li class="active">
									<span>商品详情</span>
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
			<div id="contents-detail" class="content col-lg-12 col-md-12 col-sm-12" role="main">
				<div id="container">
					<div id="content" role="main">
						<div class="single-product clearfix">
							<div style="clear: both;"></div>
							<div class="Pro_info">
								<div class="comm_img">
									<div class="page">
										<img class="prodeImg"  alt="" src="${images[0] }" style="height:400px;width: 500px">
										<ul class="imgList">
											<c:forEach var="a" items="${images }">
												<li>
													<img alt="" src="${a}">
												</li>
											</c:forEach>
										</ul>
										<div style="clear: both;"></div>

									</div>
									<div class="comm_imgs">
										<div>
											<div>
												<a href="javascript:;" style="color: #BAAA99;border: none;margin-left: 30px;margin-top: 40px;">
													<i class="glyphicon glyphicon-share"></i>
													<label style="cursor: pointer;">分享</label>
												</a>
												<a href="javascript:;"
													style="display:block; color: #BAAA99;border: none;margin-left: 40px;margin-top: 40px;">
													<i class="glyphicon glyphicon-star"></i>
													<label style="cursor: pointer;">收藏商品</label>
												</a>
												<label style="font-size: 0.1px;margin-left:60px;margin-top: 40px;color:#BAAA99;">（1762人气）</label>
											</div>
										</div>
									</div>
								</div>

								<div class="comm_info">
									<p
										style="width: 400px;margin-left: 30px;margin-top: 20px;font-size:1.2em; font-weight: bold;">${ article.aname}</p>
									<!-- <label style="margin-left: 30px;margin-top: -5px;color: red;font-size: 0.8em">全国线下3000家实体店</label> -->
									<div class="comm_backimg">
										<dl>
											<dd>
												<label>价格</label> <label style="margin-left: 50px;">${ article.price*1.2}</label>
											</dd>
											<dd>
												<label>促销价</label> <label style="margin-left: 36px;">${ article.price}</label>
											</dd>
										</dl>
									</div>
									<!-- <label style="display:block; margin-left:30px;margin-top:15px;">运费</label> <label
										style="display:block; margin-left:110px;margin-top: -25px;">浙江温州 至 </label>
									<div class="btn-group">
										<button type="button" class="btn btn-default dropdown-toggle"
											style="display:block; border: none;margin-left:190px;margin-top: -32px;font-weight: bold;"
											data-toggle="dropdown" aria-haspopup="true" aria-expanded="ture">
											南通
											<span class="caret"></span>
										</button>
										<ul class="dropdown-menu" style="width: 280px;">
											<li>
												<ul>
													<li class="layui-this">
														<a href="#">北京</a>
													</li>
													<li>
														<a href="#">天津</a>
													</li>
													<li>
														<a href="#">上海</a>
													</li>
													<li>
														<a href="#">重庆</a>
													</li>
												</ul>
											</li>
											<li>
												<ul>
													<li class="layui-this">
														<a href="#">河北</a>
													</li>
													<li>
														<a href="#">山西</a>
													</li>
													<li>
														<a href="#">内蒙古</a>
													</li>
													<li>
														<a href="#">辽宁</a>
													</li>
													<li>
														<a href="#">吉林</a>
													</li>
													<li>
														<a href="#">黑龙江</a>
													</li>
												</ul>
											</li>
											<li>
												<ul>
													<li class="layui-this">
														<a href="#">江苏</a>
													</li>
													<li>
														<a href="#">浙江</a>
													</li>
													<li>
														<a href="#">安徽</a>
													</li>
													<li>
														<a href="#">福建</a>
													</li>
													<li>
														<a href="#">江西</a>
													</li>
													<li>
														<a href="#">山东</a>
													</li>
												</ul>
											</li>
											<li>
												<ul>
													<li class="layui-this">
														<a href="#">河南</a>
													</li>
													<li>
														<a href="#">湖北</a>
													</li>
													<li>
														<a href="#">湖南</a>
													</li>
													<li>
														<a href="#">广东</a>
													</li>
													<li>
														<a href="#">广西</a>
													</li>
													<li>
														<a href="#">海南</a>
													</li>
												</ul>
											</li>
											<li>
												<ul>
													<li class="layui-this">
														<a href="#">四川</a>
													</li>
													<li>
														<a href="#">贵州</a>
													</li>
													<li>
														<a href="#">云南</a>
													</li>
													<li>
														<a href="#">西藏</a>
													</li>
													<li>
														<a href="#">陕西</a>
													</li>
													<li>
														<a href="#">甘肃</a>
													</li>
												</ul>
											</li>
											<li>
												<ul>
													<li class="layui-this">
														<a href="#">青海</a>
													</li>
													<li>
														<a href="#">宁夏</a>
													</li>
													<li>
														<a href="#">新疆</a>
													</li>
													<li>
														<a href="#">台湾</a>
													</li>
													<li>
														<a href="#">香港</a>
													</li>
													<li>
														<a href="#">澳门</a>
													</li>
												</ul>
											</li>
										</ul>
									</div> -->
									<div
										style=" margin-top:8px;margin-left:20px; width: 100%;height: 1px;border-top: 1px #C9C9C9 dashed;"></div>
									<label style="margin-left: 50px;margin-bottom: 15px;">月销量</label> <label>${SalesNumberTotal }</label>
									<p style="display:block; margin-top: -30px;margin-left: 180px;">|</p>
									<label style="display:block; margin-left: 220px;margin-top: -25px;">累计评价</label> <label
										style="margin-left: 290px;margin-top: -21px;">${ratedTotal }</label>
									<p style="display:block;margin-top: -20px;margin-left: 350px;">|</p>
									<label style="display:block; margin-left: 390px;margin-top: -25px;">积分</label> <label
										style="margin-left: 460px;margin-top: -23px;" id="grade">${article.price } 
										</label>
									<div
										style="margin-top:10px;margin-left:20px; width: 100%;height: 2px;border-top: 1px #C9C9C9 dashed;"></div>
									<form class="layui-form" action="">
										<div class="layui-form-item">
											<label class="layui-form-label"
												style="font-weight: bold;margin-top: 15px;margin-left: -5px;">尺码</label>
											<div class="layui-input-block myInput">
												<a href="javascript:;" style="margin-left: -1px;" name="size" title="S">S</a>
												<a href="javascript:;" name="size" title="M">M</a>
												<a href="javascript:;" name="size" title="L">L</a>
												<a href="javascript:;" name="size" title="XL">XL</a>
											</div>
										</div>
									</form>
									<!-- <form class="layui-form" action="">
										<div class="layui-form-item" style="margin-top: -20px;">
											<label class="layui-form-label"
												style="width:100px; font-weight: bold;margin-top: 10px;margin-left: 2px;">颜色分类</label>
											<div class="layui-input-block">
												<a>
													<img src="resource/image/2.png" style="margin-left: -1px;" name="color" title="红色">
												</a>
												<a>
													<img style="margin-left: 70px;" src="resource/image/2.png" name="color" title="黄色">
												</a>
												<a>
													<img style="margin-left: 140px;" src="resource/image/2.png" name="color" title="绿色">
												</a>
												<a>
													<img style="margin-left: 210px;" src="resource/image/2.png" name="color" title="蓝色">
												</a>
											</div>
										</div>
										
									</form> -->
									<div style="margin-top: 20px;">
										<label style="margin-left: 30px;">数量</label>
										<input id="articleNumberId" type="number" class="layui-input" value="1" min="1"
											max="${ article.stock}" style=" width: 70px;margin-left: 110px;margin-top: -35px;">
										<label style="display:block; margin-top: -30px;margin-left: 185px;">件</label> <label
											style="display:block; margin-top: -25px;margin-left: 210px;">库存${ article.stock}件</label>
									</div>
									<input type="submit"  value="立即购买" onclick="userBuyImmediately()"
										style="width: 150px;font-weight:bold; height: 40px;background-color: #FFEDED; margin-top: 40px;margin-left: 100px;">
									<!-- 先给死perid -->
									<input type="hidden" id="userId" value="${user.id }">
									<!--隐藏域存当前商品ID  -->
									<input type="hidden" id="articleId" value="${ article.id}">
									<input type="button" value="加入购物车" onclick="userAddArticleToShoppingCar()"
										style="width: 150px;font-weight:bold; height: 40px;background-color: #FFC5AF;margin-top: 40px;margin-left: 40px;">


								</div>

							</div>
							<div style="clear: both;"></div>

							<div class="tabs clearfix">
								<div class="tabbable">
									<ul class="nav nav-tabs">
										<li class="description_tab active">
											<a href="#tab-description" data-toggle="tab">商品详情</a>
										</li>
										<li class="reviews_tab ">
											<a href="#tab-reviews" data-toggle="tab">商品评价（${ratedTotal }）</a>
										</li>
									</ul>

									<div class="clear"></div>

									<div class=" tab-content">
										<div class="tab-pane tab1 active" id="tab-description">
											<h2>商品详情</h2>${ article.describes}

											<!-- 								<i class="glyphicon glyphicon-bookmark"
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

											<img alt="" src="resource/image/3.png"> <img alt=""
												src="resource/image/3.png"> <img alt=""
												src="resource/image/3.png"
												style="display: block;margin: 20 auto;"> <img alt=""
												src="resource/image/3.png"> <img alt=""
												src="resource/image/3.png"> <img alt=""
												src="resource/image/3.png"> <img alt=""
												src="resource/image/3.png"> <img alt=""
												src="resource/image/3.png"
												style="display: block;margin: 20 auto;">

										</div> -->

										</div>
										<div class="tab-pane" id="tab-reviews">
											<div id="reviews">
												<div id="comments">
													<h2>商品评价（${ratedTotal }）</h2>
													<table style="width: 100%">
														<c:forEach var="orderRated" items="${orderRateds }">
															<tr style="height: 40px;">
																<td style="width: 150px;text-align: center;">
																	<img style="border-radius:100%;" alt="" width="20px" height="20px"
																		src="resource/image/userdefaultpic.jpg">
																</td>
																<td>${orderRated.ratedCentent }</td>
															</tr>
															<tr style="border-bottom: 1px solid #EFEFEF;">
																<td>${orderRated.ratedUserName }</td>
																<td style="text-align: right;">${orderRated.ratedDate }</td>
															</tr>
														</c:forEach>
													</table>
												</div>
												<div class="clear"></div>
											</div>
										</div>

									</div>
									<div class="describe" style="width:100%;height:130px; border:1px solid orange;float: left;">
										<div style="width: 100%;height: 30px;background-color: orange;">
											<label style="margin-left: 30px;line-height: 30px;">累计评价（${ratedTotal }）</label>
										</div>
										<div style="display: block;float: left;">
											<label style="margin-left: 60px;margin-top: 10px;">与描述相符</label> <label
												style="display: block;margin-left: 70px;margin-top:-10px;font-size : 2.5em;color: orange;">4.8</label>
											<div style="display:block; margin-left: 60px;margin-top: -10px;float: left;">
												<i class="glyphicon glyphicon-star-empty"></i>
												<i class="glyphicon glyphicon-star-empty"></i>
												<i class="glyphicon glyphicon-star-empty"></i>
												<i class="glyphicon glyphicon-star-empty"></i>
												<i class="glyphicon glyphicon-star-empty"></i>
											</div>
										</div>
										<div
											style="display:block;float:left; border-left: 1px dashed #000;height:80%;line-height:1px;margin-left: 30px;margin-top:10px; border-color: #EAEAEA;"></div>
										<label
											style="width: 1.5em;float: left;margin-left: 30px;margin-top: 8px;font-size: 0.1em;">大家都写到</label>
										<div class="des_input" style="display:block; float: left;margin-left: 50px; ">
											<input value="板型很好（23）">
											<input value="质量不错（67）">
											<input value="掉色严重（7）" style="border-color: green;color: green;">
										</div>
									</div>
									<div class="content" style="width: 100%;border: 1px solid orange;margin-top: 130px;">
										<div style="background-color: #EFEFEF;width: 100%;height: 40px;">
											<form class="layui-form" action="">
												<div class="layui-form-item">
													<div class="layui-input-block layui-input-blocksa">
														<input type="radio" name="sex" value="" title="全部(${ratedTotal })"
															style="font-size: 10px;" checked="">
														<input type="radio" name="sex" value="" title="追评(4)" style="font-size: 10px;">
														<input type="radio" name="sex" value="" title="图片(7)" style="font-size: 10px;">

													</div>

												</div>
											</form>

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

								<div class="widget-2 widget-last widget sw_related_upsell_widget-3 sw_related_upsell_widget"
									data-scroll-reveal="enter bottom move 20px wait 0.2s">
									<div class="widget-inner">
										<div id="sliderup_sw_related_upsell_widget-3"
											class="sw-woo-container-slider upsells-products responsive-slider clearfix loading"
											data-lg="4" data-md="3" data-sm="2" data-xs="2" data-mobile="1" data-speed="1000"
											data-scroll="1" data-interval="5000" data-autoplay="false"></div>
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

	<script type="text/javascript" src="resource/front_bootstrap/js/widget.min.js"></script>
	<script type="text/javascript" src="resource/front_bootstrap/js/mouse.min.js"></script>
	<script type="text/javascript" src="resource/front_bootstrap/js/slider.min.js"></script>
	<script type="text/javascript"
		src="resource/front_bootstrap/js/js_composer/js_composer_front.min.js"></script>

	<script type="text/javascript"
		src="resource/front_bootstrap/js/yith-woocommerce-compare/jquery.colorbox-min.js"></script>
	<script type="text/javascript" src="resource/front_bootstrap/js/sw_core/isotope.js"></script>
	<script type="text/javascript" src="resource/front_bootstrap/js/sw_core/jquery.fancybox.pack.js"></script>
	<script type="text/javascript" src="resource/front_bootstrap/js/sw_woocommerce/category-ajax.js"></script>
	<script type="text/javascript"
		src="resource/front_bootstrap/js/sw_woocommerce/jquery.countdown.min.js"></script>
	<script type="text/javascript" src="resource/front_bootstrap/js/woocommerce/price-slider.min.js"></script>
	<script type="text/javascript" src="resource/front_bootstrap/js/woocommerce/single-product.min.js"></script>
	<script type="text/javascript"
		src="resource/front_bootstrap/js/woocommerce/prettyPhoto/jquery.prettyPhoto.init.min.js"></script>
	<script type="text/javascript"
		src="resource/front_bootstrap/js/woocommerce/prettyPhoto/jquery.prettyPhoto.min.js"></script>

	<script type="text/javascript" src="resource/front_bootstrap/js/wc-quantity-increment.min.js"></script>
	<script type="text/javascript" src="resource/front_bootstrap/js/plugins.js"></script>
	<script type="text/javascript" src="resource/front_bootstrap/js/megamenu.min.js"></script>
	<script type="text/javascript" src="resource/front_bootstrap/js/main.min.js"></script>
	<script type="text/javascript" src="resource/plugins/jquery/jquery.min.js"></script>
	<script type="text/javascript"
		<script src="resource/plugins/pictureMagnification/js/jquery.min.js" type="text/javascript"></script>
		<script type="text/javascript" src="resource/plugins/pictureMagnification/js/smoothproducts.min.js"></script>
		<script type="text/javascript">
			/* wait for images to load */
		$(window).load(function() {
	$('.sp-wrap').smoothproducts();
	});
</script>
		<script type="text/javascript" src="resource/plugins/laysui/layui.js"></script>
		<script type="text/javascript">
		/* 立即购买*/
			function userBuyImmediately(){
				layui.use('layer', function() {
					var layer = layui.layer;
				var userId = $("#userId").val();
				if(userId==null||userId==""){
					layer.msg("还没有登录！");
				}else{	
					var articleId = $("#articleId").val();
					var articleNumber = $("#articleNumberId").val();
				$.ajax({
					url : 'variableProduct/userBuyImmediately?articleId='+articleId+'&articleNumber='+articleNumber,
					success : function(data) {
					if(data!="fail"){
						window.location.href="variableProduct/toconfirm_order?ordersId="+data;
					}else{
					layer.msg("服务器错误！！稍后重试");
					}
					
					},
					error : function(e) {
						layer.msg("服务器错误！！稍后重试");
					}
				});

		
				}
			});
			}
		</script>
		<script type="text/javascript">
		/* 添加购物车JS，ajax提交 */
		function userAddArticleToShoppingCar() {
			layui.use('layer', function() {
				var layer = layui.layer;
			var userId = $("#userId").val();
			if(userId==null||userId==""){
			layer.msg("还没有登录！");
			}
				else{	
					var articleId = $("#articleId").val();
					var articleNumber = $("#articleNumberId").val();
				var shoppingCar = {
				'perId' : userId,
				'articleId' : articleId,
				'number' : articleNumber
			};
			
				$.ajax({
					url : 'variableProduct/userAddArticleToShoppingCar',
					type : "POST",
					data : shoppingCar,
					success : function(data) {
						if (data == "fail") {
							layer.msg("添加到购物车失败！稍后重试");
						} else if (data == "success") {
							layer.msg("添加到购物车成功！");
						}
					},
					error : function(e) {
						layer.msg("服务器错误！！稍后重试");
					}
				});
		
				}
			
	});
		}
</script>
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
	</script><!--[if gte IE 9]><!-->
	<script type="text/javascript">
		var request, b = document.body, c = 'className', cs = 'customize-support', rcs = new RegExp(
				'(^|\\s+)(no-)?' + cs + '(\\s+|$)');
		request = true;

		b[c] = b[c].replace(rcs, ' ');
		// The customizer requires postMessage and CORS (if the site is cross domain)
		b[c] += (window.postMessage && request ? ' ' : ' no-') + cs;
		$(function() {
			var grd=$("#grade").html();
			$("#grade").html(grd.substring(0,grd.indexOf('.')));
		});
	</script>
</body>
</html>
