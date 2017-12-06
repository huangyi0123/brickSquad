<%@page import="com.brick.squad.util.PageUtil"%>
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
<title>${msg }</title>
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


<link rel="stylesheet" href="resource/front_bootstrap/css/custom.css" />
<link rel="stylesheet" href="resource/front_bootstrap/css/app-orange.css" id="theme_color" />
<link rel="stylesheet" href="" id="rtl" />
<link rel="stylesheet" href="resource/front_bootstrap/css/app-responsive.css" />
</head>

<body class="page has-right-sidebar has-right-product-sidebar">

	<div class="body-wrapper theme-clearfix">
		<jsp:include page="shop_header.jsp">
			<jsp:param value="${toShopDetailsShoppingCar}" name="toShopDetailsShoppingCar" />
		</jsp:include>

		<div class="listings-title">
			<div class="container">
				<div class="wrap-title">
					<h1>${msg }</h1>

					<div class="bread">
						<div class="breadcrumbs theme-clearfix">
							<div class="container">
								<ul class="breadcrumb">
									<li>
										<a href="shopIndex/toShop">首页</a>
										<span class="go-page"></span>
									</li>

									<li class="active">
										<span>${msg }</span>
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
				<div id="contents" role="main" class="main-page col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<div class="post-6 page type-page status-publish hentry">
						<div class="entry-content">
							<div class="entry-summary">
								<div id="sw_deal_01" class="sw-hotdeal ">
									<div class="sw-hotdeal-content">




										<c:if test="${url2=='findHotArticletotonew_deals' }">
											<c:forEach items="${map.data }" var="a">
												<div class="item-product col-lg-3 col-md-3 col-sm-4 col-xs-6">
													<div class="item-detail">
														<div class="item-img products-thumb">
															<span class="onsale">Sale!</span>
															<a href="variableProduct/toVariable_product?productId=${a.id}">
																<div class="product-thumb-hover">
																	<img style="width: 300px;height: 300px" alt="" src="${a.image }">
																</div>
															</a>

															<!-- add to cart, wishlist, compare -->
															<div class="item-bottom clearfix">
																<a rel="nofollow" href="javascript:;" onclick="addCar('${a.id}')"
																	class="button product_type_simple" title="加入购物车">加入购物车</a>

																<div class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
																	<div class="yith-wcwl-add-button show" style="display:block">
																		<a href="javascript:;" onclick="addWish('${a.id}')" rel="nofollow" class="">加入收藏</a>
																	</div>

																	<div class="yith-wcwl-wishlistaddedbrowse hide" style="display:none;">
																		<span class="feedback">Product added!</span>
																		<a href="#" rel="nofollow">Browse Wishlist</a>
																	</div>

																	<div class="yith-wcwl-wishlistexistsbrowse hide" style="display:none">
																		<span class="feedback">The product is already in the wishlist!</span>
																		<a href="#" rel="nofollow">浏览</a>
																	</div>

																	<div style="clear:both"></div>
																	<div class="yith-wcwl-wishlistaddresponse"></div>
																</div>


															</div>


														</div>

														<div class="item-content">
															<!-- rating  -->
															<div class="reviews-content">
																<div class="star"></div>
																<div class="item-number-rating">${a.totals}人已购买</div>
															</div>
															<!-- end rating  -->

															<h4>
																<a href="variableProduct/toVariable_product?productId=${a.id}" title="${a.aname }">
																	<p style="height: 60px">${a.aname }</p>
																</a>
															</h4>

															<!-- price -->
															<div class="item-price">
																</del>
																<ins>
																	<span class="woocommerce-Price-amount amount">
																		<span class="woocommerce-Price-currencySymbol">￥</span>${a.price }
																	</span>
																</ins>
																</span>
															</div>
														</div>
													</div>
												</div>
											</c:forEach>

											<div style="clear: both;"></div>
											<div>
												<%
													Map<String,Object> map=(Map<String,Object>)request.getAttribute("map");
																																																																																											PageUtil pageUtil=(PageUtil)map.get("page");
												%>
												<nav aria-label="Page navigation">
												<ul class="pagination">
													<li>
														<a
															href="<%=pageUtil.getCurentPage()==1?"javascript:;":"new_deals/"+map.get("url")+"?curentPage="+1%>"
															style="<%=pageUtil.getCurentPage()==1?"color:#ccc":""%>">
															<span aria-hidden="true">&laquo;</span>
														</a>
													</li>
													<li>
														<a
															href="<%=pageUtil.getCurentPage()==1?"javascript:;":"new_deals/"+map.get("url")+"?curentPage="+(pageUtil.getCurentPage()-1)%>"
															style="<%=pageUtil.getCurentPage()==1?"color:#ccc":""%>" aria-label="Previous">
															<span aria-hidden="true">&lt;</span>
														</a>
													</li>
													<%
														boolean p=true;
																							boolean n=true;
																								for(int i=1;i<=pageUtil.getPageCount();i++ ){
																									int curentPage=pageUtil.getCurentPage();
																									if((curentPage-i>2)&&p){
																										p=false;
													%>

													<li>
														<a href="javascript:;">...</a>
													</li>
													<%
														}
																									if(((curentPage-i)<=2)&&((i-curentPage)<=2)){
													%>

													<li>
														<a style="<%=pageUtil.getCurentPage()==i?"color:red":""%>"
															href="new_deals/${map.url }?curentPage=<%=i%>"><%=i%></a>
													</li>
													<%
														}
																									if((i-curentPage)>2&&n){
																										n=false;
													%>

													<li>
														<a href="javascript:;">...</a>
													</li>
													<%
														}
																							
																								}
													%>
													<li>
														<a
															href="<%=pageUtil.getCurentPage()==pageUtil.getPageCount()?"javascript:;":"new_deals/"+map.get("url")+"?curentPage="+(pageUtil.getCurentPage()+1)%>"
															style="<%=pageUtil.getCurentPage()==pageUtil.getPageCount()?"color:#ccc":""%>"
															aria-label="Next">
															<span aria-hidden="true">&gt;</span>
														</a>
													</li>
													<li>
														<a
															href="<%=pageUtil.getCurentPage()==pageUtil.getPageCount()?"javascript:;":"new_deals/"+map.get("url")+"?curentPage="+pageUtil.getPageCount()%>"
															style="<%=pageUtil.getCurentPage()==pageUtil.getPageCount()?"color:#ccc":""%>">
															<span aria-hidden="true">&raquo;</span>
														</a>
													</li>
													<li>
														<span style="padding:0px;border: none;">
															第
															<input style="width: 40px;margin: 0;padding: 0;height: 35px;text-align: right;"
																type="text" onchange="myChang(this,'${map.page.pageCount}','${map.url }')"
																value="${map.page.curentPage }">
															页
														</span>
													</li>
													<li>
														<span style="border: none;">共${map.page.count }条记录</span>
													</li>
												</ul>
												</nav>
											</div>
										</c:if>
										<c:if test="${url2=='findHotArticle' }">
											<c:forEach items="${map.data }" var="a">
												<div class="item-product col-lg-3 col-md-3 col-sm-4 col-xs-6">
													<div class="item-detail">
														<div class="item-img products-thumb">
															<span class="onsale">Sale!</span>
															<a href="variableProduct/toVariable_product?productId=${a.id}">
																<div class="product-thumb-hover">
																	<img style="width: 300px;height: 300px" alt="" src="${a.image }">
																</div>
															</a>

															<!-- add to cart, wishlist, compare -->
															<div class="item-bottom clearfix">
																<a rel="nofollow" href="javascript:;" onclick="addCar('${a.id}')"
																	class="button product_type_simple" title="加入购物车">加入购物车</a>

																<div class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
																	<div class="yith-wcwl-add-button show" style="display:block">
																		<a href="javascript:;" onclick="addWish('${a.id}')" rel="nofollow" class="">加入收藏</a>
																	</div>

																	<div class="yith-wcwl-wishlistaddedbrowse hide" style="display:none;">
																		<span class="feedback">Product added!</span>
																		<a href="#" rel="nofollow">Browse Wishlist</a>
																	</div>

																	<div class="yith-wcwl-wishlistexistsbrowse hide" style="display:none">
																		<span class="feedback">The product is already in the wishlist!</span>
																		<a href="#" rel="nofollow">浏览</a>
																	</div>

																	<div style="clear:both"></div>
																	<div class="yith-wcwl-wishlistaddresponse"></div>
																</div>
															</div>
														</div>

														<div class="item-content">
															<!-- rating  -->
															<div class="reviews-content">
																<div class="star"></div>
																<div class="item-number-rating">${a.totals}人已购买</div>
															</div>
															<!-- end rating  -->

															<h4>
																<a href="simple_product.html" title="${a.aname }">
																	<p style="height: 60px">${a.aname }</p>
																</a>
															</h4>

															<!-- price -->
															<div class="item-price">
																</del>
																<ins>
																	<span class="woocommerce-Price-amount amount">
																		<span class="woocommerce-Price-currencySymbol">￥</span>${a.price }
																	</span>
																</ins>
																</span>
															</div>
														</div>
													</div>
												</div>
											</c:forEach>

											<div style="clear: both;"></div>
											<div>
												<%
													Map<String,Object> map=(Map<String,Object>)request.getAttribute("map");
																																																																																											PageUtil pageUtil=(PageUtil)map.get("page");
												%>
												<nav aria-label="Page navigation">
												<ul class="pagination">
													<li>
														<a
															href="<%=pageUtil.getCurentPage()==1?"javascript:;":"new_deals/"+map.get("url")+"?s="+map.get("s")+"&search_category="+map.get("search_category")+"&curentPage="+1%>"
															style="<%=pageUtil.getCurentPage()==1?"color:#ccc":""%>">
															<span aria-hidden="true">&laquo;</span>
														</a>
													</li>
													<li>
														<a
															href="<%=pageUtil.getCurentPage()==1?"javascript:;":"new_deals/"+map.get("url")+"?curentPage="+(pageUtil.getCurentPage()-1)%>"
															style="<%=pageUtil.getCurentPage()==1?"color:#ccc":""%>" aria-label="Previous">
															<span aria-hidden="true">&lt;</span>
														</a>
													</li>
													<%
														boolean p=true;
																							boolean n=true;
																								for(int i=1;i<=pageUtil.getPageCount();i++ ){
																									int curentPage=pageUtil.getCurentPage();
																									if((curentPage-i>2)&&p){
																										p=false;
													%>

													<li>
														<a href="javascript:;">...</a>
													</li>
													<%
														}
																									if(((curentPage-i)<=2)&&((i-curentPage)<=2)){
													%>

													<li>
														<a style="<%=pageUtil.getCurentPage()==i?"color:red":""%>"
															href="new_deals/${map.url }?curentPage=<%=i%>"><%=i%></a>
													</li>
													<%
														}
																									if((i-curentPage)>2&&n){
																										n=false;
													%>

													<li>
														<a href="javascript:;">...</a>
													</li>
													<%
														}
																							
																								}
													%>
													<li>
														<a
															href="<%=pageUtil.getCurentPage()==pageUtil.getPageCount()?"javascript:;":"new_deals/"+map.get("url")+"?s="+map.get("s")+"&search_category="+map.get("search_category")+"&curentPage="+(pageUtil.getCurentPage()+1)%>"
															style="<%=pageUtil.getCurentPage()==pageUtil.getPageCount()?"color:#ccc":""%>"
															aria-label="Next">
															<span aria-hidden="true">&gt;</span>
														</a>
													</li>
													<li>
														<a
															href="<%=pageUtil.getCurentPage()==pageUtil.getPageCount()?"javascript:;":"new_deals/"+map.get("url")+"?curentPage="+pageUtil.getPageCount()%>"
															style="<%=pageUtil.getCurentPage()==pageUtil.getPageCount()?"color:#ccc":""%>">
															<span aria-hidden="true">&raquo;</span>
														</a>
													</li>
													<li>
														<span style="padding:0px;border: none;">
															第
															<input style="width: 40px;margin: 0;padding: 0;height: 35px;text-align: right;"
																type="text" onchange="myChang(this,'${map.page.pageCount}','${map.url }')"
																value="${map.page.curentPage }">
															页
														</span>
													</li>
													<li>
														<span style="border: none;">共${map.page.count }条记录</span>
													</li>
												</ul>
												</nav>
											</div>
										</c:if>
										<c:if test="${url eq 'findAllArticle' }">
											<c:forEach items="${map.data }" var="a">
												<div class="item-product col-lg-3 col-md-3 col-sm-4 col-xs-6">
													<div class="item-detail">
														<div class="item-img products-thumb">
															<span class="onsale">Sale!</span>
															<a href="variableProduct/toVariable_product?productId=${a.id}">
																<div class="product-thumb-hover">
																	<img style="width: 300px;height: 300px" alt="" src="${a.image }">
																</div>
															</a>

															<!-- add to cart, wishlist, compare -->
															<div class="item-bottom clearfix">
																<a rel="nofollow" href="javascript:;" onclick="addCar('${a.id}')"
																	class="button product_type_simple" title="加入购物车">加入购物车</a>

																<div class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
																	<div class="yith-wcwl-add-button show" style="display:block">
																		<a href="javascript:;" onclick="addWish('${a.id}')" rel="nofollow" class="">加入收藏</a>
																	</div>

																	<div class="yith-wcwl-wishlistaddedbrowse hide" style="display:none;">
																		<span class="feedback">Product added!</span>
																		<a href="#" rel="nofollow">Browse Wishlist</a>
																	</div>

																	<div class="yith-wcwl-wishlistexistsbrowse hide" style="display:none">
																		<span class="feedback">The product is already in the wishlist!</span>
																		<a href="#" rel="nofollow">浏览</a>
																	</div>

																	<div style="clear:both"></div>
																	<div class="yith-wcwl-wishlistaddresponse"></div>
																</div>
															</div>

														</div>

														<div class="item-content">
															<!-- rating  -->
															<div class="reviews-content">
																<div class="star"></div>
																<div class="item-number-rating">${a.totals}人已购买</div>
															</div>
															<!-- end rating  -->

															<h4>
																<a href="simple_product.html" title="${a.aname }"><p style="height: 60px">${a.aname }</p></a>
															</h4>

															<!-- price -->
															<div class="item-price">
																</del>
																<ins>
																	<span class="woocommerce-Price-amount amount">
																		<span class="woocommerce-Price-currencySymbol">￥</span>${a.price }
																	</span>
																</ins>
																</span>
															</div>
														</div>
													</div>
												</div>
											</c:forEach>

											<div style="clear: both;"></div>
											<div>
												<%
													Map<String,Object> map=(Map<String,Object>)request.getAttribute("map");
																																																																																											PageUtil pageUtil=(PageUtil)map.get("page");
												%>
												<nav aria-label="Page navigation">
												<ul class="pagination">
													<li>
														<a
															href="<%=pageUtil.getCurentPage()==1?"javascript:;":"new_deals/"+map.get("url")+"?s="+map.get("s")+"&search_category="+map.get("search_category")+"&curentPage="+1%>"
															style="<%=pageUtil.getCurentPage()==1?"color:#ccc":""%>">
															<span aria-hidden="true">&laquo;</span>
														</a>
													</li>
													<li>
														<a
															href="<%=pageUtil.getCurentPage()==1?"javascript:;":"new_deals/"+map.get("url")+"?s="+map.get("s")+"&search_category="+map.get("search_category")+"&curentPage="+(pageUtil.getCurentPage()-1)%>"
															style="<%=pageUtil.getCurentPage()==1?"color:#ccc":""%>" aria-label="Previous">
															<span aria-hidden="true">&lt;</span>
														</a>
													</li>
													<%
														boolean p=true;
																							boolean n=true;
																								for(int i=1;i<=pageUtil.getPageCount();i++ ){
																									int curentPage=pageUtil.getCurentPage();
																									if((curentPage-i>2)&&p){
																										p=false;
													%>

													<li>
														<a href="javascript:;">...</a>
													</li>
													<%
														}
																									if(((curentPage-i)<=2)&&((i-curentPage)<=2)){
													%>

													<li>
														<a style="<%=pageUtil.getCurentPage()==i?"color:red":""%>"
															href="new_deals/${map.url }?curentPage=<%=i%>&s=${s}&search_category=${search_category}"><%=i%></a>
													</li>
													<%
														}
																									if((i-curentPage)>2&&n){
																										n=false;
													%>

													<li>
														<a href="javascript:;">...</a>
													</li>
													<%
														}
																							
																								}
													%>
													<li>
														<a
															href="<%=pageUtil.getCurentPage()==pageUtil.getPageCount()?"javascript:;":"new_deals/"+map.get("url")+"?s="+map.get("s")+"&search_category="+map.get("search_category")+"&curentPage="+(pageUtil.getCurentPage()+1)%>"
															style="<%=pageUtil.getCurentPage()==pageUtil.getPageCount()?"color:#ccc":""%>"
															aria-label="Next">
															<span aria-hidden="true">&gt;</span>
														</a>
													</li>
													<li>
														<a
															href="<%=pageUtil.getCurentPage()==pageUtil.getPageCount()?"javascript:;":"new_deals/"+map.get("url")+"?s="+map.get("s")+"&search_category="+map.get("search_category")+"&curentPage="+pageUtil.getPageCount()%>"
															style="<%=pageUtil.getCurentPage()==pageUtil.getPageCount()?"color:#ccc":""%>">
															<span aria-hidden="true">&raquo;</span>
														</a>
													</li>
													<li>
														<span style="padding:0px;border: none;">
															第
															<input style="width: 40px;margin: 0;padding: 0;height: 35px;text-align: right;"
																type="text" onchange="myChang(this,'${map.page.pageCount}','${map.url }')"
																value="${map.page.curentPage }">
															页
														</span>
													</li>
													<li>
														<span style="border: none;">共${map.page.count }条记录</span>
													</li>
												</ul>
												</nav>
											</div>
										</c:if>

									</div>
								</div>
							</div>

							<div class="clearfix"></div>
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
		style="background: url(resource/front_bootstrap/images/icons/bg_newsletter.jpg)">
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

	<script type="text/javascript">
		function myChang(o, a, url) {
			var n = $(o).val();
			consolo.log(n + "################################");
			n = parseInt(n);
			a = parseInt(a);
			if (n >= 1 && n <= a) {
				window.location.href = "new_deals/" + url + "?curentPage=" + n;
			} else {
				$(o).val("");
			}

		}
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
		function addCar(id) {
			console.log(id);
			$.ajax({
				url : 'MedicalInstruments/addCartMedicalInstruments?articleId='
						+ id,
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
			$
					.ajax({
						url : 'MedicalInstruments/addWishlistMedicalInstruments?articleId='
								+ id,
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
