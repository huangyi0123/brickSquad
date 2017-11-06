/**
 * 上传头像
 */
function uploadImage() {
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

}
function updatePinfo() {
	$(".info").hide();
	$(".uinfo").show();
}
function perinfo() {
	
}