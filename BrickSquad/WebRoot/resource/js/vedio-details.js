function submitComment(videoId, userId) {
	layui.use('layer', function() {
		var layer = layui.layer;
		// 去掉首尾空格
		var content = $.trim($("#comment_content").val());
		alert(content.length);
		if (content == "") {
			layer.msg("评论不能为空，请先输入您的精彩评论！");
		} else if (content.length>250) {
			layer.msg("评论内容不能超过250个汉字！");
		} else if (userId == "") {
			layer.msg("未登录不能提交评论，请先登录！");
		} else {
			var index = layer.load(2, {
				time : 10 * 1000
			}); // 又换了种风格，并且设定最长等待10秒
			$.ajax({
				url : 'videoComment/videoCommentService',
				type : "post",
				data : {
					"beCommentedId" : videoId,
					"content" : content
				},
				success : function(data) {
					// 关闭
					layer.close(index);
					if (data == "success") {
						layer.msg("您的精彩评论提交成功！");
						window.location.reload();
					} else {
						layer.msg("提交失败，稍后重试！");
					}

				},
				error : function(e) {
					// 关闭
					layer.close(index);
					layer.msg("接口异常，稍后重试！");
				}
			});
		}
	});
}
function toPraiseAmout(id) {
	layui.use('layer', function() {
		var layer = layui.layer;
		$.ajax({
			url : 'videoComment/updatePraiseAmout?id=' + id,
			success : function(data) {
				if (data == "success") {
					var praiseAmout = $("#praiseAmoutId").html();
					praiseAmout = parseInt(praiseAmout);
					praiseAmout = praiseAmout + 1;
					$("#praiseAmoutId").html(praiseAmout);
				} else if (data == "fail") {
					layer.msg("接口异常，稍后重试！");
				}
			},
			error : function(e) {
				layer.msg("接口异常，稍后重试！");
			}
		});
	});
}
function tobelittleAmout(id) {
	layui.use('layer', function() {
		var layer = layui.layer;
		$.ajax({
			url : 'videoComment/updateBelittleAmout?id=' + id,
			success : function(data) {
				if (data == "success") {
					var belittleAmout = $("#belittleAmoutId").html();
					belittleAmout = parseInt(belittleAmout);
					belittleAmout = belittleAmout + 1;
					$("#belittleAmoutId").html(belittleAmout);
				} else if (data == "fail") {
					layer.msg("接口异常，稍后重试！");
				}
			},
			error : function(e) {
				layer.msg("接口异常，稍后重试！");
			}
		});
	});
}
function getVideoCommentByPagination(curentPage, pageSize) {
	var commentTotal = $("#commentTotal").val();
	if (curentPage < 1) {
		layui.use('layer', function() {
			var layer = layui.layer;
			layer.msg("已经是第一页");
		});
	} else if (curentPage > commentTotal) {
		layui.use('layer', function() {
			var layer = layui.layer;
			layer.msg("已经最后一页");
		});
	} else {
		var beCommentedId = $("#beCommentedId").val();
		$
				.ajax({
					url : 'videoComment/getVideoCommentByPagination',
					data : {
						'curentPage' : curentPage,
						'pageSize' : pageSize,
						'beCommentedId' : beCommentedId
					},
					success : function(data) {
						data = JSON.parse(data);
						var item = data[0].data;
						var n = data[0].totals;
						n = Math.ceil(n / pageSize);
						$("#VideoComment").html('');
						$("#pager").html('');
						if (item == 0) {
							var html = '<label class="vedio_comm_cont_name">还没有评论，期待您的精彩评论！</label>';
							$("#VideoComment").append(html);
						} else {
							$(item)
									.each(
											function() {
												var html = '<label style="margin-top: 30px;">最新评论<input id="commentTotal" type="hidden" value="'
														+ n
														+ '"><font'
														+ 'style="color: #909EBF;size: 0.6em;letter-spacing: 0px;font-stretch: normal;"></font></label>'
														+ '<label style="margin-top: 30px;margin-left: 30px;float:right;">全部评论<font style="float:right;color: #909EBF;size: 0.6em;letter-spacing: 0px;font-stretch: normal;">'
														+ '('
														+ n
														+ ')</font></label>'
														+ '<div style="width: 100%;border: 1px solid #E3E7E8;margin-top: 10px;"></div><img style="display: block;" src="'
														+ this.userPicPath
														+ '">'
														+ '<label class="vedio_comm_cont_name">'
														+ this.userName
														+ '</label> '
														+ '<label class="vedio_comm_cont_time">'
														+ this.commentTime
														+ '</label>'
														+ '<p class="vedio_comm_cont_conts">'
														+ this.content
														+ '</p>'
														+ '<div style="display:block;	margin-top:-10px;margin-left: 60px;position: relative;">'
														+ '<a href="javaScript:;" onclick="toPraiseAmout(\''
														+ this.id
														+ '\')"> <i class="layui-icon praise">&#xe6c6;</i></a> <font>'
														+ '<span id="praiseAmoutId">'
														+ this.praiseAmout
														+ '</span>'
														+ '</font> '
														+ '<a href="javaScript:;" onclick="tobelittleAmout(\''
														+ this.id
														+ '\')"> <i class="layui-icon stamp">&#xe6c5;</i></a> <font>'
														+ '<span id="belittleAmoutId">'
														+ this.belittleAmout
														+ '</span>' + '</font>';

												$("#VideoComment").append(html);
												var html1 = '<label'
														+ 'style="color: #909EBF;margin-top: 20px;margin-right: 50px;font-size: 0.8em;letter-spacing: 0px;margin-left: 10px;">第'
														+ curentPage
														+ '条/ 共'
														+ n
														+ '条</label><label'
														+ 'style="color: #909EBF;margin-top: 20px;font-size: 0.8em;letter-spacing: 0px;margin-left: 80px;"><a href="javaScript:;" onclick="getVideoCommentByPagination('
														+ (curentPage - 1)
														+ ','
														+ pageSize
														+ ')"><<上一条</a></label>'
														+ '<label style="color: #909EBF;margin-top: 20px;font-size: 0.8em;letter-spacing: 0px;margin-left: 100px;"><a href="javaScript:;" onclick="getVideoCommentByPagination('
														+ (curentPage + 1)
														+ ','
														+ pageSize
														+ ')">下一条>></a></label>'
														+ '<div style="width: 100%;border: 1px solid #E3E7E8;margin-top: 10px;"></div>';
												$("#pager").append(html1);
											});
						}

					},
					error : function(e) {
						// 关闭
						layer.close(index);
						layer.msg("接口异常，稍后重试！");
					}
				});
	}

}