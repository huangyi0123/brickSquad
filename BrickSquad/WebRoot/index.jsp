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

<title>官网</title>
<link href='https://fonts.googleapis.com/css?family=Varela+Round'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
<link href="resource/plugins/bootstrap/bootstrap.css" rel="stylesheet">


<link href="resource/css/style.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="resource/plugins/laysui/css/layui.css" rel="stylesheet">
<link href="resource/css/index.css" rel="stylesheet">

<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Easy Recharge Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">

	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

</script>
<!-- //for-mobile-apps -->
<!--fonts-->

<!--//fonts-->
<!-- js -->

<script type="text/javascript"
	src="resource/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="resource/plugins/laysui/layui.js"></script>

<!-- js -->
<script>
	$(document).ready(function() {
		//Initialize tooltips
		$('.nav-tabs > li a[title]').tooltip();

		//Wizard
		$('a[data-toggle="tab"]').on('show.bs.tab', function(e) {

			var $target = $(e.target);

			if ($target.parent().hasClass('disabled')) {
				return false;
			}
		});

		$(".next-step").click(function(e) {

			var $active = $('.wizard .nav-tabs li.active');
			$active.next().removeClass('disabled');
			nextTab($active);

		});
		$(".prev-step").click(function(e) {

			var $active = $('.wizard .nav-tabs li.active');
			prevTab($active);

		});
	});

	function nextTab(elem) {
		$(elem).next().find('a[data-toggle="tab"]').click();
	}
	function prevTab(elem) {
		$(elem).prev().find('a[data-toggle="tab"]').click();
	}
</script>
<script type="text/javascript">
function findTelephoneView() {
	$.ajax({
		  url:"${pageContext.request.contextPath}/activityRegistration/findTelephoneView",
		  type:'post', 
		  success:function(data){
			 var telephone=document.getElementById("telephone");
				console.log(data[0]);
			 
		  }
		  });	
}
</script>


</head>

<body>
	<div class="banner">
		<jsp:include page="WEB-INF/offical_website/official-header.jsp"></jsp:include>
		<div class="layui-carousel" id="test10">
			<div carousel-item="">
				<div>
					<img src="resource/image/1.png">
				</div>
				<div>
					<img src="resource/image/2.png">
				</div>
				<div>
					<img src="resource/image/3.png">
				</div>
				<div>
					<img src="resource/image/4.png">
				</div>

			</div>
			<div class="container">
				<div class="buttons" style="z-index: 10;">
					<ul>
						<li><a class="hvr-shutter-in-vertical" href="#"
							data-toggle="modal" data-target="#myModal" onclick="findTelephoneView()">预约参观</a></li>
						<li><a class="hvr-shutter-in-vertical" href="#"
							data-toggle="modal" data-target="#myModal1">我要报名</a></li>
					</ul>

				</div>
			</div>
		</div>
	</div>

	<div class="content-bottom">
		<div class="btm-grids">
			<div class="col-md-4 btm-grid back-col1 text-center">
				<!-- 
				<img src="resource/image/timg.jpg" alt="" /> -->

			</div>
			<div class="col-md-4 btm-grid btm-wid"
				style="background-color: #48CFC1;">
				<input value="社区搜索" class="title">
				<input class="city_search" type="text" value="请输入城市"
					style="color:#C5C5C5; " onfocus="if(value=='请输入城市') {value=''}"
					onblur="if (value=='') {value='请输入城市'}">
				<label class="search_icon"
					style="display:block; width:40px;height:40px;margin-top:-40px;margin-left:295px;background-color: #17877B;border:1px #17877B; border-radius:0 5px 5px 0;"><a
					href="#"><i class="layui-icon"
						style="display:block; font-size: 25px;line-height: 40px;margin-left: 8px;">&#xe615;</i></a></label>
				<div
					style="width:100%;height:100px;margin-top:50px; background-color: white;">
					<label
						style="margin-left: 140px;margin-top:20px; font-size: 2em;color: #C5C5C5;letter-spacing: 10px;">咨询热线</label>
					<label
						style="margin-left: 120px;margin-top:20px; font-size: 2em;color: #C5C5C5;">880-820-8829</label>

				</div>
			</div>
			<div class="col-md-4 btm-grid back-col2 text-center">
				<!-- <img src="resource/image/bbb1.png" alt="" /> -->
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="coupons">
		<div class="container">
			<div class="coupons-grids text-center">

				<div class="col-md-3 coupons-gd">
					<h4>
						<span><img src="resource/image/web.png" alt=" " /></span>
					</h4>
					<p>LOGIN TO YOUR ACCOUNT</p>
				</div>
				<div class="col-md-3 coupons-gd">
					<h4>
						<span><img src="resource/image/credit.png" alt=" " /></span>
					</h4>
					<p>ENTER RECHARGE DETAILS</p>
				</div>
				<div class="col-md-3 coupons-gd">
					<h4>
						<span><img src="resource/image/security.png" alt=" " /></span>
					</h4>
					<p>MAKE PAYMENT</p>
				</div>
				<div class="col-md-3 coupons-gd">
					<h3>
						RECHARGE IN <span>3 SIMPLE STEPS</span>
					</h3>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<div class="content-bottom-two">
		<div class="col-md-6 content-left text-center">
			<img src="resource/image/bbb5.png" alt="" />
		</div>
		<div class="col-md-6 content-right text-center">
			<img src="resource/image/bbb3.png" alt="" />
		</div>
		<div class="clearfix"></div>
		<div class="btm-pos">
			<h3>Exclusive Offers</h3>
			<p>Nam libero tempore, cum soluta nobis est eligendi optio cumque
				nihil impedit quo minus id quod maxime placeat facere possimus,
				omnis voluptas assumenda est.</p>
		</div>
	</div>
	
