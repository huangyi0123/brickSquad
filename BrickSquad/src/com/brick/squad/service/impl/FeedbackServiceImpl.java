package com.brick.squad.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.brick.squad.mapper.FeedbackMapper;
import com.brick.squad.pojo.Feedback;
import com.brick.squad.service.FeedbackService;

public class FeedbackServiceImpl implements FeedbackService {
	@Autowired
	@Qualifier("feedbackMapper")
	private FeedbackMapper feedbackMapper;

	@Override
	public void insertFeedback(Feedback feedback) {
		feedbackMapper.insertFeedback(feedback);
	}

}
