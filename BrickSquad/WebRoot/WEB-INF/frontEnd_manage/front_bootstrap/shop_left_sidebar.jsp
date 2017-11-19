<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<title>Products Archive - Premium Multipurpose HTML5/CSS3 Theme</title>
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
<!-- <link rel="stylesheet" href="resource/front_bootstrap/css/bootstrap.min.css" /> -->

<!-- SLICK v1.6.0 CSS -->
<link rel="stylesheet" href="resource/front_bootstrap/css/slick-1.6.0/slick.css" />

<link rel="stylesheet" href="resource/front_bootstrap/css/jquery.fancybox.css" />
<link rel="stylesheet" href="resource/front_bootstrap/css/yith-woocommerce-compare/colorbox.css" />
<link rel="stylesheet" href="resource/front_bootstrap/css/owl-carousel/owl.carousel.min.css" />
<link rel="stylesheet" href="resource/front_bootstrap/css/owl-carousel/owl.theme.default.min.css" />
<link rel="stylesheet" href="resource/front_bootstrap/css/js_composer/js_composer.min.css" />
<link rel="stylesheet" href="resource/front_bootstrap/css/woocommerce/woocommerce.css" />
<link rel="stylesheet" href="resource/front_bootstrap/css/yith-woocommerce-wishlist/style.css" />

<link href="resource/plugins/laysui/css/layui.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="resource/plugins/bootstrap/bootstrap.min.css"
	rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="resource/front_bootstrap/css/custom.css" />
<link rel="stylesheet" href="resource/front_bootstrap/css/app-orange.css" id="theme_color" />
<link rel="stylesheet" href="" id="rtl" />
<link rel="stylesheet" href="resource/front_bootstrap/css/app-responsive.css" />

<script type="text/javascript">
	function findSecondMedical(typeId,aid){
		$.ajax({
			  url:"${pageContext.request.contextPath}/MedicalInstruments/findSecondMedicalInstruments",
			  data:{typeId:typeId},
			  type:'post', 
			  success:function(data){
				  $("#secondMedical").html('');
				 var json = eval(data); //数组  
				
				  showData(json,aid);
			  }
			  });	
	}
	function showData(json,aid) {
		//循环遍历一边d
		for ( var i = 0; i < json.length; i++) {
			var html = "<li  class='product-category product first product-col-5 col-md-3 col-sm-6 col-xs-6 col-mb-12'>"+
			
			"<a href='${pageContext.request.contextPath }/variableProduct/toVariable_product?productId="+aid+"'>"+
					"<image src='resource/image/articleImg/"+json[i].image+"' alt='Accessories' width='300' height='300'>"+
					"<h3>"+
					json[i].aname+
					"<mark class='count'>"+(1)+"</mark>"+
					"</h3>"+
					"</a>"+"</li>";
			//通过表体id把显示文本显示到网页中
			$("#secondMedical").append(html);
		}
	}
</script>
<script type="text/javascript" src="resource/plugins/laysui/layui.js"></script>
	<script type="text/javascript">
	/* 添加购物车JS，ajax提交 */
	function addCart(id,o){
		var user = '${user}';
	
		if(user!=''){
			$.ajax({
				  url:"${pageContext.request.contextPath}/MedicalInstruments/addCartMedicalInstruments",
				  data:{articleId:id},
				  type:'post', 
				  success:function(data){
					  var json = eval(data);
					 if(json=='1'){
						 alert("商品已存在");
						 $(o).css('background','red');
					 }else {
						 
						 alert("添加商品成功");
						 $(o).css('background','red');
					 }
				  }
				  });	
		}else{
			 alert("还没有登录！"); 
		}
		
		
	}
</script>
	<script type="text/javascript">
	/* 添加购物车JS，ajax提交 */
	function addWish(id,o){
		var user = '${user}';
		if(user!=''){
			$.ajax({
				  url:"${pageContext.request.contextPath}/MedicalInstruments/addWishlistMedicalInstruments",
				  data:{articleId:id},
				  type:'post', 
				  success:function(data){
					  var json = eval(data);
					 if(json=='1'){
						 alert("商品已存");
						 $(o).css('background','red');
					 }else {
						 
						 alert("收藏商品成功");
						 $(o).css('background','red');
					 }
				  }
				  });	
		}else{
			alert("还没有登录！");
		}
		
	}
</script>
</head>

