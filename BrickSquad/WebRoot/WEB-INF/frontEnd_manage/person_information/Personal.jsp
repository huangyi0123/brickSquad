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

<link href="resource/plugins/bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css"
	media="all" />
<link rel="stylesheet" type="text/css" href="resource/plugins/grid_manager/GridManager.min.css">
<link rel="stylesheet" type="text/css" href="resource/plugins/fonts/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="resource/css/Personal.css">
<script type="text/javascript" src="resource/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="resource/plugins/laysui/layui.js"></script>
<script type="text/javascript" src="resource/plugins/bootstrap/bootstrap.min.js"></script>
<script type="text/javascript" src="resource/plugins/layui/lay/modules/laydate.js"></script>
<script type="text/javascript" src="resource/js/common.js"></script>
<script type="text/javascript" src="resource/plugins/grid_manager/GridManager.min.js"></script>
<script type="text/javascript" src="resource/js/user_relatives_list.js"></script>
<script type="text/javascript" src="resource/js/Personal.js"></script>
<script>
	$(function() {
		uploadImage();
		var birthday = $("#birthday").html();
		$("#birthday").html(Format(new Date(birthday), "yyyy-MM-dd"));
		//判断用户信息是否完善
		var name = $("#pername").val();
		if (name == "") {
			updatePinfo("1");
		} else {
			savesa("1");
		}//js
		orders();
	})
</script>
</head>

