<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<title>个人信息</title>

<link rel="stylesheet" type="text/css"
	href="resource/plugins/layui/css/layui.css" media="all">
<link href="resource/plugins/bootstrap/bootstrap.min.css"
	rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" type="text/css"
	href="resource/plugins/grid_manager/GridManager.min.css">
<link rel="stylesheet" type="text/css"
	href="resource/plugins/fonts/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="resource/css/Personal.css">
<script type="text/javascript"
	src="resource/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="resource/plugins/layui/layui.js"></script>
<script type="text/javascript"
	src="resource/plugins/bootstrap/bootstrap.min.js"></script>
<script type="text/javascript"
	src="resource/plugins/layui/lay/modules/laydate.js"></script>
<script type="text/javascript" src="resource/js/common.js"></script>
<script type="text/javascript"
	src="resource/plugins/grid_manager/GridManager.min.js"></script>
<script type="text/javascript" src="resource/js/user_relatives_list.js"></script>
<script>
	$(function() {
		//头像图片信息
		var imagepath = $("#imagepath").val();
		if (imagepath == "") {
			$(".userPicPath").attr("src", "resource/image/userdefaultpic.jpg");
		} else {
			$(".userPicPath").attr("src", imagepath);
		}
		$("#userPicUpdate")
				.bind(
						'change input',
						function(e) {
							var _URL = window.URL || window.webkitURL;
							var file, img1;
							if ((file = this.files[0])) {
								img1 = new Image();
								img1.onload = function() {
									$('.userPicPath').attr('src', this.src);
								};
								img1.src = _URL.createObjectURL(file);
								//上传文件的文件流是无法被序列化并传递的。 不过如今主流浏览器都开始支持一个叫做FormData的对象，有了这个FormData，我们就可以轻松地使用Ajax方式进行文件上传了。 
								var formData = new FormData(
										$("#formFileData")[0]);
								if (formData != null) {
									$
											.ajax({
												url : 'user/userUpdateUserPicPath',
												type : 'POST',
												data : formData,
												contentType : false,
												processData : false,
												success : function(result) {
													if (result == "suc") {
														layui
																.use(
																		'layer',
																		function() {
																			var layer = layui.layer;
																			var msg = '修改成功';
																			layer
																					.msg(msg);
																			window.location
																					.href("toPersonal");
																		});
													} else if (result == "fileSizeError") {
														$(".userPicPath")
																.attr("src",
																		"resource/image/userdefaultpic.jpg");
														layui
																.use(
																		'layer',
																		function() {

																			var layer = layui.layer;
																			var msg = '上传失败：图片太大，不能上传！';
																			layer
																					.msg(msg);
																		});
													} else if (result == "getUserError") {
														$(".userPicPath")
																.attr("src",
																		"resource/image/userdefaultpic.jpg");
														layui
																.use(
																		'layer',
																		function() {

																			var layer = layui.layer;
																			var msg = '上传失败：服务器内部错误，获用户信息失败！';
																			layer
																					.msg(msg);
																		});
													} else if (result == "fileSuffixNameError") {
														$(".userPicPath")
																.attr("src",
																		"resource/image/userdefaultpic.jpg");
														layui
																.use(
																		'layer',
																		function() {
																			var layer = layui.layer;
																			var msg = '上传失败：上传的图片不符合要求，请上传符合格式的图片！';
																			layer
																					.msg(msg);
																		});
													} else if (result == "userPicNUllError") {
														$(".userPicPath")
																.attr("src",
																		"resource/image/userdefaultpic.jpg");
														layui
																.use(
																		'layer',
																		function() {
																			var layer = layui.layer;
																			var msg = '上传失败：获取图片信息错误！';
																			layer
																					.msg(msg);
																		});
													} else {
														layui
																.use(
																		'layer',
																		function() {
																			$(
																					".userPicPath")
																					.attr(
																							"src",
																							"resource/image/userdefaultpic.jpg");
																			var layer = layui.layer;
																			var msg = '调用服务器接口异常，请重试！';
																			layer
																					.msg(msg);
																		});
													}

												},
												error : function(err) {
													$(".userPicPath")
															.attr("src",
																	"resource/image/userdefaultpic.jpg");
													layui
															.use(
																	'layer',
																	function() {
																		var layer = layui.layer;
																		var msg = '调用服务器接口异常，请重试！';
																		layer
																				.msg(msg);
																	});
												}
											});
								} else {
									$(".userPicPath")
											.attr("src",
													"resource/image/userdefaultpic.jpg");
									layui.use('layer', function() {

										var layer = layui.layer;
										var msg = '调用服务器接口异常，请重试！';
										layer.msg(msg);
									});
								}

							} else {
								$(".userPicPath").attr("src",
										"resource/image/userdefaultpic.jpg");
								layui.use('layer', function() {
									var layer = layui.layer;
									var msg = '调用接口异常，请重试！';
									layer.msg(msg);
								});
							}
							;

						});

	});
