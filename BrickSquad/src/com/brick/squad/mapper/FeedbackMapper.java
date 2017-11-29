package com.brick.squad.mapper;

import com.brick.squad.pojo.Feedback;

public interface FeedbackMapper {
	/**
	 * 插入用户反馈
	 * 
	 * @param feedback
	 *            用户反馈
	 */
	public void insertFeedback(Feedback feedback);
}
