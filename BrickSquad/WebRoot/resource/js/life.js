function openOnlineParticipation() {
	$("#centent").children().hide();
	$("#menu").find('li').each(function() {
		$(this).attr('class', 'layui-nav-item');
	});
	$(".parti-online").show();
	layui.use('form', function() {
		var form = layui.form, layer = layui.layer;
		form.render();
	});
}

function toSubmitForm() {
	layui
			.use(
					'layer',
					function() {
						var layer = layui.layer;
						var userName = $("#userName").val();
						var phone = $("#phone").val();
						var age = $("#age").val();
						var email = $("#email").val();
						if (userName == "") {
							layer.msg("姓名不能为空！");
						} else if (!userName.match(/^[\u4e00-\u9fa5]+$/)) {
							layer.msg("名字必须为汉字!");
						} else if (phone == "") {
							layer.msg("手机号码不能为空!");
						} else if ((age != "")
								&& (!(age > 1) || !(age < 255) || (!(age
										.match(/^[0-9]+.?[0-9]*$/))))) {
							layer.msg("年龄格式不符合要求!");
						} else if (age == "") {
							layer.msg("年龄不能为空!");
						} else if (!(phone == "")
								&& (!(phone.match(/^1[34578]\d{9}$/)))) {
							layer.msg("手机号码格式不符合!");
						} else if ((!(email == "") && !(email
								.match(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/)))) {
							layer.msg("邮箱格式不符合!");
						} else {
							var index = layer.load(2, {
								time : 10 * 1000
							}); // 又换了种风格，并且设定最长等待10秒
							$
									.ajax({
										url : 'onlineParticipationInfo/userInsertOnlineParticipationInfo',
										type : 'POST',
										data : $("#onlineParticipationInfo")
												.serialize(),
										success : function(result) {
											// 关闭
											layer.close(index);
											if (result == "fail") {
												layer.msg("请填写正确的数据格式！");
											} else if (result == "success") {
												layer.msg("提交成功！");
												$("#centent").children().hide();
												$(".aboutus-intro").show();
											} else {
												layer.msg("接口异常，稍后重试！");
											}
										},
										error : function(e) {
											layer.msg("接口异常，稍后重试！");
										}
									});
						}
					});
}
function NutritionalDiet(curentPage, pageSize) {
	$
			.ajax({
				url : 'news/getNutritionalDietList',
				data : {
					'curentPage' : curentPage,
					'pageSize' : pageSize
				},
				success : function(data) {
					data = JSON.parse(data);
					console.log(data);
					var item = data[0].data;
					var n = data[0].totals;
					n = Math.ceil(n / pageSize);
					console.log(n);
					$("#NutritionalDiet").html('');
					$(item)
							.each(
									function() {
										var html = '<li>'
												+ '<a href="javascript:;" onclick="NutritionalDietInfo(\''
												+ this.id + '\')">'
												+ '<h2 class="tesat">'
												+ this.title + '</h2>' + '</a>'
												+ '</li>';
										$("#NutritionalDiet").append(html);
									});
					$("#pager").html('');
					var por = 0;
					var next = 0;
					if (curentPage == 1) {
						por = 1;
					} else {
						por = curentPage - 1;
					}
					if (curentPage == n) {
						next = n;
					} else {
						next = curentPage + 1;
					}
					$("#pager").append(
							'<li onclick="NutritionalDiet(' + (curentPage - 1)
									+ ',' + pageSize + ')">上一页</li>');
					for (var int = 1; int <= n; int++) {
						if (curentPage == int) {
							$("#pager").append(
									'<li style="color:red" onclick="NutritionalDiet('
											+ int + ',' + pageSize + ')">'
											+ int + '</li>');
						} else {
							$("#pager").append(
									'<li onclick="NutritionalDiet(' + int + ','
											+ pageSize + ')">' + int + '</li>');
						}

					}
					$("#pager").append(
							'<li onclick="NutritionalDiet(' + (curentPage + 1)
									+ ',' + pageSize + ')">下一页</li>');
				}
			});
}
function NutritionalDietInfo(o) {
	$.ajax({
		url : 'news/getNutritionalDietInfo?id=' + o,
		success : function(data) {
			data = JSON.parse(data);
			console.log(data);
			$('.pager').hide();
			$('.aboutus-intro').hide();
			$('.yyss').show();
			$('#yyss_title').html(data.title);
			$("#yyss_name").html(data.name);
			$('#yyss_content').html(data.content);
			$("#yyss_date").html(data.postTime);
		}
	});
}
function userVedioList(curentPage, pageSize) {
	$
			.ajax({
				url : 'userVedio/getUserVedio',
				data : {
					'curentPage' : curentPage,
					'pageSize' : pageSize
				},
				success : function(data) {
					data = JSON.parse(data);
					console.log(data.data);
					var item = data.data;
					var n = data.totals;
					n = Math.ceil(n / pageSize);
					$("#userVedio").html("");
					$(item)
							.each(
									function() {
										var html = '<li >'
												+ '<a href="javascript:;" onclick="userVedioInfo(\''
												+ this.id + '\')">'
												+ '<img src="' + this.imgpath
												+ '">' + '<h1>' + this.title
												+ '</h1>' + '</a>' + '</li>';
										$("#userVedio").append(html);
									});
					$("#pager").html('');
					var por = 0;
					var next = 0;
					if (curentPage == 1) {
						por = 1;
					} else {
						por = curentPage - 1;
					}
					if (curentPage == n) {
						next = n;
					} else {
						next = curentPage + 1;
					}
					$("#pager").append(
							'<li onclick="userVedioList(' + (curentPage - 1)
									+ ',' + pageSize + ')">上一页</li>');
					for (var int = 1; int <= n; int++) {
						if (curentPage == int) {
							$("#pager").append(
									'<li style="color:red" onclick="userVedioList('
											+ int + ',' + pageSize + ')">'
											+ int + '</li>');
						} else {
							$("#pager").append(
									'<li onclick="userVedioList(' + int + ','
											+ pageSize + ')">' + int + '</li>');
						}

					}
					$("#pager").append(
							'<li onclick="userVedioList(' + (curentPage + 1)
									+ ',' + pageSize + ')">下一页</li>');
				}
			});
}
function userVedioInfo(id) {
	$.ajax({
		url : 'userVedio/findUserVedioById?id=' + id,
		success : function(data) {
			data = JSON.parse(data);
			$('.pager').hide();
			$('.aboutus-use').hide();
			$(".yhsp").show();
			$("#yhsp_title").html(data.title);
			$("#yhsp_user").html(data.userId);
			$("#yhsp_vedio").html('<embed style="margin-top: 20px;text-align: center;" width="100%" height="350px" src="'+data.vediopath+'">');
			$("#yhsp_postTime").html(data.posttime);
		}
	});
}