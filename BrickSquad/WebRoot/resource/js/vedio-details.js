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