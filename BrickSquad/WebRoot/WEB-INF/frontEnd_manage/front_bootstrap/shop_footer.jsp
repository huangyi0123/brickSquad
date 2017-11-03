<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'shop_footer.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <footer id="footer" class="footer default theme-clearfix">
		 <!-- Content footer -->
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
													adipiscing elit....</div>

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
													adipiscing elit....</div>

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
													adipiscing elit....</div>

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
													adipiscing elit....</div>

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
														<a href="home_page_1.html"> <img
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
						Etro Store - Premium Multipurpose HTML5/CSS3 Theme - Designed by <a
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
  </body>
</html>
