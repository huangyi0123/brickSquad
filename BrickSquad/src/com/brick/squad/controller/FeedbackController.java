package com.brick.squad.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.pojo.Feedback;
import com.brick.squad.pojo.User;
import com.brick.squad.service.FeedbackService;

@Controller
@RequestMapping("/feedback")
public class FeedbackController {
	@Autowired
	@Qualifier("feedbackService")
	private FeedbackService feedbackService;

	@RequestMapping("/insertFeedback")
	@ResponseBody
	public String insertFeedback(Feedback feedback, HttpServletRequest request) {
		User user = (User) request.getSession().getAttribute("user");
		feedback.setUserId(user.getId());
		feedback.setPosttime(new Date());
		feedbackService.insertFeedback(feedback);
		return "success";
	}
}
