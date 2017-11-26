package com.brick.squad.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.pojo.User;
import com.brick.squad.pojo.VideoComment;
import com.brick.squad.service.VideoCommentService;
import com.brick.squad.util.Filter;

/**
 * 视频评论Controller
 * 
 * @author 吴文鑫
 * 
 */
@Controller
@RequestMapping("videoComment")
public class VideoCommentController {

	@Autowired
	@Qualifier("videoCommentService")
	private VideoCommentService videoCommentService;

	@RequestMapping("/videoCommentService")
	@ResponseBody
	public String insertvideoComment(VideoComment videoComment,
			HttpServletRequest request) throws Exception {
		videoComment = (VideoComment) Filter.filterObject(videoComment);
		User user = (User) request.getSession().getAttribute("user");
		if (user.getId() != null) {
			videoComment.setCommontUserId(user.getId());
		} else {
			return "fail";
		}
		if (videoComment.getBeCommentedId() != null) {
			videoCommentService.insertVideoComment(videoComment);
			return "success";
		} else {
			return "fail";
		}

	}
}