<jsp:include page="WEB-INF/offical_website/official-footer.jsp"></jsp:include>
	
	<!-- mobile -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<section>
					<div class="wizard">
						<div class="wizard-inner">
							<ul class="nav nav-tabs" role="tablist">
								<li role="presentation" class="active"><a href="#step1"
									data-toggle="tab" aria-controls="step1" role="tab"
									title="Step 1"> </a></li>

								<li role="presentation" class="disabled"><a href="#step2"
									data-toggle="tab" aria-controls="step2" role="tab"
									title="Step 2"> </a></li>
								<li role="presentation" class="disabled"><a href="#step3"
									data-toggle="tab" aria-controls="step3" role="tab"
									title="Step 3"> </a></li>
								<li role="presentation" class="disabled"><a href="#step4"
									data-toggle="tab" aria-controls="step4" role="tab"
									title="Step 4"> </a></li>
								<li role="presentation" class="disabled"><a href="#step5"
									data-toggle="tab" aria-controls="step5" role="tab"
									title="Step 5"> </a></li>
								<li role="presentation" class="disabled"><a
									href="#complete" data-toggle="tab" aria-controls="complete"
									role="tab" title="Complete"> </a></li>
							</ul>
						</div>
						
						
						
						<!-- 预约参观 -->
						<form role="form" method="post" action="">
							<div class="tab-content">
								<div class="tab-pane active" role="tabpanel" id="step12">
									<div class="mobile-grids">
										<label
											style="color: #48CFC1;font-size: 1.5em;margin-left:210px;letter-spacing: 10px;">预约参观</label>
										<label
											style="display: block;color: #48CFC1; margin-left: 122px;margin-top:40px;font-stretch: normal;">联系人</label>
										<input type="text" value="请输入联系人姓名"
											style="width:250px;height:35px;padding-left:10px; margin-left:200px;margin-top:-30px; color:#C5C5C5;border:1px solid #48CFC1;  "
											onfocus="if(value=='请输入联系人姓名') {value=''}"
											onblur="if (value=='') {value='请输入联系人姓名'}">
										<label
											style="display: block;color: #48CFC1;margin-left: 90px;margin-top:40px;font-stretch: normal;">联系人电话</label>
										<input type="text" value="请输入联系人电话" id="telephone"
											style="width:250px;height:35px;padding-left:10px;margin-left:200px;margin-top:-30px; color:#C5C5C5;border:1px solid #48CFC1; "
											onfocus="if(value=='请输入联系人电话') {value=''}"
											onblur="if (value=='') {value='请输入联系人电话'}">
										<label
											style="display: block;color: #48CFC1;margin-left: 106px;margin-top:40px;font-stretch: normal;">预约时间</label>
										<form class="layui-form" action="">
											<div class="layui-input-inline">
												<input type="text" name="date" id="date" lay-verify="date"
													autocomplete="off" class="layui-input" value="请输入预约时间"
													style="width:250px;height:35px;margin-left:200px;margin-top:-30px; color:#C5C5C5;"
													onfocus="if(value=='请输入预约时间') {value=''}"
													onblur="if (value=='') {value='请输入预约时间'}">
											</div>
										</form>
										<label
											style="display: block;color: #48CFC1;margin-left: 138px;margin-top:40px;font-stretch: normal;">社区</label>
										<div class="layui-form-item">
											<div class="layui-inline">
												<div class="layui-input-inline">
													<select name="modules" lay-verify="required" lay-search=""
														style="padding-left:10px;width:250px;height:35px;font-size:16px; margin-left:200px;margin-top:-30px; color:#C5C5C5;border:1px solid #48CFC1; ">
														<option value="">请选择</option>
														<option value="1">layer</option>
														<option value="2">form</option>
														<option value="3">layim</option>
														<option value="4">element</option>
														<option value="5">laytpl</option>
														<option value="6">upload</option>
													</select>
												</div>
											</div>
										</div>
										<p
											style="width: 260px;margin-left: 200px;font-size: 10px;color: #A2A2A2;">您提交成功后，我们的客服人员会在24小时内与您取得联系，确认参观事宜，感谢您的支持！</p>
										<label
											style="display: block;color: #48CFC1;margin-left: 138px;margin-top:40px;font-stretch: normal;">备注</label>
										<div class="layui-form-item layui-form-text">
											<div class="layui-input-block"
												style="width: 250px;margin-left: 200px;margin-top: -30px;">
												<textarea value="" class="layui-textarea"></textarea>
											</div>
										</div>
									</div>
									<input value="提交" type="submit"
										style="width: 100px;height:35px;text-align:center; color:#17877B; border: 1px solid #48CFC1;border-radius:5px;background-color: #48CFC1;margin-left: 150px;margin-top: 30px;">
									<input value="重置" type="reset"
										style="width: 100px;height:35px;text-align:center; color:#5784D5; border: 1px solid #83A7E9;border-radius:5px;background-color: #83A7E9; margin-left: 50px;margin-top: 30px;">

								</div>
							</div>
						</form>
						
						
						
						
					</div>
					</section>
				</div>
			</div>
		</div>
	</div>
	<!-- //mobile -->
	<div class="copyrights">
		Collect from <a href="http://www.cssmoban.com/">手机网站模板</a>
	</div>
	<!-- Dth -->
	<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<section>
					<div class="wizard">
						<div class="wizard-inner">
							<ul class="nav nav-tabs" role="tablist">
								<li role="presentation" class="active"><a href="#step6"
									data-toggle="tab" aria-controls="step6" role="tab"
									title="Step 6"> <span class="round-tab"> <i
											class="glyphicon glyphicon-folder-open"></i>
									</span>
								</a></li>
								<li role="presentation" class="disabled"><a href="#step7"
									data-toggle="tab" aria-controls="step7" role="tab"
									title="Step 7"> <span class="round-tab"> <i
											class="glyphicon glyphicon-pencil"></i>
									</span>
								</a></li>
								<li role="presentation" class="disabled"><a href="#step8"
									data-toggle="tab" aria-controls="step8" role="tab"
									title="Step 8"> <span class="round-tab"> <i
											class="glyphicon glyphicon-picture"></i>
									</span>
								</a></li>

							</ul>
						</div>
						<!-- 我要去报名 -->
						<form role="form">
							<div class="tab-content">
								<div class="tab-pane active" role="tabpanel" id="step12">
									<div class="mobile-grids">
										<label
											style="color: #48CFC1;font-size: 1.5em;margin-left:210px;letter-spacing: 10px;">我要报名</label>
										<label
											style="display: block;color: #48CFC1; margin-left: 122px;margin-top:40px;font-stretch: normal;">联系人</label>
										<input type="text" value="请输入联系人姓名"
											style="width:250px;height:35px;padding-left:10px; margin-left:200px;margin-top:-30px; color:#C5C5C5;border:1px solid #48CFC1;  "
											onfocus="if(value=='请输入联系人姓名') {value=''}"
											onblur="if (value=='') {value='请输入联系人姓名'}">
										<label
											style="display: block;color: #48CFC1;margin-left: 90px;margin-top:40px;font-stretch: normal;">联系人电话</label>
										<input type="text" value="请输入联系人电话"
											style="width:250px;height:35px;padding-left:10px;margin-left:200px;margin-top:-30px; color:#C5C5C5;border:1px solid #48CFC1; "
											onfocus="if(value=='请输入联系人电话') {value=''}"
											onblur="if (value=='') {value='请输入联系人电话'}">
										<label
											style="display: block;color: #48CFC1;margin-left: 106px;margin-top:40px;font-stretch: normal;">报名时间</label>
										<form class="layui-form" action="">
											<div class="layui-input-inline">
												<input type="text" name="date" id="date" lay-verify="date"
													autocomplete="off" class="layui-input" value="请输入报名时间"
													style="width:250px;height:35px;margin-left:200px;margin-top:-30px; color:#C5C5C5;"
													onfocus="if(value=='请输入报名时间') {value=''}"
													onblur="if (value=='') {value='请输入报名时间'}">
											</div>
										</form>
										<label
											style="display: block;color: #48CFC1;margin-left: 138px;margin-top:40px;font-stretch: normal;">社区</label>
										<div class="layui-form-item">
											<div class="layui-inline">
												<div class="layui-input-inline">
													<select name="modules" lay-verify="required" lay-search=""
														style="padding-left:10px;width:250px;height:35px;font-size:16px; margin-left:200px;margin-top:-30px; color:#C5C5C5;border:1px solid #48CFC1; ">
														<option value="">请选择</option>
														<option value="1">layer</option>
														<option value="2">form</option>
														<option value="3">layim</option>
														<option value="4">element</option>
														<option value="5">laytpl</option>
														<option value="6">upload</option>
													</select>
												</div>
											</div>
										</div>
										<p
											style="width: 260px;margin-left: 200px;font-size: 10px;color: #A2A2A2;">您提交成功后，我们的客服人员会在24小时内与您取得联系，确认参观事宜，感谢您的支持！</p>
										<label
											style="display: block;color: #48CFC1;margin-left: 138px;margin-top:40px;font-stretch: normal;">备注</label>
										<div class="layui-form-item layui-form-text">
											<div class="layui-input-block"
												style="width: 250px;margin-left: 200px;margin-top: -30px;">
												<textarea value="" class="layui-textarea"></textarea>
											</div>
										</div>
									</div>
									<input value="提交"
										style="width: 100px;height:35px;text-align:center; color:#17877B; border: 1px solid #48CFC1;border-radius:5px;background-color: #48CFC1;margin-left: 150px;margin-top: 30px;">
									<input value="重置"
										style="width: 100px;height:35px;text-align:center; color:#5784D5; border: 1px solid #83A7E9;border-radius:5px;background-color: #83A7E9; margin-left: 50px;margin-top: 30px;">

								</div>
							</div>
						</form>
					</div>
					</section>
				</div>
			</div>
		</div>
	</div>
	<!-- //Dth -->
	<!-- datacard -->
	<div class="modal fade" id="myModal2" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<section>
					<div class="wizard">
						<div class="wizard-inner">
							<ul class="nav nav-tabs" role="tablist">
								<li role="presentation" class="active"><a href="#step9"
									data-toggle="tab" aria-controls="step9" role="tab"
									title="Step 9"> <span class="round-tab"> <i
											class="glyphicon glyphicon-folder-open"></i>
									</span>
								</a></li>
								<li role="presentation" class="disabled"><a href="#step10"
									data-toggle="tab" aria-controls="step10" role="tab"
									title="Step 10"> <span class="round-tab"> <i
											class="glyphicon glyphicon-pencil"></i>
									</span>
								</a></li>
								<li role="presentation" class="disabled"><a href="#step11"
									data-toggle="tab" aria-controls="step11" role="tab"
									title="Step 11"> <span class="round-tab"> <i
											class="glyphicon glyphicon-picture"></i>
									</span>
								</a></li>

							</ul>
						</div>
						<form role="form">
							<div class="tab-content">
								<div class="tab-pane active" role="tabpanel" id="step9">
									<div class="mobile-grids">
										<div class="mobile-left text-center">
											<img src="resource/image/usb.png" alt="" />
										</div>
										<div class="mobile-right ">
											<h4>Enter your data card number</h4>
											<label>+91</label>
											<input type="text" class="mobile-text" value=""
												onfocus="this.value = '';"
												onblur="if (this.value == '') {this.value = '';}" required>

										</div>
									</div>
									<ul class="list-inline pull-right">
										<li><button type="button"
												class="mob-btn btn btn-primary next-step">Next</button></li>
									</ul>
								</div>
								<div class="tab-pane" role="tabpanel" id="step10">
									<div class="mobile-grids">
										<div class="mobile-left text-center">
											<img src="resource/image/usb.png" alt="" />
										</div>
										<div class="mobile-right ">
											<h4>Which operator?</h4>
											<ul class="rchge-icons">
												<li><a href="#">Airtel</a></li>
												<li><a href="#">Aircel</a></li>
												<li><a href="#">Bsnl</a></li>
												<li><a href="#">Idea</a></li>
												<li><a href="#">Vodafone</a></li>
												<li><a href="#">Reliance</a></li>
												<li><a href="#">Uninor</a></li>
											</ul>
											<div class="section_room">
												<select id="country" onchange="change_country(this.value)"
													class="frm-field required">
													<option value="null">Airtel</option>
													<option value="null">Aircel</option>
													<option value="AX">Bsnl</option>
													<option value="AX">Idea</option>
													<option value="AX">Tata Docomo</option>
													<option value="AX">Reliance</option>
													<option value="AX">Tata Indicom</option>
													<option value="AX">Uninor</option>
													<option value="AX">Vodafone</option>
													<option value="AX">MTS</option>
												</select>
											</div>
										</div>

									</div>
									<ul class="list-inline pull-right">
										<li><button type="button"
												class="mob-btn btn btn-default prev-step">Previous</button></li>
										<li><button type="button"
												class="mob-btn btn btn-primary next-step">Next</button></li>
									</ul>
								</div>
								<div class="tab-pane" role="tabpanel" id="step11">
									<div class="mobile-grids">
										<div class="mobile-left text-center">
											<img src="resource/image/usb.png" alt="" />
										</div>
										<div class="mobile-right ">
											<h4>How much to recharge?</h4>
											<div class="dth-rchge">
												<input type="text" value="100" onfocus="this.value = '';"
													onblur="if (this.value == '') {this.value = '100';}"
													required>
											</div>
										</div>
									</div>
									<ul class="list-inline pull-right">
										<li><button type="button"
												class="mob-btn btn btn-default prev-step">Previous</button></li>
										<li><button type="button"
												class="mob-btn btn btn-primary btn-info-full"
												data-dismiss="modal">Finish</button></li>
									</ul>
								</div>
								<div class="clearfix"></div>
							</div>
						</form>
					</div>
					</section>
				</div>
			</div>
		</div>
	</div>
	<!-- //datacard -->
	<!-- landline -->
	<div class="modal fade" id="myModal3" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<section>
					<div class="wizard">
						<div class="wizard-inner">
							<ul class="nav nav-tabs" role="tablist">
								<li role="presentation" class="active"><a href="#step12"
									data-toggle="tab" aria-controls="step12" role="tab"
									title="Step 12"> <span class="round-tab"> <i
											class="glyphicon glyphicon-folder-open"></i>
									</span>
								</a></li>
								<li role="presentation" class="disabled"><a href="#step13"
									data-toggle="tab" aria-controls="step13" role="tab"
									title="Step 13"> <span class="round-tab"> <i
											class="glyphicon glyphicon-pencil"></i>
									</span>
								</a></li>
								<li role="presentation" class="disabled"><a href="#step14"
									data-toggle="tab" aria-controls="step14" role="tab"
									title="Step 14"> <span class="round-tab"> <i
											class="glyphicon glyphicon-picture"></i>
									</span>
								</a></li>

							</ul>
						</div>
						<form role="form">
							<div class="tab-content">
								<div class="tab-pane active" role="tabpanel" id="step12">
									<div class="mobile-grids">
										<div class="mobile-left text-center">
											<img src="resource/image/landline.png" alt="" />
										</div>
										<div class="mobile-right">
											<h4>Pay your landline bill.Which Provider?</h4>
											<div class="section_room">
												<select id="country" onchange="change_country(this.value)"
													class="frm-field required">
													<option value="null">Enter Landline Provider Name</option>
													<option value="null">Airtel Landline</option>
													<option value="AX">Bsnl Landline</option>
													<option value="AX">MTNL Delhi</option>
												</select>
											</div>
										</div>
									</div>
									<ul class="list-inline pull-right">
										<li><button type="button"
												class="mob-btn btn btn-primary next-step">Next</button></li>
									</ul>
								</div>
								<div class="tab-pane" role="tabpanel" id="step13">
									<div class="mobile-grids">
										<div class="mobile-left text-center">
											<img src="resource/image/landline.png" alt="" />
										</div>
										<div class="mobile-right">
											<h4>Telephone Number</h4>
											<div class="dth-rchge">
												<input type="text" value="" onfocus="this.value = '';"
													onblur="if (this.value == '') {this.value = '';}" required>
												<p>Please enter a valid telephone number with std code.</p>
											</div>
										</div>
									</div>
									<ul class="list-inline pull-right">
										<li><button type="button"
												class="mob-btn btn btn-default prev-step">Previous</button></li>
										<li><button type="button"
												class="mob-btn btn btn-primary next-step">Next</button></li>
									</ul>
								</div>
								<div class="tab-pane" role="tabpanel" id="step14">
									<div class="mobile-grids">
										<div class="mobile-left text-center">
											<img src="resource/image/landline.png" alt="" />
										</div>
										<div class="mobile-right ">
											<h4>How much did you wish to pay?</h4>
											<div class="dth-rchge">
												<input type="text" value="100" onfocus="this.value = '';"
													onblur="if (this.value == '') {this.value = '100';}"
													required>
												<p>Please enter an amount between Rs.10 and Rs.1000.</p>
											</div>
										</div>
									</div>
									<ul class="list-inline pull-right">
										<li><button type="button"
												class="mob-btn btn btn-default prev-step">Previous</button></li>
										<li><button type="button"
												class="mob-btn btn btn-primary btn-info-full"
												data-dismiss="modal">Finish</button></li>
									</ul>
								</div>
								<div class="clearfix"></div>
							</div>
						</form>
					</div>
					</section>
				</div>
			</div>
		</div>
	</div>
	<!-- //landline -->
	<!-- login -->
	<div class="modal fade" id="myModal4" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content modal-info">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body modal-spa">
					<div class="login-grids">
						<div class="login">
							<div class="login-left">
								<ul>
									<li><a class="fb" href="#"><i></i>Sign in with
											Facebook</a></li>
									<li><a class="goog" href="#"><i></i>Sign in with
											Google</a></li>
									<li><a class="linkin" href="#"><i></i>Sign in with
											Linkedin</a></li>
								</ul>
							</div>
							<div class="login-right">
								<form>
									<h3>Signin with your account</h3>
									<input type="text" value="Enter your mobile number or Email"
										onfocus="this.value = '';"
										onblur="if (this.value == '') {this.value = 'Enter your mobile number or Email';}"
										required>
									<input type="password" value="Password"
										onfocus="this.value = '';"
										onblur="if (this.value == '') {this.value = 'Password';}"
										required>
									<h4>
										<a href="#">Forgot password</a> / <a href="#">Create new
											password</a>
									</h4>
									<div class="single-bottom">
										<input type="checkbox" id="brand" value="">
										<label for="brand"><span></span>Remember Me.</label>
									</div>
									<input type="submit" value="SIGNIN">
								</form>
							</div>
							<div class="clearfix"></div>
						</div>
						<p>
							By logging in you agree to our <span>Terms and Conditions</span>
							and <span>Privacy Policy</span>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //login -->
	<!-- signup -->
	<div class="modal fade" id="myModal5" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content modal-info">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body modal-spa">
					<div class="login-grids">
						<div class="login">
							<div class="login-left">
								<ul>
									<li><a class="fb" href="#"><i></i>Sign in with
											Facebook</a></li>
									<li><a class="goog" href="#"><i></i>Sign in with
											Google</a></li>
									<li><a class="linkin" href="#"><i></i>Sign in with
											Linkedin</a></li>
								</ul>
							</div>
							<div class="login-right">
								<form>
									<h3>Create your account</h3>
									<input type="text" value="Name" onfocus="this.value = '';"
										onblur="if (this.value == '') {this.value = 'Name';}" required>
									<input type="text" value="Mobile number"
										onfocus="this.value = '';"
										onblur="if (this.value == '') {this.value = 'Mobile number';}"
										required>
									<input type="text" value="Email id" onfocus="this.value = '';"
										onblur="if (this.value == '') {this.value = 'Email id';}"
										required>
									<input type="password" value="Password"
										onfocus="this.value = '';"
										onblur="if (this.value == '') {this.value = 'Password';}"
										required>

									<input type="submit" value="CREATE ACCOUNT">
								</form>
							</div>
							<div class="clearfix"></div>
						</div>
						<p>
							By logging in you agree to our <span>Terms and Conditions</span>
							and <span>Privacy Policy</span>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //signup -->
	<!-- script-for-menu -->
	<script>
		$("span.menu").click(function() {
			$("ul.nav1").slideToggle(300, function() {
				// Animation complete.
			});
		});
	</script>
	<!-- /script-for-menu -->
	<script src="resource/js/classie.js"></script>
	<script src="resource/js/uisearch.js"></script>
	<script>
		new UISearch(document.getElementById('sb-search'));
	</script>
	<!-- for bootstrap working -->
	<script src="resource/plugins/bootstrap/bootstrap.js"></script>
	<!-- //for bootstrap working -->
	<script>
		layui.use('element', function() {
			var element = layui.element; //导航的hover效果、二级菜单等功能，需要依赖element模块

			//监听导航点击
			element.on('nav(demo)', function(elem) {
				//console.log(elem)
				layer.msg(elem.text());
			});

		});
	</script>
	<script type="text/javascript">
		layui.use([ 'carousel', 'form' ], function() {
			var carousel = layui.carousel, form = layui.form;

			carousel.render({
				elem : '#test10',
				width : '1349px',
				height : '500px',
				interval : 5000
			});
		})
	</script>
	<script>
		layui
				.use(
						[ 'form', 'layedit', 'laydate' ],
						function() {
							var form = layui.form, layer = layui.layer, layedit = layui.layedit, laydate = layui.laydate;

							//日期
							laydate.render({
								elem : '#date'
							});
							laydate.render({
								elem : '#date1'
							});

						});
	</script>
</body>
</html>
