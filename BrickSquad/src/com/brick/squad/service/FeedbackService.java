package com.brick.squad.service;

import com.brick.squad.pojo.Feedback;

public interface FeedbackService {
	/**
	 * 插入用户反馈
	 * 
	 * @param feedback
	 *            用户反馈
	 */
	public void insertFeedback(Feedback feedback);
}