<body>
	<jsp:include page="../../offical_website/official-header.jsp"></jsp:include>
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
				style="height:1100px; margin-top: 40px;margin-left: 10px;" lay-filter="demo">
				<ul class="layui-tab-title" id="person">
					<li class="layui-this">个人资料</li>
					<li>健康管理</li>
					<li>安全设置</li>
					<li onclick="activisy()">活动管理</li>
					<li>订单管理</li>
					<li onclick="onshop()">购物中心</li>
				</ul>
				<div class="layui-tab-content" style="height: 900px;">
					<div class="layui-tab-item layui-show  layui-tab-item1">
						<label>亲爱的${user.username }，填写真实的资料，有助于您更好的使用本系统哦</label> <label
							style="display: inline-block;">当前头像：</label>
						<img class="userPicPath" alt="还没有图片"
							style="border-radius:100%;width: 100px;height: 100px;margin-left:50px;margin-top: 0px;">
						<form id="formFileData" action="user/userUpdateUserPicPath" enctype="multipart/form-data"
							style="display: inline-block;" method="post">
							<div style="margin-bottom:20px;margin-top: 30px;margin-left: 20px;">
								<span class="layui-btn"
									style="display:inline-block;position:relative;width:100px; height:34px; border:1px solid #1AA194;text-align:center;line-height:34px;background-color: #1AA194">
									修改图片
									<input
										style="height:34px;position:absolute;z-index:1;left:0px;width:100px;top:0;opacity:0;filter:alpha(opacity=0);cursor:pointer;"
										type="file" class="upload_file1" id="userPicUpdate" name="userPic" size="1">
								</span>
								<span>(支持jpg、jpeg、gif、png且大小小于5M)</span>
							</div>

						</form>

						<!--分割线  -->
						<div style="width: 100%;height: 2px;background-color: #E2E2E2;margin-top: 10px;"></div>
						<!--分割线  -->
						<!-- 个人信息开始 -->
						<form class="layui-form message" action="personalInformation/userUpdatePersonalInformation"
							method="post" id="perinformation">
							<input type="hidden" value="${addressAndPersonaInformationExpand.personalInformation.id }"
								name="personalInformation.id">
							<input type="hidden"
								value="${addressAndPersonaInformationExpand.personalInformation.addressId }"
								name="personalInformation.addressId ">
							<input type="hidden" value="${addressAndPersonaInformationExpand.address.id }"
								name="address.id">
							<input type="hidden" value="${addressAndPersonaInformationExpand.personalInformation.name }"
								name="" id="pername">
							<div class="layui-form-item">
								<label style="width: 100px ;float: left;">* 真实姓名：</label>
								<span class="info" style="font-size: 17px;display: block;float: left;margin-top: 25px"
									id="ipname">${addressAndPersonaInformationExpand.personalInformation.name }</span>
								<input id="perName" type="text"
									value="${addressAndPersonaInformationExpand.personalInformation.name }"
									name="personalInformation.name" required lay-verify="required"
									style="width: 350px;margin-left:0px;margin-top: 10px;" autocomplete="off"
									placeholder="请输入真实姓名" class="layui-input uinfo">
							</div>

							<div class="layui-form-item">
								<label style="width: 100px ;float: left;">* 性别：</label>
								<span class="info" style="font-size: 17px;display: block;float: left;margin-top: 15px"
									id="ipgender">${addressAndPersonaInformationExpand.personalInformation.gender }</span>
								<div class="layui-inline uinfo" style="display: inline-block; margin-top: 15px"
									id="perGender">
									<input type="radio" name="personalInformation.gender" value="男" title="男">
									<input type="radio" name="personalInformation.gender" value="女" title="女">
								</div>
							</div>
							<div class="layui-form-item">
								<label style="width: 100px ;float: left;">* 身份证号：</label>
								<input type="text" name="personalInformation.idCard"
									value="${addressAndPersonaInformationExpand.personalInformation.idCard }"
									lay-verify="identity" required lay-verify="required"
									style="width: 350px;margin-left:0px;margin-top: 10px;display:inline-block;"
									autocomplete="off" placeholder="请输入身份证号" class="layui-input uinfo" id="idcard">
								<span class="info" style="font-size: 17px;display: block;float: left;margin-top: 25px"
									id="ipidcard">${addressAndPersonaInformationExpand.personalInformation.idCard }</span>
							</div>
							<div class="layui-form-item">
								<label style="width: 100px ;float: left;">出生年月：</label>
								<input id="birthdayId" type="date" name="personalInformation.birthday"
									val="${addressAndPersonaInformationExpand.personalInformation.birthday }"
									lay-verify="title" required lay-verify="required"
									style="width: 350px;margin-left:0px;margin-top: 10px; display:inline-block"
									autocomplete="off" placeholder="出生年月" class="layui-input uinfo" id="birthday">
								<span id="birthday" class="info"
									style="font-size: 17px;display: block;float: left;margin-top: 25px">${addressAndPersonaInformationExpand.personalInformation.birthday }</span>
							</div>
						
						<div class="layui-inline">
							<label style="width: 100px ;float: left;">* 现居住地：</label>
							<span class="info" id="addressqw"
								style="font-size: 17px;display:block;float: left;margin-top: 25px">${address }</span>
							<div class="uinfo">
								<input type="hidden" id="addressId"
									value="${addressAndPersonaInformationExpand.address.id }">
								<div class="layui-input-inline">
									<select lay-ignore style="color: #000;border: 1px solid #E6E4E4; padding: 5px"
										val="${addressAndPersonaInformationExpand.address.provinceId}" name="address.provinceId"
										id="prIdas" onchange="selectCity(this,'#cityId')">
										<option value="">选择省份</option>
									</select>
								</div>
								<div class="layui-input-inline">
									<select lay-ignore style="color: #000;border: 1px solid #E6E4E4; padding: 5px"
										val="${addressAndPersonaInformationExpand.address.cityId}" name="address.cityId"
										id="cityId" onchange="selectCity(this,'#countyId')" >
										<option value="" selected="selected">选择城市</option>
									</select>
								</div>
								<div class="layui-input-inline">
									<select lay-ignore style="color: #000;border: 1px solid #E6E4E4; padding: 5px"
										val="${addressAndPersonaInformationExpand.address.countyId}" name="address.countyId"
										id="countyId" onchange="selectCity(this,'#countryId')" >
										<option value="">选择县市</option>
									</select>
								</div>
								<div class="layui-input-inline">
									<select lay-ignore style="color: #000;border: 1px solid #E6E4E4; padding: 5px"
										val="${addressAndPersonaInformationExpand.address.countryId}" name="address.countryId"
										id="countryId" >
										<option value="">选择乡镇</option>

									</select>
								</div>
								<div class="layui-input-inline">
									<input required lay-verify="required" type="text"
										value="${addressAndPersonaInformationExpand.address.detailed}" name="address.detailed"
										lay-verify="title" style="width: 350px;margin-left: 30px;margin-top:10px;"
										autocomplete="off" id="detailed" placeholder="请输入详细地址" class="layui-input">
								</div>
							</div>
						</div>
						<!--分割线  -->
						<div style="width: 100%;height: 2px;background-color: #E2E2E2;margin-top: 10px;"></div>
						<!--分割线  -->
						<div style="clear:both;"></div>
						<!--亲属信息  -->
						<div>
							<label>* 亲属联系人：</label> <label style="display:inline-block; ">* 联系人姓名：</label>
							<input type="hidden" name="relatives.id"
								value="${addressAndPersonaInformationExpand.relatives.id}" id="relativesId">
							<input type="text" name="relatives.name" lay-verify="title" id="gName"
								style="width: 350px;margin-left: 150px;margin-top: -35px;" autocomplete="off"
								placeholder="请输入联系人姓名" class="layui-input uinfo"
								value="${addressAndPersonaInformationExpand.relatives.name }">
							<span class="info" id="gxName">${addressAndPersonaInformationExpand.relatives.name }</span>
							<div style="clear: both;"></div>
							<label style="display:inline-block; ">* 联系人电话：</label>
							<input type="text" name="relatives.telephone" lay-verify="title" id="gphone"
								style="width: 350px;margin-left: 150px;margin-top: -35px;" autocomplete="off"
								placeholder="请输入联系人电话" class="layui-input uinfo"
								value="${addressAndPersonaInformationExpand.relatives.telephone }">
							<span class="info" id="gxphone">${addressAndPersonaInformationExpand.relatives.telephone }</span>
							<div style="clear: both;"></div>
							<label style="display:inline-block; ">* 亲属关系：</label>
							<div class="layui-inline uinfo" style="margin-left:0px;margin-top: -15px;">
								<div class="layui-input-inline">
									<select lay-ignore id="relationshipId" name="relatives.relationshipId" style="color: #000;border: 1px solid #E6E4E4; padding: 5px"
										 val="${relationship.id }">
										<option value="">直接选择或搜索选择</option>
									</select>
								</div>
							</div>

							<span class="info" id="gxtype">${relationship.name }</span>
							<div style="clear: both;"></div>
							<%-- <div class="layui-inline" style="display: none;">
									<label style="width: 100px ;float: left;">* 现居住地：</label>
									<span class="uinfo" id="addressqw"
										style="font-size: 17px;display:block;float: left;margin-top: 25px">${address }</span>
									<div class="info" style="margin-top: 20px">
										<input type="hidden" id="addressId"
											value="${addressAndPersonaInformationExpand.address.id }">
										<div class="layui-input-inline">
											<select required lay-verify="required"
												val="${addressAndPersonaInformationExpand.address.provinceId}"
												name="gaddress.provinceId" id="prIdas" lay-filter="prIds" lay-search="">
												<option value="">选择省份</option>
											</select>
										</div>
										<div class="layui-input-inline">
											<select required lay-verify="required"
												val="${addressAndPersonaInformationExpand.address.cityId}" name="gaddress.cityId"
												id="cityId" lay-filter="cityIdSelect" lay-search="">
												<option value="">选择城市</option>
											</select>
										</div>
										<div class="layui-input-inline">
											<select required lay-verify="required"
												val="${addressAndPersonaInformationExpand.address.countyId}" name="gaddress.countyId"
												id="countyId" lay-filter="countyIdSelect" lay-search="">
												<option value="">选择县市</option>
											</select>
										</div>
										<div class="layui-input-inline">
											<select required lay-verify="required"
												val="${addressAndPersonaInformationExpand.address.countryId}" name="gaddress.countryId"
												id="countryId" lay-filter="countryIdSelect" lay-search="">
												<option value="">选择乡镇</option>
											</select>
										</div>
										<div class="layui-input-inline" style="margin-left: 120px;">
											<input required lay-verify="required" type="text"
												value="${addressAndPersonaInformationExpand.address.detailed}" name="gaddress.detailed"
												lay-verify="title" style="width: 350px;margin-left: 30px;margin-top:10px;"
												autocomplete="off" id="detailed" placeholder="请输入详细地址" class="layui-input">
										</div>
									</div>
								</div> --%>
						</form>
					</div>
					<div style="display: none;">
						<label>亲属联系人2：</label> <label>* 联系人姓名：</label>
						<input type="text" name="title" lay-verify="title"
							style="width: 350px;margin-left: 150px;margin-top: -35px;" autocomplete="off"
							placeholder="请输入联系人姓名" class="layui-input">
						<label>* 联系人电话：</label>
						<input type="text" name="title" lay-verify="title"
							style="width: 350px;margin-left: 150px;margin-top: -35px;" autocomplete="off"
							placeholder="请输入联系人电话" class="layui-input">
						<label>* 亲属关系：</label>
						<form class="layui-form" action="">
							<div class="layui-inline" style="margin-left: 150px;margin-top: -35px;">
								<div class="layui-input-inline">
									<select name="modules" lay-verify="required" lay-search="">
										<option value="">直接选择或搜索选择</option>
									</select>
								</div>
							</div>
						</form>
					</div>
					<div class="layui-inline" style="margin-left: 150px;margin-top: 20px">
						<button class="layui-btn info" onclick="updatePinfo('0')">修改</button>
						<button class="layui-btn uinfo" onclick="savesa('0')">保存</button>
					</div>
				</div>

				<!-- 健康管理 -->
				<div class="layui-tab-item layui-tab-item3">
					<label style="display:block; font-weight: bold;margin-left: 50px;margin-top: 20px;">个人状况数据</label>
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
					<div style="width: 100%;height: 2px;background-color: #E2E2E2;margin-top: 20px;"></div>

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
							<h5 class="layui-colla-title" style="font-weight: bold;">结论建议</h5>
							<div class="layui-colla-content">${personalInfofmationAndHealthRecordsExpand.healthRecords.conclusionSuggestion}</div>
						</div>
						<div class="layui-colla-item">
							<h5 class="layui-colla-title" style="font-weight: bold;">治疗效果评价</h5>
							<div class="layui-colla-content">${personalInfofmationAndHealthRecordsExpand.healthRecords.evaluate }</div>
						</div>
					</div>

				</div>
				<!--健康管理结束  -->
				<div class="layui-tab-item layui-tab-item4">
					<label style="font-weight:bold; margin-top:20px; margin-left:50px; display: block;">您的基础信息</label>

					<label>用户名：${user.username }</label> <label>绑定手机：${user.telephone }</label>
					<!-- <a href="#"
						style="margin-left:400px;margin-top:-25px; line-height:20px; text-decoration: none;display: block; ">修改</a> -->
					<div style="width: 100%;height: 2px;background-color: #E2E2E2;margin-top: 20px;"></div>
					<label style="font-weight:bold; margin-top:20px; margin-left:50px; display: block;">您的安全服务</label>
					<!-------------------------------- 身份验证 ---------------------------------->
					<i class="layui-icon"
						style="font-size: 30px;color: ${personalInfofmationAndHealthRecordsExpand.personalInformation.idCard eq ''?'red':'green' };margin-left: 100px;margin-top: 20px;display: block;">${personalInfofmationAndHealthRecordsExpand.personalInformation.idCard eq ''?'&#x1006;':'&#xe618;' }</i>
					<label style="font-size: 5px;margin-left: 105px;margin-top: -8px;">已完成</label> <label
						style="margin-left: 0;margin-top: -60px;">身份验证</label>
					<p style="width:350px; margin-left: 300px;margin-top: -25px;">用于提升账号的安全性和信任级别。认证后的有卖家记录的账号不能修改认证信息。</p>
					<a style="margin-left: 700px;margin-top: -35px;">查看</a>
					<div style="width: 100%;height: 1px;border-top: 1px dashed #E1E1E1;margin-top: 50px;"></div>
					<!-------------------------------- 登录密码 ---------------------------------->
					<i class="layui-icon"
						style="font-size: 30px;color: green;margin-left: 100px;margin-top: 20px;display: block;">&#xe618;</i>
					<label style="font-size: 5px;margin-left: 105px;margin-top: -8px;">已完成</label> <label
						style="margin-left: 0px;margin-top: -60px;">登录密码</label>
					<p style="width:350px; margin-left: 300px;margin-top: -25px;">安全性高的密码可以使账号更安全。建议您定期更换密码，且设置一个包含数字和字母，并长度超过6位以上的密码。</p>
					<a style="margin-left: 700px;margin-top: -35px;">查看</a>
					<div style="width: 100%;height: 1px;border-top: 1px dashed #E1E1E1;margin-top: 50px;"></div>

					<!-------------------------------- 绑定手机 ---------------------------------->
					<i class="layui-icon"
						style="font-size: 35px;color: ${user.telephone eq ''?'red':'green' };margin-left: 100px;margin-top: 20px;display: block;">${user.telephone eq ''?'&#x1006;':'&#xe618;' }</i>
					<label style="font-size: 5px;margin-left: 105px;margin-top: -8px;">未设置</label> <label
						style="margin-left:0px;margin-top: -60px;">绑定手机</label>
					<p style="width:350px; margin-left: 300px;margin-top: -25px;">绑定手机后，您即可享受淘宝丰富的手机服务，如手机找回密码等。</p>
					<a style="margin-left: 700px;margin-top: -35px;">设置</a>
				</div>

				<div class="layui-tab-item layui-tab-item5">
					<table class="layui-table">
						<colgroup>
							<col width="350">
							<col width="300">
							<col>
						</colgroup>
						<thead>
							<tr>
								<th>活动名称</th>
								<th>活动类型</th>
								<th>活动开始时间</th>
								<th>活动结束时间</th>
							</tr>
						</thead>
						<tbody id="activels">

						</tbody>
					</table>
				</div>

				<div class="layui-tab-item layui-tab-item6">
					<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
						<ul class="layui-tab-title">
							<li class="layui-this">所有订单</li>
							<li onclick="ordersType('4933fb74c84311e7aca65254002ec43c','#obligations')">待付款</li>
							<li onclick="ordersType('02cd8aeeccf111e7aca65254002ec43c','#pendingShipment')">待发货</li>
							<!-- 
							<li onclick="ordersType('1e3ea09ecd8f11e7aca65254002ec43c', '#gtbr')">待收货</li>
							<li onclick="ordersType('9f7aed4ccd9011e7aca65254002ec43c', '#evaluation')">待评价</li> -->
						</ul>
						<!-- <i class="glyphicon glyphicon-trash" style="margin-left: 850px;margin-top: -38px;"> </i> -->
						<!-- <a href="#" style="display:block; margin-left: 870px;margin-top: -40px;">订单回收站</a> -->
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
										</tr>
									</thead>
									<tbody id="typeStru">

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
											<th>操作</th>
										</tr>
									</thead>
									<tbody id="obligations">

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
										</tr>
									</thead>
									<tbody id="pendingShipment">

									</tbody>
								</table>
							</div>
							<%-- <div class="layui-tab-item">
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
									<tbody id="gtbr">
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
									<tbody id="evaluation">
									</tbody>
								</table>
							</div>
							<div class="layui-tab-item">6</div> --%>
						</div>
					</div>
				</div>
				<div class="layui-tab-item layui-tab-item7">
					<div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
						<ul class="layui-tab-title">
							<li class="layui-this ">我的积分</li>
							<li onclick="buyaddress()">收货地址</li>
						</ul>
						<div class="layui-tab-content">
							<div class="layui-tab-item layui-show">
								<div style="margin-top: 40px;margin-left: 20px">
									<span style="font-size: 30px;display: block;">
										我的积分：
										<i style="color: green;font-weight: bold;" id="Integral"></i>
									</span>
									<span style="font-size: 30px;display: block;margin-top: 20px">
										会员等级：
										<i style="color: green;font-weight: bold;" id="grade"></i>
									</span>
								</div>
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
											<th>收货人</th>
											<th>联系方式</th>
											<th>详细地址</th>
										</tr>
									</thead>
									<tbody id="buyaddtable">
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	<div style="clear: both;"></div>
	<div style="height: 200px;display: none;padding:20px; padding-top: 40px;" id="addre">
		<form id="addre" action="" class="layui-form">
			<div class="layui-form-item">
				<label class="layui-form-label" style="color:#000;width: 100px">收货人：</label>
				<div class="layui-input-block">
					<input type="text" name="username" lay-verify="required" placeholder="请输入" autocomplete="off"
						class="layui-input" id="addName" value="">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label" style="color:#000;width: 100px">联系方式：</label>
				<div class="layui-input-block">
					<input type="text" name="username" lay-verify="required" placeholder="请输入" autocomplete="off"
						class="layui-input" id="addPhone">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label" style="color: #000;width: 100px">收货地址：</label>
				<div class="layui-input-block">
					<div class="layui-input-inline">
						<select name="provinceId" id="addPor" lay-filter="addPor" lay-ignore
							style="width: 180px;height: 30px" onchange="changePor(this)">
							<option value="">请选择省</option>
						</select>
					</div>
					<div class="layui-input-inline">
						<select name="cityId" id="addcity" lay-ignore style="width: 180px;height: 30px">
							<option value="">请选择市</option>
						</select>
					</div>
					<div class="layui-input-inline">
						<select name="countyId" id="addcounty" lay-ignore style="width: 180px;height: 30px">
							<option value="">请选择区县</option>
						</select>
					</div>
					<div class="layui-input-inline">
						<select name="countryId" id="addcounty" lay-ignore style="width: 180px;height: 30px">
							<option value="">请选择乡镇</option>
						</select>
					</div>
					<div class="layui-input-inline">
						<input type="text" name="title" lay-verify="title" autocomplete="off" placeholder="请输入详细地址"
							class="layui-input" id="addDetailed">
					</div>
				</div>
			</div>
		</form>
	</div>

	<script>
		layui.use('form', function() {
			var form = layui.form;
		});
		layui.use('element', function() {
			var element = layui.element;
			//一些事件监听
			element.on('tab(demo)', function(data) {

			});
		});
		$(function() {

		});
	</script>

	<jsp:include page="../../offical_website/official-footer.jsp"></jsp:include>
</body>

</html>
