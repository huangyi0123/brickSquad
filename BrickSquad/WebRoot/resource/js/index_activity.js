function init(type) {

	$("#centent").children().hide();
	$("." + type).show();
	$("#menu").find('li').each(function() {
		var val = $(this).attr('val');
		if (val == type) {
			$(this).attr('class', 'layui-nav-item layui-this');
		}
	});
	$("#menu").find('li').click(function() {
		var cls = "." + $(this).attr('val');
		$("#centent").children().hide();
		$(cls).show();

	});
}
function getTopQualityCourselistMovieByPagination(curentPage, pageSize) {
	var topQualityCourselistMovieTotal = $("#topQualityCourselistMovieTotal")
			.val();
	if (curentPage < 1) {
		layui.use('layer', function() {
			var layer = layui.layer;
			layer.msg("已经是第一页");
		});
	} else if (curentPage > topQualityCourselistMovieTotal) {
		layui.use('layer', function() {
			var layer = layui.layer;
			layer.msg("已经最后一页");
		});
	} else {
		layui
				.use(
						'layer',
						function() {
							var layer = layui.layer;
							var index = layer.load(2, {
								time : 10 * 1000
							}); // 又换了种风格，并且设定最长等待10秒
							$
									.ajax({
										url : 'activities/getActivitieslistMovieByPagination',
										data : {
											'curentPage' : curentPage,
											'pageSize' : pageSize,
											'movieTypeId' : "fc4c57d6d25911e7880a5254002ec43c"
										},
										success : function(data) {
											// 关闭
											layer.close(index);
											data = JSON.parse(data);
											var item = data[0].data;
											var n = data[0].totals;
											n = Math.ceil(n / pageSize);
											$("#topQualityCourselistMovie")
													.html('');
											$("#topQualityCourselistMoviepager")
													.html('');
											if (item.length == 0) {
												var h = '<label>没有查到数据，刷新页面重试！</label>';
												$("#topQualityCourselistMovie")
														.append(h);
											} else {
												$(item)
														.each(
																function() {
																	var html = '<input id="topQualityCourselistMovieTotal" type="hidden" value="'
																			+ n
																			+ '">'
																			+ '<div class="layui-col-xs4 layui-col-sm12 layui-col-md4">'
																			+ '<a href="common/toVedio_Details?id='
																			+ this.id
																			+ '"class="act_bg"><img alt=""src="'+this.imgpath+'">'
																			+ '<img class="act_play" alt="" src="resource/image/play.png">'
																			+ '</a><label style="font-size: 18px;">【'
																			+ this.name
																			+ '】</label> <label'
																			+ 'style="margin-left: 210px;margin-top: -15px;"><font'
																			+ 'style="color: #F7A01F;">'
																			+ this.clickAmount
																			+ '</font>人学习</label></div>';
																	$(
																			"#topQualityCourselistMovie")
																			.append(
																					html);

																});
												var html1 = '<label'
														+ 'style="color: #909EBF;margin-top: 20px;margin-right: 50px;font-size: 0.8em;letter-spacing: 0px;margin-left: 10px;">第'
														+ curentPage
														+ '页/ 共'
														+ n
														+ '页</label><label'
														+ 'style="color: #909EBF;margin-top: 20px;font-size: 0.8em;letter-spacing: 0px;margin-left: 80px;"><a href="javaScript:;" onclick="getTopQualityCourselistMovieByPagination('
														+ (curentPage - 1)
														+ ','
														+ pageSize
														+ ')"><span  style="width:80px;"></span><<上一页</a></label>'
														+ '<label style="color: #909EBF;margin-top: 20px;font-size: 0.8em;letter-spacing: 0px;margin-left: 100px;"><a href="javaScript:;" onclick="getTopQualityCourselistMovieByPagination('
														+ (curentPage + 1)
														+ ','
														+ pageSize
														+ ')">下一页>></a></label>';
												$(
														"#topQualityCourselistMoviepager")
														.append(html1);
											}
										},
										error : function(e) {
											// 关闭
											layer.close(index);
											layer.msg("接口异常，稍后重试！");
										}
									});
						});
	}
}
function getdieteticHealthlistMovieByPagination(curentPage, pageSize) {
	var dieteticHealthlistMovieTotal = $("#dieteticHealthlistMovieTotal").val();
	if (curentPage < 1) {
		layui.use('layer', function() {
			var layer = layui.layer;
			layer.msg("已经是第一页");
		});
	} else if (curentPage > dieteticHealthlistMovieTotal) {
		layui.use('layer', function() {
			var layer = layui.layer;
			layer.msg("已经最后一页");
		});
	} else {
		layui
				.use(
						'layer',
						function() {
							var layer = layui.layer;
							var index = layer.load(2, {
								time : 10 * 1000
							}); // 又换了种风格，并且设定最长等待10秒
							$
									.ajax({
										url : 'activities/getActivitieslistMovieByPagination',
										data : {
											'curentPage' : curentPage,
											'pageSize' : pageSize,
											'movieTypeId' : "10ed2648d25a11e7880a5254002ec43c"
										},
										success : function(data) {
											// 关闭
											layer.close(index);
											data = JSON.parse(data);
											var item = data[0].data;
											var n = data[0].totals;
											n = Math.ceil(n / pageSize);
											$("#dieteticHealthlistMovie").html(
													'');
											$("#dieteticHealthlistMoviepager")
													.html('');
											if (item.length == 0) {
												var h = '<label>没有查到数据，刷新页面重试！</label>';
												$("#dieteticHealthlistMovie")
														.append(h);
											} else {
												$(item)
														.each(
																function() {
																	var html = '<input id="dieteticHealthlistMovieTotal" type="hidden" value="'
																			+ n
																			+ '">'
																			+ '<div class="layui-col-xs4 layui-col-sm12 layui-col-md4">'
																			+ '<a href="common/toVedio_Details?id='
																			+ this.id
																			+ '"class="act_bg"><img alt=""src="'+this.imgpath+'">'
																			+ '<img class="act_play" alt="" src="resource/image/play.png">'
																			+ '</a><label style="font-size: 18px;">【'
																			+ this.name
																			+ '】</label> <label'
																			+ 'style="margin-left: 210px;margin-top: -15px;"><font'
																			+ 'style="color: #F7A01F;">'
																			+ this.clickAmount
																			+ '</font>人学习</label></div>';
																	$(
																			"#dieteticHealthlistMovie")
																			.append(
																					html);

																});
												var html1 = '<label'
														+ 'style="color: #909EBF;margin-top: 20px;margin-right: 50px;font-size: 0.8em;letter-spacing: 0px;margin-left: 10px;">第'
														+ curentPage
														+ '页/ 共'
														+ n
														+ '页</label><label'
														+ 'style="color: #909EBF;margin-top: 20px;font-size: 0.8em;letter-spacing: 0px;margin-left: 80px;"><a href="javaScript:;" onclick="getdieteticHealthlistMovieByPagination('
														+ (curentPage - 1)
														+ ','
														+ pageSize
														+ ')"><span  style="width:80px;"></span><<上一页</a></label>'
														+ '<label style="color: #909EBF;margin-top: 20px;font-size: 0.8em;letter-spacing: 0px;margin-left: 100px;"><a href="javaScript:;" onclick="getdieteticHealthlistMovieByPagination('
														+ (curentPage + 1)
														+ ','
														+ pageSize
														+ ')">下一页>></a></label>';
												$(
														"#dieteticHealthlistMoviepager")
														.append(html1);
											}
										},
										error : function(e) {
											// 关闭
											layer.close(index);
											layer.msg("接口异常，稍后重试！");
										}
									});
						});
	}
}
function getsportsHealthlistMovieByPagination(curentPage, pageSize) {
	var sportsHealthlistMovieTotal = $("#sportsHealthlistMovieTotal").val();
	if (curentPage < 1) {
		layui.use('layer', function() {
			var layer = layui.layer;
			layer.msg("已经是第一页");
		});
	} else if (curentPage > sportsHealthlistMovieTotal) {
		layui.use('layer', function() {
			var layer = layui.layer;
			layer.msg("已经最后一页");
		});
	} else {
		layui
				.use(
						'layer',
						function() {
							var layer = layui.layer;
							var index = layer.load(2, {
								time : 10 * 1000
							}); // 又换了种风格，并且设定最长等待10秒
							$
									.ajax({
										url : 'activities/getActivitieslistMovieByPagination',
										data : {
											'curentPage' : curentPage,
											'pageSize' : pageSize,
											'movieTypeId' : "283b93f2d25a11e7880a5254002ec43c"
										},
										success : function(data) {
											console.log(data);
											// 关闭
											layer.close(index);
											data = JSON.parse(data);
											var item = data[0].data;
											var n = data[0].totals;
											n = Math.ceil(n / pageSize);
											$("#sportsHealthlistMovie")
													.html('');
											$("#sportsHealthlistMoviepager")
													.html('');
											if (item.length == 0) {
												var h = '<label>没有查到数据，刷新页面重试！</label>';
												$("#sportsHealthlistMovie")
														.append(h);
											} else {
												$(item)
														.each(
																function() {
																	var html = '<input id="sportsHealthlistMovieTotal" type="hidden" value="'
																			+ n
																			+ '">'
																			+ '<div class="layui-col-xs4 layui-col-sm12 layui-col-md4">'
																			+ '<a href="common/toVedio_Details?id='
																			+ this.id
																			+ '"class="act_bg"><img alt=""src="'+this.imgpath+'">'
																			+ '<img class="act_play" alt="" src="resource/image/play.png">'
																			+ '</a><label style="font-size: 18px;">【'
																			+ this.name
																			+ '】</label> <label'
																			+ 'style="margin-left: 210px;margin-top: -15px;"><font'
																			+ 'style="color: #F7A01F;">'
																			+ this.clickAmount
																			+ '</font>人学习</label></div>';
																	$(
																			"#sportsHealthlistMovie")
																			.append(
																					html);

																});
												var html1 = '<label'
														+ 'style="color: #909EBF;margin-top: 20px;margin-right: 50px;font-size: 0.8em;letter-spacing: 0px;margin-left: 10px;">第'
														+ curentPage
														+ '页/ 共'
														+ n
														+ '页</label><label'
														+ 'style="color: #909EBF;margin-top: 20px;font-size: 0.8em;letter-spacing: 0px;margin-left: 80px;"><a href="javaScript:;" onclick="getsportsHealthlistMovieByPagination('
														+ (curentPage - 1)
														+ ','
														+ pageSize
														+ ')"><span  style="width:80px;"></span><<上一页</a></label>'
														+ '<label style="color: #909EBF;margin-top: 20px;font-size: 0.8em;letter-spacing: 0px;margin-left: 100px;"><a href="javaScript:;" onclick="getsportsHealthlistMovieByPagination('
														+ (curentPage + 1)
														+ ','
														+ pageSize
														+ ')">下一页>></a></label>';
												$("#sportsHealthlistMoviepager")
														.append(html1);
											}
										},
										error : function(e) {
											// 关闭
											layer.close(index);
											layer.msg("接口异常，稍后重试！");
										}
									});
						});
	}
}
function getselfCultivationlistMovieByPagination(curentPage, pageSize) {
	var selfCultivationlistMovieTotal = $("#selfCultivationlistMovieTotal")
			.val();
	if (curentPage < 1) {
		layui.use('layer', function() {
			var layer = layui.layer;
			layer.msg("已经是第一页");
		});
	} else if (curentPage > selfCultivationlistMovieTotal) {
		layui.use('layer', function() {
			var layer = layui.layer;
			layer.msg("已经最后一页");
		});
	} else {
		layui
				.use(
						'layer',
						function() {
							var layer = layui.layer;
							var index = layer.load(2, {
								time : 10 * 1000
							}); // 又换了种风格，并且设定最长等待10秒
							$
									.ajax({
										url : 'activities/getActivitieslistMovieByPagination',
										data : {
											'curentPage' : curentPage,
											'pageSize' : pageSize,
											'movieTypeId' : "3fcb778ad25a11e7880a5254002ec43c"
										},
										success : function(data) {
											// 关闭
											layer.close(index);
											data = JSON.parse(data);
											var item = data[0].data;
											var n = data[0].totals;
											n = Math.ceil(n / pageSize);
											$("#selfCultivationlistMovie")
													.html('');
											$("#c").html('');
											if (item.length == 0) {
												var h = '<label>没有查到数据，刷新页面重试！</label>';
												$("#selfCultivationlistMovie")
														.append(h);
											} else {
												$(item)
														.each(
																function() {
																	var html = '<input id="selfCultivationlistMovieTotal" type="hidden" value="'
																			+ n
																			+ '">'
																			+ '<div class="layui-col-xs4 layui-col-sm12 layui-col-md4">'
																			+ '<a href="common/toVedio_Details?id='
																			+ this.id
																			+ '"class="act_bg"><img alt=""src="'+this.imgpath+'">'
																			+ '<img class="act_play" alt="" src="resource/image/play.png">'
																			+ '</a><label style="font-size: 18px;">【'
																			+ this.name
																			+ '】</label> <label'
																			+ 'style="margin-left: 210px;margin-top: -15px;"><font'
																			+ 'style="color: #F7A01F;">'
																			+ this.clickAmount
																			+ '</font>人学习</label></div>';
																	$(
																			"#selfCultivationlistMovie")
																			.append(
																					html);

																});

												var html1 = '<label'
														+ 'style="color: #909EBF;margin-top: 20px;margin-right: 50px;font-size: 0.8em;letter-spacing: 0px;margin-left: 10px;">第'
														+ curentPage
														+ '页/ 共'
														+ n
														+ '页</label><label'
														+ 'style="color: #909EBF;margin-top: 20px;font-size: 0.8em;letter-spacing: 0px;margin-left: 80px;"><a href="javaScript:;" onclick="getselfCultivationlistMovieByPagination('
														+ (curentPage - 1)
														+ ','
														+ pageSize
														+ ')"><span  style="width:80px;"></span><<上一页</a></label>'
														+ '<label style="color: #909EBF;margin-top: 20px;font-size: 0.8em;letter-spacing: 0px;margin-left: 100px;"><a href="javaScript:;" onclick="getselfCultivationlistMovieByPagination('
														+ (curentPage + 1)
														+ ','
														+ pageSize
														+ ')">下一页>></a></label>';
												$(
														"#selfCultivationlistMoviepager")
														.append(html1);
											}
										},
										error : function(e) {
											// 关闭
											layer.close(index);
											layer.msg("接口异常，稍后重试！");
										}
									});
						});
	}
}
