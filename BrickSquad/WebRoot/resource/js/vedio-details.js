function submitComment(videoId, userId) {
	layui.use('layer', function() {
		var layer = layui.layer;
		// 去掉首尾空格
		var content = $.trim($("#comment_content").val());
		if (content == "") {
			layer.msg("评论不能为空，请先输入您的精彩评论！");
		} else if (userId == "") {
			layer.msg("未登录不能提交评论，请先登录！");
		} else {
			$.ajax({
				url : 'videoComment/videoCommentService',
				type : "post",
				data : {
					"beCommentedId" : videoId,
					"content" : content
				},
				success : function(data) {
					if (data == "success") {
						layer.msg("您的精彩评论提交成功！");
						window.location.reload();
					} else {
						layer.msg("提交失败，稍后重试！");
					}

				},
				error : function(e) {
					layer.msg("接口异常，稍后重试！");
				}
			});
		}
	});
}