</script>
<script type="text/javascript">
	function toAddRelatveOnclick() {
		layui.use('layer', function() {
			var layer = layui.layer;
			layer = layer.open({
				type : 2,
				content : "relatives/userToAddRelatives",
				offset : '100px',
				area : [ '800px', '500px' ],
				end : function() {
					init("");
				}
					 
			});
		});
	}
</script>
</head>

<body>

	<jsp:include page="../util/head.jsp"></jsp:include>
	<div class="Person_body">
		<div class="Person_left">
			<div class="Person_left_src">
				<img class="userPicPath"
					style="border-radius:100%;width: 100px;height: 100px;margin-top: 30px;margin-left: 150px;"
					alt="还没有图片" src="">
				<input type="hidden" id="imagepath" value="${user.userPicPath }">
				<span
					style="width:200px;height:20px;border-color:green; text-align:center; float:left; margin-top: 10px;margin-left: 130px;">${user.username }</span>
			</div>
		</div>
		<div class="Person_right">
			<div class="layui-tab layui-tab-card" lay-filter="demo"
				style="height:1100px; margin-top: 40px;margin-left: 10px;"
				lay-filter="demo">
				<ul class="layui-tab-title">
					<li class="layui-this">个人资料</li>
					<li>亲属联系人</li>
					<li>健康管理</li>
					<li>安全设置</li>
					<li>活动管理</li>
					<li>订单管理</li>
				</ul>
				<div class="layui-tab-content" style="height: 900px;">
					<div class="layui-tab-item layui-show  layui-tab-item1">
						<label>亲爱的${user.username }，填写真实的资料，有助于您更好的使用本系统哦！</label> <label>当前头像：</label>
						<img class="userPicPath" alt="还没有图片"
							style="border-radius:100%;width: 100px;height: 100px;margin-left: 150px;margin-top: -20px;">
						<form id="formFileData" action="user/userUpdateUserPicPath"
							enctype="multipart/form-data" method="post">
							<div
								style="margin-bottom:20px;margin-top: 30px;margin-left: 200px;">
								<span class="layui-btn"
									style="display:inline-block;position:relative;width:100px; height:34px; border:1px solid #1AA194;text-align:center;line-height:34px;background-color: #1AA194">
									修改图片 <input
										style="height:34px;position:absolute;z-index:1;left:0px;width:100px;top:0;opacity:0;filter:alpha(opacity=0);cursor:pointer;"
										type="file" class="upload_file1" id="userPicUpdate"
										name="userPic" size="1">
								</span> <span>(支持jpg、jpeg、gif、png且大小小于5M)</span>
							</div>

						</form>

						<!--分割线  -->
						<div
							style="width: 100%;height: 2px;background-color: #E2E2E2;margin-top: 10px;"></div>
						<!--分割线  -->
						<!-- 个人信息开始 -->
						<form class="layui-form"
							action="personalInformation/userUpdatePersonalInformation"
							method="post">
							<input type="hidden"
								value="${addressAndPersonaInformationExpand.personalInformation.id }"
								name="personalInformation.id">
							<input type="hidden"
								value="${addressAndPersonaInformationExpand.personalInformation.addressId }"
								name="personalInformation.addressId ">
							<input type="hidden"
								value="${addressAndPersonaInformationExpand.address.id }"
								name="address.id">
							<label>* 真实姓名：</label>

							<input type="text"
								value="${addressAndPersonaInformationExpand.personalInformation.name }"
								name="personalInformation.name" required lay-verify="required"
								style="width: 350px;margin-left: 150px;margin-top: -35px;"
								autocomplete="off" placeholder="请输入真实姓名" class="layui-input">
							<label>* 性别：</label>

							<div class="layui-form-item">
								<div class="layui-input-block"
									style="margin-left: 150px;margin-top: -35px">
									<input type="radio" required lay-verify="required"
										<c:if test="${addressAndPersonaInformationExpand.personalInformation.gender eq'男'}">checked</c:if>
										name="personalInformation.gender" value="男" title="男">
									<input type="radio" required lay-verify="required"
										<c:if test="${addressAndPersonaInformationExpand.personalInformation.gender eq'女'}">checked</c:if>
										name="personalInformation.gender" value="女" title="女">
								</div>
							</div>
							<label>* 身份证号：</label>
							<input type="text" name="personalInformation.idCard"
								value="${addressAndPersonaInformationExpand.personalInformation.idCard }"
								lay-verify="identity" required lay-verify="required"
								style="width: 350px;margin-left: 150px;margin-top: -35px;"
								autocomplete="off" placeholder="请输入身份证号" class="layui-input">
							<label>出生年月：</label>
							<input id="birthdayId" type="date"
								name="personalInformation.birthday"
								val="${addressAndPersonaInformationExpand.personalInformation.birthday }"
								lay-verify="title" required lay-verify="required"
								style="width: 350px;margin-left: 150px;margin-top: -35px;"
								autocomplete="off" placeholder="出生年月" class="layui-input">

							<label>* 现居住地：</label>

							<div class="layui-form-item"
								style="margin-left: 150px;margin-top: -35px;">
								<div class="layui-input-inline">
									<select required lay-verify="required"
										val="${addressAndPersonaInformationExpand.address.provinceId}"
										name="address.provinceId" id="prId" lay-filter="prIds"
										lay-search="">
										<option value="">选择省份</option>
									</select>
								</div>
								<div class="layui-input-inline">
									<select required lay-verify="required"
										val="${addressAndPersonaInformationExpand.address.cityId}"
										name="address.cityId" id="cityId" lay-filter="cityIdSelect"
										lay-search="">
										<option value="">选择城市</option>
									</select>
								</div>
								<div class="layui-input-inline">
									<select required lay-verify="required"
										val="${addressAndPersonaInformationExpand.address.countyId}"
										name="address.countyId" id="countyId"
										lay-filter="countyIdSelect" lay-search="">
										<option value="">选择县市</option>
									</select>
								</div>
								<div class="layui-input-inline">
									<select required lay-verify="required"
										val="${addressAndPersonaInformationExpand.address.countryId}"
										name="address.countryId" id="countryId"
										lay-filter="countryIdSelect" lay-search="">
										<option value="">选择乡镇</option>
									</select>
								</div>
							</div>
							<label>详细地址：</label>
							<input required lay-verify="required" type="text"
								value="${addressAndPersonaInformationExpand.address.detailed}"
								name="address.detailed" lay-verify="title"
								style="width: 350px;margin-left: 150px;margin-top: -35px;"
								autocomplete="off" placeholder="请输入详细地址" class="layui-input">
							<button style="width: 100px;margin-left: 350px;margin-top: 10px;"
								type="submit" class="layui-btn" lay-submit lay-filter="formDemo">保存</button>
						</form>
						<!--分割线  -->
						<div
							style="width: 100%;height: 2px;background-color: #E2E2E2;margin-top: 10px;"></div>
						<!--分割线  -->
					</div>
					<div class="layui-tab-item layui-tab-item2">
						<label> * 亲属联系人：
							<button type="button" class="layui-btn"
								onclick="toAddRelatveOnclick()">添加亲属联系人</button>
						</label> <label>亲爱的${user.username }，填写真实有效的亲属联系方式，联系不到你本人情况下可以更方便的找到您！</label>
						<!--  引用分页框架开始-->
						<div class="cls"></div>
						<table grid-manager="demo-ajaxPageCode"></table>
						<!-- 引用分页框架结束 -->
					</div>

					<!-- 健康管理 -->
					<div class="layui-tab-item layui-tab-item3">
						<label
							style="display:block; font-weight: bold;margin-left: 50px;margin-top: 20px;">个人状况数据</label>
						<h2 id="nullMessage"></h2>
						<label>患有疾病：</label>
						<input type="text" readonly="readonly"
							value="${personalInfofmationAndHealthRecordsExpand.diseaseName }"
							style="width: 100px;margin-left: 120px;margin-top: -35px; border: none; border-bottom: 1px solid;border-bottom-color: black;"
							class="layui-input">

						<label style="margin-left: 400px;margin-top: -35px;">民族：</label>
						<input type="text" readonly="readonly"
							value="${personalInfofmationAndHealthRecordsExpand.nationName }"
							style="width: 100px;margin-left: 480px;margin-top: -35px; border: none; border-bottom: 1px solid;border-bottom-color: black;"
							class="layui-input">


						<label>文化程度：</label>
						<input type="text" readonly="readonly"
							value="${personalInfofmationAndHealthRecordsExpand.personalInformation.cultureId }"
							style="width: 100px;margin-left: 120px;margin-top: -35px; border: none; border-bottom: 1px solid;border-bottom-color: black;"
							class="layui-input">
						<label style="margin-left: 400px;margin-top: -35px;">婚姻状况：</label>
						<input type="text" readonly="readonly"
							value="${personalInfofmationAndHealthRecordsExpand.personalInformation.marriageId }"
							style="width: 100px;margin-left: 480px;margin-top: -35px; border: none; border-bottom: 1px solid;border-bottom-color: black;"
							class="layui-input">
						<label style="margin-top: 20px;">身高(cm)：</label>
						<input type="text" readonly="readonly"
							value="${personalInfofmationAndHealthRecordsExpand.personalInformation.height }"
							style="width: 100px;margin-left: 120px;margin-top: -35px; border: none; border-bottom: 1px solid;border-bottom-color: black;"
							class="layui-input">

						<label style="margin-left: 400px;margin-top: -35px;">体重(kg)：</label>
						<input type="text" readonly="readonly"
							value="${personalInfofmationAndHealthRecordsExpand.personalInformation.weight }"
							style="width: 100px;margin-left: 480px;margin-top: -35px; border: none; border-bottom: 1px solid;border-bottom-color: black;"
							class="layui-input">

						<label style="margin-top: 20px;">血栓：</label>
						<input type="text" readonly="readonly"
							value="${personalInfofmationAndHealthRecordsExpand.healthRecords.thrombus }"
							style="width: 100px;margin-left: 120px;margin-top: -35px; border: none; border-bottom: 1px solid;border-bottom-color: black;"
							class="layui-input">
						<label style="margin-left: 400px;margin-top: -35px;">血压：</label>
						<input type="text" readonly="readonly"
							value="${personalInfofmationAndHealthRecordsExpand.healthRecords.bloodPressure }"
							style="width: 100px;margin-left: 480px;margin-top: -35px; border: none; border-bottom: 1px solid;border-bottom-color: black;"
							class="layui-input">
						<label>饮食状况：</label>
						<input type="text" readonly="readonly"
							value="${personalInfofmationAndHealthRecordsExpand.healthRecords.dietSituation }"
							style="width: 100px;margin-left: 120px;margin-top: -35px; border: none; border-bottom: 1px solid;border-bottom-color: black;"
							class="layui-input">
						<label style="margin-left: 400px;margin-top: -35px;">运动状况：</label>
						<input type="text" readonly="readonly"
							value="${personalInfofmationAndHealthRecordsExpand.healthRecords.sportsSituation }"
							style="width: 100px;margin-left: 480px;margin-top: -35px; border: none; border-bottom: 1px solid;border-bottom-color: black;"
							class="layui-input">
						<label>情绪控制：</label>
						<input type="text" readonly="readonly"
							value="${personalInfofmationAndHealthRecordsExpand.healthRecords.emotionControl }"
							style="width: 100px;margin-left: 120px;margin-top: -35px; border: none; border-bottom: 1px solid;border-bottom-color: black;"
							class="layui-input">
						<label style="margin-left: 400px;margin-top: -35px;">身体状况：</label>
						<input type="text" readonly="readonly"
							value="${personalInfofmationAndHealthRecordsExpand.healthRecords.shape }"
							style="width: 100px;margin-left: 480px;margin-top: -35px; border: none; border-bottom: 1px solid;border-bottom-color: black;"
							class="layui-input">
						<div
							style="width: 100%;height: 2px;background-color: #E2E2E2;margin-top: 20px;"></div>

						<div class="layui-collapse" style="width: 90%;margin: 20px auto;">
							<div class="layui-colla-item">
								<h5 class="layui-colla-title" style="font-weight: bold;">家族史</h5>
								<div class="layui-colla-content layui-show">${personalInfofmationAndHealthRecordsExpand.personalInformation.familyHistory }</div>
							</div>
							<div class="layui-colla-item">
								<h5 class="layui-colla-title" style="font-weight: bold;">健康评估</h5>
								<div class="layui-colla-content">${personalInfofmationAndHealthRecordsExpand.healthRecords.healthAssessment }</div>
							</div>
							<div class="layui-colla-item">
								<h5 class="layui-colla-title" style="font-weight: bold;">危险提示</h5>
								<div class="layui-colla-content">${personalInfofmationAndHealthRecordsExpand.healthRecords.dangerousTips }</div>
							</div>
							<div class="layui-colla-item">
								<h5 class="layui-colla-title" style="font-weight: bold;">结论建议
								</h5>
								<div class="layui-colla-content">${personalInfofmationAndHealthRecordsExpand.healthRecords.conclusionSuggestion}</div>
							</div>
							<div class="layui-colla-item">
								<h5 class="layui-colla-title" style="font-weight: bold;">治疗效果评价
								</h5>
								<div class="layui-colla-content">${personalInfofmationAndHealthRecordsExpand.healthRecords.evaluate }</div>
							</div>
						</div>

					</div>
					<!--健康管理结束  -->
					<div class="layui-tab-item layui-tab-item4">
						<label
							style="font-weight:bold; margin-top:20px; margin-left:50px; display: block;">您的基础信息</label>

						<label>用户名：</label> <label>绑定手机：</label> <a href="#"
							style="margin-left:400px;margin-top:-25px; line-height:20px; text-decoration: none;display: block; ">修改</a>
						<div
							style="width: 100%;height: 2px;background-color: #E2E2E2;margin-top: 20px;"></div>
						<label
							style="font-weight:bold; margin-top:20px; margin-left:50px; display: block;">您的安全服务</label>
						<!-------------------------------- 身份验证 ---------------------------------->
						<i class="layui-icon"
							style="font-size: 30px;color: green;margin-left: 100px;margin-top: 20px;display: block;">&#xe618;</i>
						<label style="font-size: 5px;margin-left: 105px;margin-top: -8px;">已完成</label>
						<label style="margin-left: 200px;margin-top: -60px;">身份验证</label>
						<p style="width:350px; margin-left: 300px;margin-top: -25px;">用于提升账号的安全性和信任级别。认证后的有卖家记录的账号不能修改认证信息。</p>
						<a style="margin-left: 700px;margin-top: -35px;">查看</a>
						<div
							style="width: 100%;height: 1px;border-top: 1px dashed #E1E1E1;margin-top: 50px;"></div>
						<!-------------------------------- 登录密码 ---------------------------------->
						<i class="layui-icon"
							style="font-size: 30px;color: green;margin-left: 100px;margin-top: 20px;display: block;">&#xe618;</i>
						<label style="font-size: 5px;margin-left: 105px;margin-top: -8px;">已完成</label>
						<label style="margin-left: 200px;margin-top: -60px;">登录密码</label>
						<p style="width:350px; margin-left: 300px;margin-top: -25px;">安全性高的密码可以使账号更安全。建议您定期更换密码，且设置一个包含数字和字母，并长度超过6位以上的密码。</p>
						<a style="margin-left: 700px;margin-top: -35px;">查看</a>
						<div
							style="width: 100%;height: 1px;border-top: 1px dashed #E1E1E1;margin-top: 50px;"></div>

						<!-------------------------------- 绑定手机 ---------------------------------->
						<i class="layui-icon"
							style="font-size: 35px;color: red;margin-left: 100px;margin-top: 20px;display: block;">&#x1006;</i>
						<label style="font-size: 5px;margin-left: 105px;margin-top: -8px;">未设置</label>
						<label style="margin-left: 200px;margin-top: -60px;">绑定手机</label>
						<p style="width:350px; margin-left: 300px;margin-top: -25px;">绑定手机后，您即可享受淘宝丰富的手机服务，如手机找回密码等。</p>
						<a style="margin-left: 700px;margin-top: -35px;">设置</a>
					</div>

					<div class="layui-tab-item layui-tab-item5">5</div>

					<div class="layui-tab-item layui-tab-item6">
						<div class="layui-tab layui-tab-brief"
							lay-filter="docDemoTabBrief">
							<ul class="layui-tab-title">
								<li class="layui-this">所有订单</li>
								<li>待付款</li>
								<li>待发货</li>
								<li>待收货</li>
								<li>待评价</li>
							</ul>
							<i class="glyphicon glyphicon-trash"
								style="margin-left: 850px;margin-top: -38px;"> </i> <a href="#"
								style="display:block; margin-left: 870px;margin-top: -40px;">订单回收站</a>
							<div class="layui-tab-content">
								<div class="layui-tab-item layui-show">
									<table class="layui-table">
										<colgroup>
											<col width="150">
											<col width="200">
											<col>
										</colgroup>
										<thead>
											<tr>
												<th>宝贝</th>
												<th>单价</th>
												<th>数量</th>
												<th>交易状态</th>
												<th>交易操作</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>贤心</td>
												<td>2016-11-29</td>
												<td>人生就像是一场修行</td>
												<td>人生就像是一场修行</td>
												<td>人生就像是一场修行</td>
											</tr>
											<tr>
												<td>许闲心</td>
												<td>2016-11-28</td>
												<td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
												<td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
												<td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="layui-tab-item">
									<table class="layui-table">
										<colgroup>
											<col width="150">
											<col width="200">
											<col>
										</colgroup>
										<thead>
											<tr>
												<th>宝贝</th>
												<th>单价</th>
												<th>数量</th>
												<th>交易状态</th>
												<th>交易操作</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>贤心</td>
												<td>2016-11-29</td>
												<td>人生就像是一场修行</td>
												<td>人生就像是一场修行</td>
												<td>人生就像是一场修行</td>
											</tr>
											<tr>
												<td>许闲心</td>
												<td>2016-11-28</td>
												<td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
												<td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
												<td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="layui-tab-item">
									<table class="layui-table">
										<colgroup>
											<col width="150">
											<col width="200">
											<col>
										</colgroup>
										<thead>
											<tr>
												<th>宝贝</th>
												<th>单价</th>
												<th>数量</th>
												<th>交易状态</th>
												<th>交易操作</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>贤心</td>
												<td>2016-11-29</td>
												<td>人生就像是一场修行</td>
												<td>人生就像是一场修行</td>
												<td>人生就像是一场修行</td>
											</tr>
											<tr>
												<td>许闲心</td>
												<td>2016-11-28</td>
												<td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
												<td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
												<td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="layui-tab-item">
									<table class="layui-table">
										<colgroup>
											<col width="150">
											<col width="200">
											<col>
										</colgroup>
										<thead>
											<tr>
												<th>宝贝</th>
												<th>单价</th>
												<th>数量</th>
												<th>交易状态</th>
												<th>交易操作</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>贤心</td>
												<td>2016-11-29</td>
												<td>人生就像是一场修行</td>
												<td>人生就像是一场修行</td>
												<td>人生就像是一场修行</td>
											</tr>
											<tr>
												<td>许闲心</td>
												<td>2016-11-28</td>
												<td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
												<td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
												<td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="layui-tab-item">
									<table class="layui-table">
										<colgroup>
											<col width="150">
											<col width="200">
											<col>
										</colgroup>
										<thead>
											<tr>
												<th>宝贝</th>
												<th>单价</th>
												<th>数量</th>
												<th>交易状态</th>
												<th>交易操作</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>贤心</td>
												<td>2016-11-29</td>
												<td>人生就像是一场修行</td>
												<td>人生就像是一场修行</td>
												<td>人生就像是一场修行</td>
											</tr>
											<tr>
												<td>许闲心</td>
												<td>2016-11-28</td>
												<td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
												<td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
												<td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="layui-tab-item">6</div>
							</div>
							<i class="fa fa-trash-o"
								style="display:block; margin-left: 900px;margin-top: -60px;">
							</i>
						</div>

					</div>


				</div>
			</div>


		</div>
	</div>

	<script>
		/* 开启遮罩 */
		layui.use('layer', function() {
			layer.load(1, {
				shade : [ 0.8, '#393D49' ]
			});
		});

		layui
				.use(
						'form',
						function() {
							var form = layui.form(); //只有执行了这一步，部分表单元素才会自动修饰成功
							//但是，如果你的HTML是动态生成的，自动渲染就会失效
							//因此你需要在相应的地方，执行下述方法来手动渲染，跟这类似的还有 element.init();
							//以下是个人信息地址下拉框监听事件
							form
									.on(
											'select(prIds)',
											function(data) {
												$
														.ajax({
															url : 'address/findRegionsByParentId?pid='
																	+ data.value,
															success : function(
																	result) {
																result = JSON
																		.parse(result);
																$("#cityId")
																		.empty();
																$("#cityId")
																		.append(
																				'<option value="">选择城市</option>');
																$("#countyId")
																		.empty();
																$("#countyId")
																		.append(
																				'<option value="">选择县市</option>');
																$("#countryId")
																		.empty();
																$("#countryId")
																		.append(
																				'<option value="">选择乡镇</option>');
																findAll(result,
																		"#cityId");
																form
																		.render(
																				'select',
																				'cityIdSelect');
															}
														});
											});
							form
									.on(
											'select(cityIdSelect)',
											function(data) {
												$
														.ajax({
															url : 'address/findRegionsByParentId?pid='
																	+ data.value,
															success : function(
																	result) {
																result = JSON
																		.parse(result);
																$("#countyId")
																		.empty();
																$("#countyId")
																		.append(
																				'<option value="">选择县市</option>');
																$("#countryId")
																		.empty();
																$("#countryId")
																		.append(
																				'<option value="">选择乡镇</option>');
																findAll(result,
																		"#countyId");

																console
																		.log(result);
																form
																		.render(
																				'select',
																				'countyIdSelect');
															}
														});
											});
							form
									.on(
											'select(countyIdSelect)',
											function(data) {
												$
														.ajax({
															url : 'address/findRegionsByParentId?pid='
																	+ data.value,
															success : function(
																	result) {
																result = JSON
																		.parse(result);
																$("#countryId")
																		.empty();
																$("#countryId")
																		.append(
																				'<option value="">选择乡镇</option>');
																findAll(result,
																		"#countryId");
																form
																		.render(
																				'select',
																				'countryIdSelect');
															}
														});
											});
							//以下是亲属信息地址下拉框监听事件
							form
									.on(
											'select(relativesprIds)',
											function(data) {
												$
														.ajax({
															url : 'address/findRegionsByParentId?pid='
																	+ data.value,
															success : function(
																	result) {
																result = JSON
																		.parse(result);
																$(
																		"#relativescityId")
																		.empty();
																$(
																		"#relativescityId")
																		.append(
																				'<option value="">选择城市</option>');
																$(
																		"#relativescountyId")
																		.empty();
																$(
																		"#relativescountyId")
																		.append(
																				'<option value="">选择县市</option>');
																$(
																		"#relativescountryId")
																		.empty();
																$(
																		"#relativescountryId")
																		.append(
																				'<option value="">选择乡镇</option>');
																findAll(result,
																		"#relativescityId");
																form
																		.render(
																				'select',
																				'relativescityIdSelect');
															}
														});
											});
							form
									.on(
											'select(relativescityIdSelect)',
											function(data) {
												$
														.ajax({
															url : 'address/findRegionsByParentId?pid='
																	+ data.value,
															success : function(
																	result) {
																result = JSON
																		.parse(result);
																$(
																		"#relativescountyId")
																		.empty();
																$(
																		"#relativescountyId")
																		.append(
																				'<option value="">选择县市</option>');
																$(
																		"#relativescountryId")
																		.empty();
																$(
																		"#relativescountryId")
																		.append(
																				'<option value="">选择乡镇</option>');
																findAll(result,
																		"#relativescountyId");

																console
																		.log(result);
																form
																		.render(
																				'select',
																				'relativescountyIdSelect');
															}
														});
											});
							form
									.on(
											'select(relativescountyIdSelect)',
											function(data) {
												$
														.ajax({
															url : 'address/findRegionsByParentId?pid='
																	+ data.value,
															success : function(
																	result) {
																result = JSON
																		.parse(result);
																$(
																		"#relativescountryId")
																		.empty();
																$(
																		"#relativescountryId")
																		.append(
																				'<option value="">选择乡镇</option>');
																findAll(result,
																		"#relativescountryId");
																form
																		.render(
																				'select',
																				'relativescountryIdSelect');
															}
														});
											});
							$(function() {

								//没有身体状况数据提示
								var healthRecords = '${personalInfofmationAndHealthRecordsExpand.healthRecords}';
								if (healthRecords == "") {
									$("#nullMessage").html("还没有您的身体状况数据！");
								}

								//回显address中的省级地址
								var provinceData = ${provinceData};
								//个人信息地址省级地址回填
								findAll(provinceData, "#prId");
								form.render('select', 'prIds');
								//亲属联系人地址省级地址回填
								findAll(provinceData, "#relativesprIds");
								form.render('select', 'relativesprIds');
								//个人信息地址回填
								var addressId = "${addressAndPersonaInformationExpand.personalInformation.addressId}";
								if (addressId.length > 0) {
									//回显address中的市级地址
									var address = '${allRegionResultById}';
									address = JSON.parse(address);
									findAll(address[0].city, "#cityId");
									form.render('select', 'cityIdSelect');
									//回显address中的县级地址
									findAll(address[0].county, "#countyId");
									form.render('select', 'countyIdSelect');
									//回显address中的乡镇级地址
									findAll(address[0].country, "#countryId");
									form.render('select', 'countryIdSelect');

								} else {
								}

								//亲属地址回填
								var relativesAddresId = "${relativesAndAddressExpand.relatives.addressId}";
								if (relativesAddresId.length > 0) {
									//回显address中的市级地址
									var address = '${relativesallRegionResultById}';
									address = JSON.parse(address);
									findAll(address[0].city, "#relativescityId");
									form.render('select',
											'relativescityIdSelect');
									//回显address中的县级地址
									findAll(address[0].county,
											"#relativescountyId");
									form.render('select',
											'relativescountyIdSelect');
									//回显address中的乡镇级地址
									findAll(address[0].country,
											"#relativescountryId");
									form.render('select',
											'relativescountryIdSelect');
								} else {

								}

								//页面日期格式回填处理
								var birthdayId = $("#birthdayId").attr('val');
								birthdayId = Format(new Date(birthdayId),
										"yyyy-MM-dd");
								$("#birthdayId").val(birthdayId);
								/* 关闭遮罩 */
								layui.use('layer', function() {
									var layer = layui.layer;
									layer.closeAll();
								});

								layui.use('element', function() {
									var element = layui.element();
									//一些事件监听
									element.on('tab(demo)', function(data) {
										init("");
									});
								});

							});
						});
	</script>

	<jsp:include page="../util/indexFooter.jsp"></jsp:include>
</body>

</html>
