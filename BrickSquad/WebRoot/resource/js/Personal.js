/**
 * 上传头像
 */
function uploadImage() {
	// 头像图片信息
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
							// 上传文件的文件流是无法被序列化并传递的。
							// 不过如今主流浏览器都开始支持一个叫做FormData的对象，有了这个FormData，我们就可以轻松地使用Ajax方式进行文件上传了。
							var formData = new FormData($("#formFileData")[0]);
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
																		window.location.href = "common/toPersonal";
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
												layui.use('layer', function() {
													var layer = layui.layer;
													var msg = '调用服务器接口异常，请重试！';
													layer.msg(msg);
												});
											}
										});
							} else {
								$(".userPicPath").attr("src",
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

}
function updatePinfo(n) {
	$(".info").hide();
	$(".uinfo").show();
	var birthday = $("#birthdayId").attr('val');
	$("#birthdayId").val(Format(new Date(birthday), "yyyy-MM-dd"));
	var pgengender = $("#ipgender").html();
	$("#perGender").find("input[value='" + pgengender + "']").attr('checked',
			'true');
	layui.use('form', function() {
		var form = layui.form;
		$.ajax({
			url : 'region/findRegionByLevel?level=1',
			success : function(data) {
				data = JSON.parse(data);
				findAll(data, "#prIdas");
				form.render('select', 'prIds');
			}

		});
		var porId = $("#prIdas").attr('val');
		var cityId = $('#cityId').attr('val');
		var countyId = $('#countyId').attr('val');
		$.ajax({
			url : 'address/findRegionsByParentId?pid=' + porId,
			success : function(data) {
				data = JSON.parse(data);
				findAll(data, "#cityId");
				form.render('select', 'cityIdSelect');
			}
		});
		$.ajax({
			url : 'address/findRegionsByParentId?pid=' + cityId,
			success : function(data) {
				data = JSON.parse(data);
				findAll(data, "#countyId");
				form.render('select', 'countyIdSelect');
			}
		});
		$.ajax({
			url : 'address/findRegionsByParentId?pid=' + countyId,
			success : function(data) {
				data = JSON.parse(data);
				findAll(data, "#countryId");
				form.render('select', 'countryIdSelect');
			}
		});
		form.on('select(prIds)', function(data) {
			$.ajax({
				url : 'address/findRegionsByParentId?pid=' + data.value,
				success : function(result) {
					result = JSON.parse(result);
					$("#cityId").empty();
					$("#cityId").append('<option value="">选择城市</option>');
					$("#countyId").empty();
					$("#countyId").append('<option value="">选择县市</option>');
					$("#countryId").empty();
					$("#countryId").append('<option value="">选择乡镇</option>');
					findAll(result, "#cityId");
					form.render('select', 'cityIdSelect');
				}
			});
		});
		form.on('select(cityIdSelect)', function(data) {
			$.ajax({
				url : 'address/findRegionsByParentId?pid=' + data.value,
				success : function(result) {
					result = JSON.parse(result);
					$("#countyId").empty();
					$("#countyId").append('<option value="">选择县市</option>');
					$("#countryId").empty();
					$("#countryId").append('<option value="">选择乡镇</option>');
					findAll(result, "#countyId");

					console.log(result);
					form.render('select', 'countyIdSelect');
				}
			});
		});
		form.on('select(countyIdSelect)', function(data) {
			$.ajax({
				url : 'address/findRegionsByParentId?pid=' + data.value,
				success : function(result) {
					result = JSON.parse(result);
					$("#countryId").empty();
					$("#countryId").append('<option value="">选择乡镇</option>');
					findAll(result, "#countryId");
					form.render('select', 'countryIdSelect');
				}
			});
		});
		$.ajax({
			url : "type/findTypeByParentId?parentId=qinshuguanxi",
			success : function(data) {
				data = JSON.parse(data);
				findAll(data, "#qsgx");
			}
		});

	});

}
function savesa(n) {
	if (n == '1') {
		$(".uinfo").hide();
		$(".info").show();
	} else {
		var perName = $("#perName").val();
		var perGender = $("#perGender").find('input:radio[name="sex"]:checked')
				.val();
		var idcard = $("#idcard").val();
		var birthday = $("#birthdayId").val();
		var provinceId = $("#prIdas").val();
		var cityId = $("#cityId").val();
		var countyId = $("#countyId").val();
		var countryId = $("#countryId").val();
		var detailed = $("#detailed").val();
		console.log(detailed);
		// 获取亲属信息
		var relativesId = $("#relativesId").val();
		var gName = $("#gName").val();
		var gphone = $("#gphone").val();
		var gtype = $("#qsgx").val();
		$.ajax({
			url : 'personalInformation/updaeInforMation',
			type : 'POST',
			data : $("#perinformation").serialize(),
			success : function(result) {
				result = JSON.parse(result);
				console.log(result);
				$("#ipname").html(perName);
				$("#ipgender").html(perGender);
				$("#ipidcard").html(idcard);
				$("#birthday").html(birthday);
				$("#addressId").html(result[0].addressId);
				$("#prIdas").attr('val', provinceId);
				$("#cityId").attr('val', cityId);
				$("#countyId").attr('val', countyId);
				$("#countryId").attr('val', countryId);
				$("#addressqw").html(result[0].address);
				$("#gxName").html(gName);
				$("#gxphone").html(gphone);
				$("#qsgx").val(gtype);
				$("#gxtype").html(result[0].relativesName);
				$("#relativesId").val(result[0].relativesId);
				$(".uinfo").hide();
				$(".info").show();
			}
		});
	}
}
function orders() {
	$("#person").find('li').click(
			function() {
				var html = $(this).html();
				if (html == "订单管理") {
					$.ajax({
						url : 'orders/getOrders',
						success : function(data) {
							$("#typeStru").html("");
							data = JSON.parse(data);
							var html = "";
							$(data).each(
									function() {
										html = html + "<tr>" + "<td>"
												+ this.aname + "</td>" + "<td>"
												+ this.price + "</td>" + "<td>"
												+ this.number + "</td>"
												+ "<td>" + this.typeName
												+ "</td>"
												+ "<td>人生就像是一场修行</td>"
												+ "</tr>";
									});
							$("#typeStru").html(html);
						}
					});
				}
			});
}
function ordersType(id, type) {
	$
			.ajax({
				url : 'orders/getOrders?typeId=' + id,
				success : function(data) {
					$(type).html("");
					data = JSON.parse(data);
					var html = "";
					$(data)
							.each(
									function() {
										var opr = "";
										if (type == '#obligations') {
											opr = "<td><a href='variableProduct/toconfirm_order?ordersId="
													+ this.oId
													+ "'>去支付</a></td>";
										}
										html = html + "<tr>" + "<td>"
												+ this.aname + "</td>" + "<td>"
												+ this.price + "</td>" + "<td>"
												+ this.number + "</td>"
												+ "<td>" + this.typeName
												+ "</td>" + opr
										"</tr>";
									});
					$(type).html(html);
				}
			});
}
function onshop() {
	$.ajax({
		url : 'buyers/getBuyGrade',
		success : function(data) {
			data = JSON.parse(data);
			console.log(data[0].state);
			if (data[0].state == 'success') {
				$("#Integral").html(data[0].Integral);
				$("#grade").html(data[0].grade);
			}
		}
	});
}
function buyaddress() {
	console.log("123");
	$
			.ajax({
				url : 'buyers/getBuyAddress',
				success : function(result) {
					result = JSON.parse(result);
					console.log(result);
					$("#buyaddtable").html('');
					$(result)
							.each(
									function() {
										var html = '<tr>'
												+ '<th>'
												+ this.consigneeName
												+ '</th>'
												+ '<th>'
												+ this.consigneePhone
												+ '</th>'
												+ '<th>'
												+ this.detailed
												+ '</th>'
												+ '<th style="text-align: center;">'
												+ '<a title="修改" href="javascript:;"><i class="fa fa-pencil-square-o"></i></a>'
												+'&nbsp;|&nbsp;'
												+ '<a title="删除" href="javascript:;"><i class="fa fa-trash-o"></i></a>'
												+ '</th>' + '</tr>';
										$("#buyaddtable").append(html);
									});
				}
			});
}