<body
	class="archive post-type-archive woocommerce post-type-archive-product has-left-sidebar has-left-product-sidebar">
	<div class="body-wrapper theme-clearfix">
	<jsp:include page="shop_header.jsp"></jsp:include>

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
			<div class="wrap-title">
				

				<div class="bread" >
					<div class="breadcrumbs theme-clearfix">
						<div class="container">
						<h1 style="font-size:2em;">商品</h1>
							<ul class="breadcrumb" style="padding-left:92%;width:100%;">
								<li><a href="common/toShop">首页</a> <span
									class="go-page"></span></li>

								<li class="active"><span>商品</span></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>


	<div class="container">
		<div class="row">
			<div id="contents" class="content col-lg-9 col-md-8 col-sm-8"
				role="main">
				<div class="listing-top">
					<div
						class="widget-1 widget-first widget rev-slider-widget-2 widget_revslider">
						<div class="widget-inner">
							<!-- OWL SLIDER -->
							<div class="wpb_revslider_element wpb_content_element no-margin">
								<div class="vc_column-inner ">
									<div class="wpb_wrapper">
										<div class="wpb_revslider_element wpb_content_element">
											<div id="main-slider" class="fullwidthbanner-container"
												style="position:relative; width:100%; height:auto; margin-top:0px; margin-bottom:0px">
												<div class="module slideshow no-margin">
												<%-- <c:forEach var="article1" items="${listArticle1 }"> --%>
													<div class="item">
														<a href="javascript:;"><img
															src="resource/front_bootstrap/images/1903/lubnbo1.jpg" alt="slider1"
															class="img-responsive" height="559"></a>
													</div>
													<div class="item">
														<a href="javascript:;"><img
															src="resource/front_bootstrap/images/1903/lunbo2.jpg" alt="slider1"
															class="img-responsive" height="559"></a>
													</div>
													<div class="item">
														<a href="javascript:;"><img
															src="resource/front_bootstrap/images/1903/lunbo3.jpg" alt="slider1"
															class="img-responsive" height="559"></a>
													</div>
													<%-- </c:forEach> --%>
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
							<div id="sw_brand_01"
								class="responsive-slider sw-brand-container-slider clearfix"
								data-lg="5" data-md="4" data-sm="3" data-xs="2" data-mobile="1"
								data-speed="1000" data-scroll="1" data-interval="5000"
								data-autoplay="false" style="height:98px;">
								<div class="resp-slider-container">
									<div class="slider responsive">
										<div class="item item-brand-cat">
											<div class="item-image">
												<a href="javascript:;">
												<img width="173" 
													src="resource/front_bootstrap/images/1903/Brand_1.jpg"
													class="attachment-173x91 size-173x91" alt=""></a>
											</div>
										</div>

										<div class="item item-brand-cat">
											<div class="item-image">
												<a
													href="javascript:;"><img
													width="173" height="91" src="resource/front_bootstrap/images/1903/br1.jpg"
													class="attachment-173x91 size-173x91" alt=""></a>
											</div>
										</div>

										<div class="item item-brand-cat">
											<div class="item-image">
												<a href="javascript:;"><img width="173"
													src="resource/front_bootstrap/images/1903/br2.jpg"
													class="attachment-173x91 size-173x91" alt=""></a>
											</div>
										</div>

										<div class="item item-brand-cat">
											<div class="item-image">
												<a href="javascript:;"><img width="173"
													src="resource/front_bootstrap/images/1903/Brand_11.jpg"
													class="attachment-173x91 size-173x91" alt=""></a>
											</div>
										</div>

										<div class="item item-brand-cat">
											<div class="item-image">
												<a href="javascript:;"><img width="173" 
													src="resource/front_bootstrap/images/1903/Brand_10.jpg"
													class="attachment-173x91 size-173x91" alt=""></a>
											</div>
										</div>

										<div class="item item-brand-cat">
											<div class="item-image">
												<a href="javascript:;"><img width="173" 
													src="resource/front_bootstrap/images/1903/Brand_111.jpg"
													class="attachment-173x91 size-173x91" alt=""></a>
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
							<div class="row-fix clearfix" id="secondMedical">
							<c:forEach var="article" items="${listArticle }">
						
								<li 
									class="product-category product first product-col-5 col-md-3 col-sm-6 col-xs-6 col-mb-12">
									<a href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=${article.id}"
									title="${article.aname }">
									 <img src="resource/image/articleImg/${article.image }"
										alt="${article.aname }" style="width:300px;height:300px;">
										<h3>
											${article.aname }
											<mark class="count">(1)</mark>
										</h3>
								</a>
								</li>
								</c:forEach>
							</div>
							<div class="products-nav clearfix">
								<div class="view-mode-wrap pull-left clearfix">
									<div class="view-mode">
										<a href="javascript:void(0)" class="grid-view active"
											title="模块视图"><span>模块视图</span></a> <a
											href="javascript:void(0)" class="list-view" title="列表视图"><span>列表视图</span></a>
									</div>
								</div>

								<div class="catalog-ordering">
									<div class="orderby-order-container clearfix">
										<ul class="orderby order-dropdown pull-left">
											<li><span class="current-li"><span
													class="current-li-content"><a>默认排序</a></span></span>
												<ul>
												<c:if test="${url1 =='toShop_left_sidebar'}">
													<li class="current"><a href="${ pageContext.request.contextPath }/MedicalInstruments/toShop_left_sidebar?page=1">默认排序</a></li>
													<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstrumentsPop?sequence=2&page=1&limitPage=12">人气排序</a></li>
													<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstrumentsDate?sequence=3&page=1&limitPage=12">日期排序</a></li>
													<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstruments?sequence=4&page=1&limitPage=12">价格排序</a></li>
													</c:if>
													
													<c:if test="${url1 =='findColthType'}">
													<li class="current"><a href="${ pageContext.request.contextPath }/MedicalInstruments/findColthType?typeId=${Ctype }&page=1">默认排序</a></li>
													<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByTypePop?typeId=${Ctype }&sequence=2&page=1&limitPage=12">人气排序</a></li>
													<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByTypeSecondDate?typeId=${Ctype }&sequence=3&page=1&limitPage=12">日期排序</a></li>
													<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByArticlePrice?typeId=${Ctype }&sequence=4&page=1&limitPage=12">价格排序</a></li>
													</c:if>
												</ul></li>
										</ul>

										<ul class="order pull-left">
											<li class="asc"><a href="#"><i
													class="fa fa-long-arrow-down"></i></a></li>
										</ul>

										<div class="product-number pull-left clearfix">
											<span class="show-product pull-left">显示 </span>
											<ul class="sort-count order-dropdown pull-left">
												<li><span class="current-li"><a>12</a></span>
												<ul>
												<c:if test="${ url=='findOrderByMedicalInstrumentsPop'}">
													
														<li class="current"><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstrumentsPop?sequence=3&page=1&limitPage=12" id="fy">12</a></li>
														<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstrumentsPop?sequence=3&page=1&limitPage=24">24</a></li>
														<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstrumentsPop?sequence=3&page=1&limitPage=36">36</a></li>
											
												</c:if>
												
												<c:if test="${ url=='findOrderByTypePop'}">
													
														<li class="current"><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByTypePop?typeId=${Ctype }&sequence=3&page=1&limitPage=12" id="fy">12</a></li>
														<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByTypePop?typeId=${Ctype }&sequence=3&page=1&limitPage=24">24</a></li>
														<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByTypePop?typeId=${Ctype }&sequence=3&page=1&limitPage=36">36</a></li>
											
												</c:if>
												
													<c:if test="${ url=='findOrderByMedicalInstrumentsDate'}">
													
														<li class="current"><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstrumentsDate?sequence=3&page=1&limitPage=12" id="fy">12</a></li>
														<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstrumentsDate?sequence=3&page=1&limitPage=24">24</a></li>
														<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstrumentsDate?sequence=3&page=1&limitPage=36">36</a></li>
											
												</c:if>
												<c:if test="${ url=='findOrderByTypeSecondDate'}">
													
														<li class="current"><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByTypeSecondDate?typeId=${Ctype }&sequence=3&page=1&limitPage=12" id="fy">12</a></li>
														<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByTypeSecondDate?typeId=${Ctype }&sequence=3&page=1&limitPage=24">24</a></li>
														<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByTypeSecondDate?typeId=${Ctype }&sequence=3&page=1&limitPage=36">36</a></li>
											
												</c:if>
												<c:if test="${ url=='findOrderByMedicalInstruments'}">
													
														<li class="current"><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstruments?sequence=4&page=1&limitPage=12" id="fy">12</a></li>
														<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstruments?sequence=4&page=1&limitPage=24">24</a></li>
														<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstruments?sequence=4&page=1&limitPage=36">36</a></li>
											
												</c:if>
												
												<c:if test="${ url=='findOrderByArticlePrice'}">
													
														<li class="current"><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByArticlePrice?typeId=${Ctype }&sequence=4&page=1&limitPage=12" id="fy">12</a></li>
														<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByArticlePrice?typeId=${Ctype }&sequence=4&page=1&limitPage=24">24</a></li>
														<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByArticlePrice?typeId=${Ctype }&sequence=4&page=1&limitPage=36">36</a></li>
											
												</c:if>
												
											<c:if test="${ url=='findPriceScope'}">
													
														<li class="current"><a href="${ pageContext.request.contextPath }/MedicalInstruments/findPriceScope?min_price=${ pageBean.min_price}&max_price=${pageBean.max_price }&page=1&limitPage=12" id="fy">12</a></li>
														<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findPriceScope?min_price=${ pageBean.min_price}&max_price=${pageBean.max_price }&page=1&limitPage=24">24</a></li>
														<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findPriceScope?min_price=${ pageBean.min_price}&max_price=${pageBean.max_price }&page=1&limitPage=36">36</a></li>
											
												</c:if>
												
												<c:if test="${ url=='findTitlePriceScope'}">
													
														<li class="current"><a href="${ pageContext.request.contextPath }/MedicalInstruments/findTitlePriceScope?typeId=${Ctype }&min_price=${ pageBean.min_price}&max_price=${pageBean.max_price }&page=1&limitPage=12" id="fy">12</a></li>
														<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findTitlePriceScope?typeId=${Ctype }&min_price=${ pageBean.min_price}&max_price=${pageBean.max_price }&page=1&limitPage=24">24</a></li>
														<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findTitlePriceScope?typeId=${Ctype }&min_price=${ pageBean.min_price}&max_price=${pageBean.max_price }&page=1&limitPage=36">36</a></li>
											
												</c:if>
												
													<c:if test="${url=='toShop_left_sidebar'}">
												
														<li class="current"><a href="${ pageContext.request.contextPath }/MedicalInstruments/findmedicalpageBean?page=1&limitPage=12" id="fy">12</a></li>
														<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findmedicalpageBean?page=1&limitPage=24">24</a></li>
														<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findmedicalpageBean?page=1&limitPage=36">36</a></li>
													</ul>
													</c:if>
													<c:if test="${url=='findArticleTitle'}">
												
														<li class="current"><a href="${ pageContext.request.contextPath }/MedicalInstruments/findArticleTitle?s=${pageBean.s}&search_category=${pageBean.search_category }&page=1&limitPage=12" id="fy">12</a></li>
														<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findArticleTitle?s=${pageBean.s}&search_category=${pageBean.search_category }&page=1&limitPage=24">24</a></li>
														<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findArticleTitle?s=${pageBean.s}&search_category=${pageBean.search_category }&page=1&limitPage=36">36</a></li>
													</ul>
													</c:if>
													
														<c:if test="${url=='findColthType'}">
												
														<li class="current"><a href="${ pageContext.request.contextPath }/MedicalInstruments/findColthTypepageBean?typeId=${Ctype }&page=1&limitPage=12" id="fy">12</a></li>
														<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findColthTypepageBean?typeId=${Ctype }&page=1&limitPage=24">24</a></li>
														<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findColthTypepageBean?typeId=${Ctype }&page=1&limitPage=36">36</a></li>
													</ul>
													</c:if>
													</li>
											</ul>
										</div>
									</div>
								</div>
									

										<nav class="woocommerce-pagination pull-right"> <span
									class="note">页数:</span>
								<ul class="page-numbers">
								<c:if test="${ url=='toShop_left_sidebar'}">
								
									<li><span class="page-numbers current"><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/toShop_left_sidebar?page=1">1</a></span></li>
									<c:if test="${pageBean.page!=pageBean.totalPage }">	
									<li><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/toShop_left_sidebar?page=${pageBean.page+1}">2</a></li>
									
									<li><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/toShop_left_sidebar?page=${pageBean.page+1}">3</a></li>
									
									<li><a class="next page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/toShop_left_sidebar?page=${pageBean.page+1}">?</a></li>
								</c:if>
								</c:if>
								
									<c:if test="${ url=='findOrderByMedicalInstrumentsPop'}">
									<li><span class="page-numbers current"><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstrumentsPop?sequence=3&limitPage=12&page=1">1</a></span></li>
									<c:if test="${pageBean.page!=pageBean.totalPage }">	
									<li><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstrumentsPop?sequence=3&limitPage=12&page=${pageBean.page+1}">2</a></li>
									
									<li><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstrumentsPop?sequence=3&limitPage=12&page=${pageBean.page+1}">3</a></li>
									
									<li><a class="next page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstrumentsDate?sequence=3&limitPage=12&page=${pageBean.page+1}">?</a></li>
								</c:if>
								</c:if>
								<c:if test="${ url=='findOrderByTypePop'}">
								<li><span class="page-numbers current"><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByTypePop?typeId=${Ctype }&sequence=3&limitPage=12&page=1">1</a></span></li>
									<c:if test="${pageBean.page!=pageBean.totalPage }">	
									<li><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByTypePop?typeId=${Ctype }&sequence=3&limitPage=12&page=${pageBean.page+1}">2</a></li>
									
									<li><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByTypePop?typeId=${Ctype }&sequence=3&limitPage=12&page=${pageBean.page+1}">3</a></li>
									
									<li><a class="next page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByTypePop?typeId=${Ctype }&sequence=3&limitPage=12&page=${pageBean.page+1}">?</a></li>
								</c:if>
								</c:if>
								
								<c:if test="${ url=='findOrderByMedicalInstrumentsDate'}">
									<li><span class="page-numbers current"><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstrumentsDate?sequence=3&limitPage=12&page=1">1</a></span></li>
									<c:if test="${pageBean.page!=pageBean.totalPage }">	
									<li><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstrumentsDate?sequence=3&limitPage=12&page=${pageBean.page+1}">2</a></li>
									
									<li><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstrumentsDate?sequence=3&limitPage=12&page=${pageBean.page+1}">3</a></li>
									
									<li><a class="next page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstrumentsDate?sequence=3&limitPage=12&page=${pageBean.page+1}">?</a></li>
								</c:if>
								</c:if>
								
								
								<c:if test="${ url=='findOrderByTypeSecondDate'}">
									<li><span class="page-numbers current"><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByTypeSecondDate?typeId=${Ctype }&sequence=3&limitPage=12&page=1">1</a></span></li>
									<c:if test="${pageBean.page!=pageBean.totalPage }">	
									<li><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByTypeSecondDate?typeId=${Ctype }&sequence=3&limitPage=12&page=${pageBean.page+1}">2</a></li>
									
									<li><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByTypeSecondDate?typeId=${Ctype }&sequence=3&limitPage=12&page=${pageBean.page+1}">3</a></li>
									
									<li><a class="next page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByTypeSecondDate?typeId=${Ctype }&sequence=3&limitPage=12&page=${pageBean.page+1}">?</a></li>
								</c:if>
								</c:if>
								
								<c:if test="${ url=='findOrderByMedicalInstruments'}">
									<li><span class="page-numbers current"><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstruments?sequence=4&limitPage=12&page=1">1</a></span></li>
									<c:if test="${pageBean.page!=pageBean.totalPage }">	
									<li><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstruments?sequence=4&limitPage=12&page=${pageBean.page+1}">2</a></li>
									
									<li><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstruments?sequence=4&limitPage=12&page=${pageBean.page+1}">3</a></li>
									
									<li><a class="next page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstruments?sequence=4&limitPage=12&page=${pageBean.page+1}">?</a></li>
								</c:if>
								</c:if>
								
								<c:if test="${ url=='findOrderByArticlePrice'}">
								<li><span class="page-numbers current"><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByArticlePrice?typeId=${Ctype }&sequence=4&limitPage=12&page=1">1</a></span></li>
									<c:if test="${pageBean.page!=pageBean.totalPage }">	
									<li><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByArticlePrice?typeId=${Ctype }&sequence=4&limitPage=12&page=${pageBean.page+1}">2</a></li>
									
									<li><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByArticlePrice?typeId=${Ctype }&sequence=4&limitPage=12&page=${pageBean.page+1}">3</a></li>
									
									<li><a class="next page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByArticlePrice?typeId=${Ctype }&sequence=4&limitPage=12&page=${pageBean.page+1}">?</a></li>
								</c:if>
								</c:if>
								
								
								<c:if test="${ url=='findPriceScope'}">
							
									
									<li><span class="page-numbers current"><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findPriceScope?min_price=${ pageBean.min_price}&max_price=${pageBean.max_price }&limitPage=12&page=1">1</a></span></li>
									<c:if test="${pageBean.page!=pageBean.totalPage }">	
									
									<li><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findPriceScope?min_price=${ pageBean.min_price}&max_price=${pageBean.max_price }&limitPage=12&page=${pageBean.page+1}">2</a></li>
									
									<li><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findPriceScope?min_price=${ pageBean.min_price}&max_price=${pageBean.max_price }&limitPage=12&page=${pageBean.page+1}">3</a></li>
									
									<li><a class="next page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findPriceScope?min_price=${ pageBean.min_price}&max_price=${pageBean.max_price }&limitPage=12&page=${pageBean.page+1}">?</a></li>
								</c:if>
								</c:if>
							
								
								<c:if test="${ url=='findTitlePriceScope'}">
							
									
									<li><span class="page-numbers current"><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findTitlePriceScope?typeId=${Ctype }&min_price=${ pageBean.min_price}&max_price=${pageBean.max_price }&limitPage=12&page=1">1</a></span></li>
									<c:if test="${pageBean.page!=pageBean.totalPage }">	
									
									<li><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findTitlePriceScope?typeId=${Ctype }&min_price=${ pageBean.min_price}&max_price=${pageBean.max_price }&limitPage=12&page=${pageBean.page+1}">2</a></li>
									
									<li><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findTitlePriceScope?typeId=${Ctype }&min_price=${ pageBean.min_price}&max_price=${pageBean.max_price }&limitPage=12&page=${pageBean.page+1}">3</a></li>
									
									<li><a class="next page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findTitlePriceScope?typeId=${Ctype }&min_price=${ pageBean.min_price}&max_price=${pageBean.max_price }&limitPage=12&page=${pageBean.page+1}">?</a></li>
								</c:if>
								</c:if>
								
								
								<c:if test="${ url=='findArticleTitle'}">
									<li><span class="page-numbers current"><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findArticleTitle?s=${pageBean.s}&search_category=${pageBean.search_category }&limitPage=12&page=1">1</a></span></li>
									<c:if test="${pageBean.page!=pageBean.totalPage }">	
									
									<li><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findArticleTitle?s=${pageBean.s}&search_category=${pageBean.search_category }&limitPage=12&page=${pageBean.page+1}">2</a></li>
									
									<li><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findArticleTitle?s=${pageBean.s}&search_category=${pageBean.search_category }&limitPage=12&page=${pageBean.page+1}">3</a></li>
									
									<li><a class="next page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findArticleTitle?s=${pageBean.s}&search_category=${pageBean.search_category }&limitPage=12&page=${pageBean.page+1}">?</a></li>
								</c:if>
								</c:if>
									<c:if test="${url=='findColthType'}">
									<li><span class="page-numbers current"><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findColthType?typeId=${Ctype }&page=1">1</a></span></li>
									<c:if test="${pageBean.page!=pageBean.totalPage }">	
									<li><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findColthType?typeId=${Ctype }&page=${pageBean.page+1}">2</a></li>
									
									<li><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findColthType?typeId=${Ctype }&page=${pageBean.page+1}">3</a></li>
									
									<li><a class="next page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findColthType?typeId=${Ctype }&page=${pageBean.page+1}">?</a></li>
								</c:if>
									</c:if>
								</ul>
								</nav>
							</div>
							<div class="clear"></div>
							
							
							
							
							<!-- 按价格范围查询商品信息 -->
							<c:if test="${url =='findPriceScope'}">
										<ul class="products-loop row grid clearfix">
							<!-- 商品分页查询 -->
							
							<c:if test="${ pageBean.limitPage}!=''">
							<c:forEach var="article4" items="${ pageBean.list}">
								<li
									class="item col-lg-4 col-md-4 col-sm-6 col-xs-6 post-255 product type-product status-publish has-post-thumbnail product_cat-electronics product_cat-home-appliances product_cat-vacuum-cleaner product_brand-apoteket first instock sale featured shipping-taxable purchasable product-type-simple">
									<div class="products-entry item-wrap clearfix">
										<div class="item-detail">
											<div class="item-img products-thumb">
												<span class="onsale">Sale!</span> <a
													href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=${article4.id}">
													<div class="product-thumb-hover" style="width:200px;height:200px;">
														<img width="300" height="300"
															src="resource/image/articleImg/${article4.image }"
															class="attachment-shop_catalog size-shop_catalog wp-post-image"
															alt=""
															sizes="(max-width: 300px) 100vw, 300px" style="width:100%;height:100%;">
													</div>
												</a>
											</div>
											<div class="item-content products-content">
												<div class="reviews-content">
													<div class="star">
														<span style="width: 63px"></span>
													</div>
												</div>

												<h4>
													<a href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=${article4.id}" title="${article4.aname }">${article4.aname }</a>
												</h4>

												<span class="item-price"><del>
														<span class="woocommerce-Price-amount amount"><span
															class="woocommerce-Price-currencySymbol">￥</span>390.00</span>
													</del> <ins>
														<span class="woocommerce-Price-amount amount"><span
															class="woocommerce-Price-currencySymbol">￥</span>${article4.price }</span>
													</ins></span>

												<div class="item-description">${article4.describes }</div>
											</div>
										</div>
									</div>
								</li>
					</c:forEach>
							
							</c:if>
						
							
							</ul>
							</c:if>
							
							
							
							
							
							
							<!-- 按价格范围查询所有商品信息 -->
							<c:if test="${url =='findTitlePriceScope'}">
										<ul class="products-loop row grid clearfix">
							<!-- 商品分页查询 -->
							
							<c:if test="${ pageBean.limitPage}!=''">
							<c:forEach var="article4" items="${ pageBean.list}">
								<li
									class="item col-lg-4 col-md-4 col-sm-6 col-xs-6 post-255 product type-product status-publish has-post-thumbnail product_cat-electronics product_cat-home-appliances product_cat-vacuum-cleaner product_brand-apoteket first instock sale featured shipping-taxable purchasable product-type-simple">
									<div class="products-entry item-wrap clearfix">
										<div class="item-detail">
											<div class="item-img products-thumb">
												<span class="onsale">Sale!</span> <a
													href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=${article4.id}">
													<div class="product-thumb-hover" style="width:200px;height:200px;">
														<img width="300" height="300"
															src="resource/image/articleImg/${article4.image }"
															class="attachment-shop_catalog size-shop_catalog wp-post-image"
															alt=""
															sizes="(max-width: 300px) 100vw, 300px" style="width:100%;height:100%;">
													</div>
												</a>
											</div>
											<div class="item-content products-content">
												<div class="reviews-content">
													<div class="star">
														<span style="width: 63px"></span>
													</div>
												</div>

												<h4>
													<a href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=${article4.id}" title="${article4.aname }">${article4.aname }</a>
												</h4>

												<span class="item-price"><del>
														<span class="woocommerce-Price-amount amount"><span
															class="woocommerce-Price-currencySymbol">￥</span>390.00</span>
													</del> <ins>
														<span class="woocommerce-Price-amount amount"><span
															class="woocommerce-Price-currencySymbol">￥</span>${article4.price }</span>
													</ins></span>

												<div class="item-description">${article4.describes }</div>
											</div>
										</div>
									</div>
								</li>
					</c:forEach>
							
							</c:if>
						
							
							</ul>
							</c:if>
							
							
							
							
							
							
							
								<!-- 搜索框搜索显示商品信息 -->
							<c:if test="${url =='findArticleTitle'}">
										<ul class="products-loop row grid clearfix">
							<!-- 商品分页查询 -->
							
							<c:if test="${ pageBean.limitPage}!=''">
							<c:forEach var="article4" items="${ pageBean.list}">
								<li
									class="item col-lg-4 col-md-4 col-sm-6 col-xs-6 post-255 product type-product status-publish has-post-thumbnail product_cat-electronics product_cat-home-appliances product_cat-vacuum-cleaner product_brand-apoteket first instock sale featured shipping-taxable purchasable product-type-simple">
									<div class="products-entry item-wrap clearfix">
										<div class="item-detail">
											<div class="item-img products-thumb">
												<span class="onsale">Sale!</span> <a
													href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=${article4.id}">
													<div class="product-thumb-hover" style="width:200px;height:200px;">
														<img width="300" height="300"
															src="resource/image/articleImg/${article4.image }"
															class="attachment-shop_catalog size-shop_catalog wp-post-image"
															alt=""
															sizes="(max-width: 300px) 100vw, 300px" style="width:100%;height:100%;">
													</div>
												</a>
											</div>
											<div class="item-content products-content">
												<div class="reviews-content">
													<div class="star">
														<span style="width: 63px"></span>
													</div>
												</div>

												<h4>
													<a href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=${article4.id}" title="${article4.aname }">${article4.aname }</a>
												</h4>

												<span class="item-price"><del>
														<span class="woocommerce-Price-amount amount"><span
															class="woocommerce-Price-currencySymbol">￥</span>390.00</span>
													</del> <ins>
														<span class="woocommerce-Price-amount amount"><span
															class="woocommerce-Price-currencySymbol">￥</span>${article4.price }</span>
													</ins></span>

												<div class="item-description">${article4.describes }</div>
											</div>
										</div>
									</div>
								</li>
					</c:forEach>
							
							</c:if>
						
							
							</ul>
							</c:if>
							
							
							
							
							
							
							
							
							
							
							
							
							<ul class="products-loop row grid clearfix">
							<!-- 商品分页查询 -->
							
							<c:if test="${ pageBean.limitPage}!=''">
							<c:forEach var="article3" items="${ pageBean.list}">
								<li
									class="item col-lg-4 col-md-4 col-sm-6 col-xs-6 post-255 product type-product status-publish has-post-thumbnail product_cat-electronics product_cat-home-appliances product_cat-vacuum-cleaner product_brand-apoteket first instock sale featured shipping-taxable purchasable product-type-simple">
									<div class="products-entry item-wrap clearfix">
										<div class="item-detail">
											<div class="item-img products-thumb">
												<span class="onsale">Sale!</span> <a
													href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=${article3.id}">
													<div class="product-thumb-hover" style="width:200px;height:200px;">
														<img width="300" height="300"
															src="resource/image/articleImg/${article3.image }"
															class="attachment-shop_catalog size-shop_catalog wp-post-image"
															alt=""
															sizes="(max-width: 300px) 100vw, 300px" style="width:100%;height:100%;">
													</div>
												</a>
											</div>
											<div class="item-content products-content">
												<div class="reviews-content">
													<div class="star">
														<span style="width: 63px"></span>
													</div>
												</div>

												<h4>
													<a href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=${article3.id}" title="${article3.aname }">${article3.aname }</a>
												</h4>

												<span class="item-price"><del>
														<span class="woocommerce-Price-amount amount"><span
															class="woocommerce-Price-currencySymbol">￥</span>390.00</span>
													</del> <ins>
														<span class="woocommerce-Price-amount amount"><span
															class="woocommerce-Price-currencySymbol">￥</span>${article3.price }</span>
													</ins></span>

												<div class="item-description">${article3.describes }</div>
											</div>
										</div>
									</div>
								</li>
				</c:forEach>
							
							</c:if>
							
							<c:forEach var="article3" items="${ pageBean.list}">
								<li
									class="item col-lg-4 col-md-4 col-sm-6 col-xs-6 post-255 product type-product status-publish has-post-thumbnail product_cat-electronics product_cat-home-appliances product_cat-vacuum-cleaner product_brand-apoteket first instock sale featured shipping-taxable purchasable product-type-simple">
									<div class="products-entry item-wrap clearfix">
										<div class="item-detail">
											<div class="item-img products-thumb">
												<span class="onsale">Sale!</span> <a
													href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=${article3.id}">
													<div class="product-thumb-hover" style="width:200px;height:200px;">
														<img width="300px" height="300px"
															src="resource/image/articleImg/${article3.image }"
															class="attachment-shop_catalog size-shop_catalog wp-post-image"
															alt=""
															sizes="(max-width: 300px) 100vw, 300px" style="width:100%;height:100%;">
													</div>
												</a>
												<!-- 加入购物车, 添加收藏 -->
												<div class="item-bottom clearfix">
													<a rel="nofollow" href="javascript:;"
														class="button product_type_simple "
														title="加入购物车" onclick="addCart('${article3.id}',this)"  
														id="onclicka"></a> 
													<div class="yith-wcwl-add-to-wishlist">
														<div class="show"
															style="display:block">
															<a href="javascript:;" rel=""
																title="添加收藏" onclick="addWish('${article3.id}',this)">添加收藏</a>
														</div>
													</div>
												</div>
											</div>

											<div class="item-content products-content">
												<div class="reviews-content">
													<div class="star">
														<span style="width: 63px"></span>
													</div>
												</div>
												<h4>
													<a href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=${article3.id}" title="${article3.aname }">${article3.aname }</a>
												</h4>
												<span class="item-price"><del>
														<span class="woocommerce-Price-amount amount"><span
															class="woocommerce-Price-currencySymbol">￥</span>390.00</span>
													</del> <ins>
														<span class="woocommerce-Price-amount amount"><span
															class="woocommerce-Price-currencySymbol">￥</span>${article3.price }</span>
													</ins></span>

												<div class="item-description">${article3.describes }</div>
												<!-- 加入购物车, 收藏-->
												<div class="item-bottom clearfix">
													<a rel="nofollow" href="javascript:;"
														class="button product_type_simple"
														title="加入购物车" onclick="addCart('${article3.id}',this)" 
														 id="onclicka"> </a> 
													<div class="yith-wcwl-add-to-wishlist add-to-wishlist-248">
														<div class=" show"
															style="display:block">
															<a href="javascript:;" rel="nofollow"
																title="添加收藏" onclick="addWish('${article3.id}',this)" >添加收藏!</a> 
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</li>
				</c:forEach>
							
							</ul>

							<div class="clear"></div>

							<div class="products-nav clearfix">
								<div class="view-mode-wrap pull-left clearfix">
									<div class="view-mode">
										<a href="javascript:void(0)" class="grid-view active"
											title="模块视图"><span>模块视图</span></a> <a
											href="javascript:void(0)" class="list-view" title="列表视图"><span>列表视图</span></a>
									</div>
								</div>

								<div class="catalog-ordering">
									<div class="orderby-order-container clearfix">
										<ul class="orderby order-dropdown pull-left">
											<li><span class="current-li"><span
													class="current-li-content"><a>默认排序</a></span></span>
												<ul>
												<c:if test="${url1 =='toShop_left_sidebar'}">
													<li class="current"><a href="${ pageContext.request.contextPath }/MedicalInstruments/toShop_left_sidebar?page=1">默认排序</a></li>
													<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstrumentsPop?sequence=2&page=1&limitPage=12">人气排序</a></li>
													<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstrumentsDate?sequence=3&page=1&limitPage=12">日期排序</a></li>
													<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstruments?sequence=4&page=1&limitPage=12">价格排序</a></li>
													</c:if>
													
													<c:if test="${url1 =='findColthType'}">
													<li class="current"><a href="${ pageContext.request.contextPath }/MedicalInstruments/findColthType?typeId=${Ctype }&page=1">默认排序</a></li>
													<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByTypePop?typeId=${Ctype }&sequence=2&page=1&limitPage=12">人气排序</a></li>
													<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByTypeSecondDate?typeId=${Ctype }&sequence=3&page=1&limitPage=12">日期排序</a></li>
													<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByArticlePrice?typeId=${Ctype }&sequence=4&page=1&limitPage=12">价格排序</a></li>
													</c:if>
												</ul></li>
										</ul>

										<ul class="order pull-left">
											<li class="asc"><a href="#"><i
													class="fa fa-long-arrow-down"></i></a></li>
										</ul>

										<div class="product-number pull-left clearfix">
											<span class="show-product pull-left">显示 </span>
											<ul class="sort-count order-dropdown pull-left">
												<li><span class="current-li"><a>12</a></span>
												<ul>
												<c:if test="${ url=='findOrderByMedicalInstrumentsPop'}">
													
														<li class="current"><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstrumentsPop?sequence=3&page=1&limitPage=12" id="fy">12</a></li>
														<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstrumentsPop?sequence=3&page=1&limitPage=24">24</a></li>
														<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstrumentsPop?sequence=3&page=1&limitPage=36">36</a></li>
											
												</c:if>
												
												<c:if test="${ url=='findOrderByTypePop'}">
													
														<li class="current"><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByTypePop?typeId=${Ctype }&sequence=3&page=1&limitPage=12" id="fy">12</a></li>
														<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByTypePop?typeId=${Ctype }&sequence=3&page=1&limitPage=24">24</a></li>
														<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByTypePop?typeId=${Ctype }&sequence=3&page=1&limitPage=36">36</a></li>
											
												</c:if>
												
													<c:if test="${ url=='findOrderByMedicalInstrumentsDate'}">
													
														<li class="current"><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstrumentsDate?sequence=3&page=1&limitPage=12" id="fy">12</a></li>
														<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstrumentsDate?sequence=3&page=1&limitPage=24">24</a></li>
														<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstrumentsDate?sequence=3&page=1&limitPage=36">36</a></li>
											
												</c:if>
												
												<c:if test="${ url=='findOrderByTypeSecondDate'}">
													
														<li class="current"><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByTypeSecondDate?typeId=${Ctype }&sequence=3&page=1&limitPage=12" id="fy">12</a></li>
														<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByTypeSecondDate?typeId=${Ctype }&sequence=3&page=1&limitPage=24">24</a></li>
														<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByTypeSecondDate?typeId=${Ctype }&sequence=3&page=1&limitPage=36">36</a></li>
											
												</c:if>
												
												<c:if test="${ url=='findOrderByMedicalInstruments'}">
													
														<li class="current"><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstruments?sequence=4&page=1&limitPage=12" id="fy">12</a></li>
														<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstruments?sequence=4&page=1&limitPage=24">24</a></li>
														<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstruments?sequence=4&page=1&limitPage=36">36</a></li>
											
												</c:if>
												
													<c:if test="${ url=='findOrderByArticlePrice'}">
													
														<li class="current"><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByArticlePrice?typeId=${Ctype }&sequence=4&page=1&limitPage=12" id="fy">12</a></li>
														<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByArticlePrice?typeId=${Ctype }&sequence=4&page=1&limitPage=24">24</a></li>
														<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByArticlePrice?typeId=${Ctype }&sequence=4&page=1&limitPage=36">36</a></li>
											
												</c:if>
												
												
												<c:if test="${ url=='findPriceScope'}">
													
														<li class="current"><a href="${ pageContext.request.contextPath }/MedicalInstruments/findPriceScope?min_price=${ pageBean.min_price}&max_price=${pageBean.max_price }&page=1&limitPage=12" id="fy">12</a></li>
														<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findPriceScope?min_price=${ pageBean.min_price}&max_price=${pageBean.max_price }&page=1&limitPage=24">24</a></li>
														<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findPriceScope?min_price=${ pageBean.min_price}&max_price=${pageBean.max_price }&page=1&limitPage=36">36</a></li>
											
												</c:if>
												
												<c:if test="${ url=='findTitlePriceScope'}">
													
														<li class="current"><a href="${ pageContext.request.contextPath }/MedicalInstruments/findTitlePriceScope?typeId=${Ctype }&min_price=${ pageBean.min_price}&max_price=${pageBean.max_price }&page=1&limitPage=12" id="fy">12</a></li>
														<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findTitlePriceScope?typeId=${Ctype }&min_price=${ pageBean.min_price}&max_price=${pageBean.max_price }&page=1&limitPage=24">24</a></li>
														<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findTitlePriceScope?typeId=${Ctype }&min_price=${ pageBean.min_price}&max_price=${pageBean.max_price }&page=1&limitPage=36">36</a></li>
											
												</c:if>
												
												<c:if test="${url=='findArticleTitle'}">
												
														<li class="current"><a href="${ pageContext.request.contextPath }/MedicalInstruments/findArticleTitle?s=${pageBean.s}&search_category=${pageBean.search_category }&page=1&limitPage=12" id="fy">12</a></li>
														<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findArticleTitle?s=${pageBean.s}&search_category=${pageBean.search_category }&page=1&limitPage=24">24</a></li>
														<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findArticleTitle?s=${pageBean.s}&search_category=${pageBean.search_category }&page=1&limitPage=36">36</a></li>
													</ul>
													</c:if>
													<c:if test="${url=='toShop_left_sidebar'}">
												
														<li class="current"><a href="${ pageContext.request.contextPath }/MedicalInstruments/findmedicalpageBean?page=1&limitPage=12" id="fy">12</a></li>
														<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findmedicalpageBean?page=1&limitPage=24">24</a></li>
														<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findmedicalpageBean?page=1&limitPage=36">36</a></li>
													</ul>
													</c:if>
													
														<c:if test="${url=='findColthType'}">
												
														<li class="current"><a href="${ pageContext.request.contextPath }/MedicalInstruments/findColthTypepageBean?typeId=${Ctype }&page=1&limitPage=12" id="fy">12</a></li>
														<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findColthTypepageBean?typeId=${Ctype }&page=1&limitPage=24">24</a></li>
														<li class=""><a href="${ pageContext.request.contextPath }/MedicalInstruments/findColthTypepageBean?typeId=${Ctype }&page=1&limitPage=36">36</a></li>
													</ul>
													</c:if>
													</li>
											</ul>
										</div>
									</div>
								</div>

								
										<nav class="woocommerce-pagination pull-right"> <span
									class="note">页数:</span>
								<ul class="page-numbers">
								<c:if test="${ url=='toShop_left_sidebar'}">
								
									<li><span class="page-numbers current"><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/toShop_left_sidebar?page=1">1</a></span></li>
									<c:if test="${pageBean.page!=pageBean.totalPage }">	
									<li><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/toShop_left_sidebar?page=${pageBean.page+1}">2</a></li>
									
									<li><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/toShop_left_sidebar?page=${pageBean.page+1}">3</a></li>
									
									<li><a class="next page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/toShop_left_sidebar?page=${pageBean.page+1}">?</a></li>
								</c:if>
								</c:if>
								
									<c:if test="${ url=='findOrderByMedicalInstrumentsPop'}">
									<li><span class="page-numbers current"><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstrumentsPop?sequence=3&limitPage=12&page=1">1</a></span></li>
									<c:if test="${pageBean.page!=pageBean.totalPage }">	
									<li><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstrumentsPop?sequence=3&limitPage=12&page=${pageBean.page+1}">2</a></li>
									
									<li><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstrumentsPop?sequence=3&limitPage=12&page=${pageBean.page+1}">3</a></li>
									
									<li><a class="next page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstrumentsDate?sequence=3&limitPage=12&page=${pageBean.page+1}">?</a></li>
								</c:if>
								</c:if>
								
								<c:if test="${ url=='findOrderByTypePop'}">
								<li><span class="page-numbers current"><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByTypePop?typeId=${Ctype }&sequence=3&limitPage=12&page=1">1</a></span></li>
									<c:if test="${pageBean.page!=pageBean.totalPage }">	
									<li><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByTypePop?typeId=${Ctype }&sequence=3&limitPage=12&page=${pageBean.page+1}">2</a></li>
									
									<li><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByTypePop?typeId=${Ctype }&sequence=3&limitPage=12&page=${pageBean.page+1}">3</a></li>
									
									<li><a class="next page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByTypePop?typeId=${Ctype }&sequence=3&limitPage=12&page=${pageBean.page+1}">?</a></li>
								</c:if>
								</c:if>
								
								<c:if test="${ url=='findOrderByMedicalInstrumentsDate'}">
									<li><span class="page-numbers current"><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstrumentsDate?sequence=3&limitPage=12&page=1">1</a></span></li>
									<c:if test="${pageBean.page!=pageBean.totalPage }">	
									<li><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstrumentsDate?sequence=3&limitPage=12&page=${pageBean.page+1}">2</a></li>
									
									<li><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstrumentsDate?sequence=3&limitPage=12&page=${pageBean.page+1}">3</a></li>
									
									<li><a class="next page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstrumentsDate?sequence=3&limitPage=12&page=${pageBean.page+1}">?</a></li>
								</c:if>
								</c:if>
								
								<c:if test="${ url=='findOrderByTypeSecondDate'}">
									<li><span class="page-numbers current"><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByTypeSecondDate?typeId=${Ctype }&sequence=3&limitPage=12&page=1">1</a></span></li>
									<c:if test="${pageBean.page!=pageBean.totalPage }">	
									<li><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByTypeSecondDate?typeId=${Ctype }&sequence=3&limitPage=12&page=${pageBean.page+1}">2</a></li>
									
									<li><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByTypeSecondDate?typeId=${Ctype }&sequence=3&limitPage=12&page=${pageBean.page+1}">3</a></li>
									
									<li><a class="next page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByTypeSecondDate?typeId=${Ctype }&sequence=3&limitPage=12&page=${pageBean.page+1}">?</a></li>
								</c:if>
								</c:if>
								
								<c:if test="${ url=='findOrderByMedicalInstruments'}">
									<li><span class="page-numbers current"><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstruments?sequence=4&limitPage=12&page=1">1</a></span></li>
									<c:if test="${pageBean.page!=pageBean.totalPage }">	
									<li><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstruments?sequence=4&limitPage=12&page=${pageBean.page+1}">2</a></li>
									
									<li><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstruments?sequence=4&limitPage=12&page=${pageBean.page+1}">3</a></li>
									
									<li><a class="next page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByMedicalInstruments?sequence=4&limitPage=12&page=${pageBean.page+1}">?</a></li>
								</c:if>
								</c:if>
								
									
								<c:if test="${ url=='findOrderByArticlePrice'}">
								<li><span class="page-numbers current"><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByArticlePrice?typeId=${Ctype }&sequence=4&limitPage=12&page=1">1</a></span></li>
									<c:if test="${pageBean.page!=pageBean.totalPage }">	
									<li><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByArticlePrice?typeId=${Ctype }&sequence=4&limitPage=12&page=${pageBean.page+1}">2</a></li>
									
									<li><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByArticlePrice?typeId=${Ctype }&sequence=4&limitPage=12&page=${pageBean.page+1}">3</a></li>
									
									<li><a class="next page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findOrderByArticlePrice?typeId=${Ctype }&sequence=4&limitPage=12&page=${pageBean.page+1}">?</a></li>
								</c:if>
								</c:if>
									
								<c:if test="${ url=='findTitlePriceScope'}">
							
									
									<li><span class="page-numbers current"><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findTitlePriceScope?typeId=${Ctype }&min_price=${ pageBean.min_price}&max_price=${pageBean.max_price }&limitPage=12&page=1">1</a></span></li>
									<c:if test="${pageBean.page!=pageBean.totalPage }">	
									
									<li><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findTitlePriceScope?typeId=${Ctype }&min_price=${ pageBean.min_price}&max_price=${pageBean.max_price }&limitPage=12&page=${pageBean.page+1}">2</a></li>
									
									<li><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findTitlePriceScope?typeId=${Ctype }&min_price=${ pageBean.min_price}&max_price=${pageBean.max_price }&limitPage=12&page=${pageBean.page+1}">3</a></li>
									
									<li><a class="next page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findTitlePriceScope?typeId=${Ctype }&min_price=${ pageBean.min_price}&max_price=${pageBean.max_price }&limitPage=12&page=${pageBean.page+1}">?</a></li>
								</c:if>
								</c:if>
								
								<c:if test="${ url=='findPriceScope'}">
							
									
									<li><span class="page-numbers current"><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findPriceScope?min_price=${ pageBean.min_price}&max_price=${pageBean.max_price }&limitPage=12&page=1">1</a></span></li>
									<c:if test="${pageBean.page!=pageBean.totalPage }">	
									
									<li><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findPriceScope?min_price=${ pageBean.min_price}&max_price=${pageBean.max_price }&limitPage=12&page=${pageBean.page+1}">2</a></li>
									
									<li><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findPriceScope?min_price=${ pageBean.min_price}&max_price=${pageBean.max_price }&limitPage=12&page=${pageBean.page+1}">3</a></li>
									
									<li><a class="next page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findPriceScope?min_price=${ pageBean.min_price}&max_price=${pageBean.max_price }&limitPage=12&page=${pageBean.page+1}">?</a></li>
								</c:if>
								</c:if>
								
									
								<c:if test="${ url=='findArticleTitle'}">
									<li><span class="page-numbers current"><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findArticleTitle?s=${pageBean.s}&search_category=${pageBean.search_category }&limitPage=12&page=1">1</a></span></li>
									<c:if test="${pageBean.page!=pageBean.totalPage }">	
									
									<li><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findArticleTitle?s=${pageBean.s}&search_category=${pageBean.search_category }&limitPage=12&page=${pageBean.page+1}">2</a></li>
									
									<li><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findArticleTitle?s=${pageBean.s}&search_category=${pageBean.search_category }&limitPage=12&page=${pageBean.page+1}">3</a></li>
									
									<li><a class="next page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findArticleTitle?s=${pageBean.s}&search_category=${pageBean.search_category }&limitPage=12&page=${pageBean.page+1}">?</a></li>
								</c:if>
								</c:if>
								<c:if test="${url=='findColthType'}">
									<li><span class="page-numbers current"><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findColthType?typeId=${Ctype }&page=1">1</a></span></li>
									<c:if test="${pageBean.page!=pageBean.totalPage }">	
									<li><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findColthType?typeId=${Ctype }&page=${pageBean.page+1}">2</a></li>
									
									<li><a class="page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findColthType?typeId=${Ctype }&page=${pageBean.page+1}">3</a></li>
									
									<li><a class="next page-numbers" href="${ pageContext.request.contextPath }/MedicalInstruments/findColthType?typeId=${Ctype }&page=${pageBean.page+1}">?</a></li>
								</c:if>
									</c:if>
								</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>
			</div>

			<aside id="left" class="sidebar col-lg-3 col-md-4 col-sm-4">
			<div
				class="widget-1 widget-first widget woocommerce_product_categories-3 woocommerce widget_product_categories">
				<div class="widget-inner">
					<div class="block-title-widget">
						<h2>
							<span>类别</span>
						</h2>
					</div>
				
					<ul class="product-categories">
						
						<c:forEach var="type" items="#{listType}">
						<li class="cat-item"><a href="javascript:;" onclick="findSecondMedical('${type.id}','${type.aid }')">${type.name}</a> <span
							class="count">></span></li>
							</c:forEach>
					
					</ul>
				</div>
			</div>

			<div
				class="widget-2 widget woocommerce_layered_nav-4 woocommerce widget_layered_nav">
				<div class="widget-inner">
					<div class="block-title-widget">
						<h2>
							<span>
							颜色
							</span>
						</h2>
					</div>

					<ul>
						<li class="wc-layered-nav-term "><a href="shop.html">黑色</a>
							<span class="count">(3)</span></li>
						<li class="wc-layered-nav-term "><a href="shop.html">绿色</a>
							<span class="count">(2)</span></li>
						<li class="wc-layered-nav-term "><a href="shop.html">橙色</a>
							<span class="count">(1)</span></li>
						<li class="wc-layered-nav-term "><a href="shop.html">白色</a>
							<span class="count">(3)</span></li>
						<li class="wc-layered-nav-term "><a href="shop.html">黄色</a>
							<span class="count">(1)</span></li>
					</ul>
				</div>
			</div>

			<div
				class="widget-3 widget woocommerce_layered_nav-5 woocommerce widget_layered_nav">
				<div class="widget-inner">
					<div class="block-title-widget">
						<h2>
							<span>尺寸大小</span>
						</h2>
					</div>

					<ul>
						<li class="wc-layered-nav-term "><a href="shop.html">L</a> <span
							class="count">(3)</span></li>
						<li class="wc-layered-nav-term "><a href="shop.html">M</a> <span
							class="count">(1)</span></li>
						<li class="wc-layered-nav-term "><a href="shop.html">S</a> <span
							class="count">(2)</span></li>
						<li class="wc-layered-nav-term "><a href="shop.html">XL</a> <span
							class="count">(3)</span></li>
						<li class="wc-layered-nav-term "><a href="shop.html">XS</a> <span
							class="count">(1)</span></li>
					</ul>
				</div>
			</div>
			
			<c:if test="${url1=='toShop_left_sidebar' }">
			<div
				class="widget-4 widget woocommerce_price_filter-3 woocommerce widget_price_filter">
				<div class="widget-inner">
					<div class="block-title-widget">
						<h2>
							<span>价格</span>
						</h2>
					</div>
					
					<form method="get" action="${ pageContext.request.contextPath }/MedicalInstruments/findPriceScope">
						<div class="price_slider_wrapper">
							<div class="price_slider" style="display:none;"></div>
							<div class="price_slider_amount">
								<input type="text" id="min_price" name="min_price" value=""
									data-min="150" placeholder="Min price">
								<input type="text" id="max_price" name="max_price" value=""
									data-max="700" placeholder="Max price">

								<button type="submit" class="button">提交</button>

								<div class="price_label" style="display:none;">
									Price: <span class="from"></span> � <span class="to"></span>
								</div>
								<div class="clear"></div>
							</div>
						</div>
					</form>
					
				</div>
			</div>
			</c:if>
			
			
			
			<c:if test="${url1=='findColthType' }">
			<div
				class="widget-4 widget woocommerce_price_filter-3 woocommerce widget_price_filter">
				<div class="widget-inner">
					<div class="block-title-widget">
						<h2>
							<span>价格</span>
						</h2>
					</div>
					
					<form method="get" action="${ pageContext.request.contextPath }/MedicalInstruments/findTitlePriceScope">
						<div class="price_slider_wrapper">
							<div class="price_slider" style="display:none;"></div>
							<div class="price_slider_amount">
								<input type="text" id="min_price" name="min_price" value=""
									data-min="150" placeholder="Min price">
								<input type="text" id="max_price" name="max_price" value=""
									data-max="700" placeholder="Max price">
									<input type="hidden" id="" name="typeId" value="${Ctype }"
									data-max="700" placeholder="typeId">

								<button type="submit" class="button">提交</button>

								<div class="price_label" style="display:none;">
									Price: <span class="from"></span> � <span class="to"></span>
								</div>
								<div class="clear"></div>
							</div>
						</div>
					</form>
					
				</div>
			</div>
			</c:if>
		
			
			
			

			<div
				class="widget-5 widget etrostore_best_seller_product-3 etrostore_best_seller_product">
				<div class="widget-inner">
					<div class="block-title-widget">
						<h2>
							<span>热销商品</span>
						</h2>
					</div>

					<div id="best-seller-01" class="sw-best-seller-product">
						<ul class="list-unstyled">
						<c:forEach var="article2" items="${listArticle2 }">
							<li class="clearfix">
								<div class="item-img">
									<a href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=${article2.id}" title="${article2.aname }"> <img
										width="180" height="180" src="resource/image/articleImg/${article2.image }"
										class="attachment-shop_thumbnail size-shop_thumbnail wp-post-image"
										alt=""
										sizes="(max-width: 180px) 100vw, 180px">
									</a>
								</div>

								<div class="item-content">
									<div class="reviews-content">
										<div class="star"></div>
										<div class="item-number-rating">0 Review(s)</div>
									</div>

									<h4>
										<a href="${pageContext.request.contextPath }/variableProduct/toVariable_product?productId=${article2.id}" title="${article2.aname }">${article2.aname }</a>
									</h4>

									<div class="price">
										<span class="woocommerce-Price-amount amount"><span
											class="woocommerce-Price-currencySymbol">￥</span>${article2.price }</span>
									</div>
								</div>
							</li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>

			<div class="widget-6 widget-last widget text-6 widget_text">
				<div class="widget-inner">
					<div class="textwidget">
						<div class="banner-sidebar">
							<img src="resource/front_bootstrap/images/1903/banner-detail.jpg" title="banner"
								alt="banner">
						</div>
					</div>
				</div>
			</div>
			</aside>
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
		</div>
	<script type="text/javascript" src="resource/front_bootstrap/js/jquery/jquery.min.js"></script>
	<script type="text/javascript" src="resource/front_bootstrap/js/jquery/jquery-migrate.min.js"></script>
	<script type="text/javascript" src="resource/front_bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="resource/front_bootstrap/js/jquery/js.cookie.min.js"></script>

	<!-- OPEN LIBS JS -->
	<script type="text/javascript"
		src="resource/front_bootstrap/js/owl-carousel/owl.carousel.min.js"></script>
	<script type="text/javascript" src="resource/front_bootstrap/js/slick-1.6.0/slick.min.js"></script>

	<script type="text/javascript">
		/* <![CDATA[ */
		var woocommerce_price_slider_params = {
			"currency_symbol" : "$",
			"currency_pos" : "left",
			"min_price" : "100",
			"max_price" : "500"
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

	<script type="text/javascript" src="resource/front_bootstrap/js/plugins.js"></script>
	<script type="text/javascript" src="resource/front_bootstrap/js/megamenu.min.js"></script>
	<script type="text/javascript" src="resource/front_bootstrap/js/main.min.js"></script>
<script type="text/javascript" src="resource/front_bootstrap/js/jquery/jquery.min.js"></script>
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
