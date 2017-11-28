package com.brick.squad.service;

import com.brick.squad.expand.VideoCommentPagination;
import com.brick.squad.pojo.VideoComment;

public interface VideoCommentService {
	/**
	 * 贬低评论
	 * 
	 * @param id
	 */
	public void updateBelittleAmout(String id);

	/**
	 * 为评论点赞
	 * 
	 * @param id
	 */
	public void updatePraiseAmout(String id);
	public void insertVideoComment(VideoComment videoComment) throws Exception;

	/**
	 * 根据被 评论的ID分页查询评论，时间降序
	 * 
	 * @param videoCommentPagination
	 * @return
	 */
	public String findVideoCommentCountByBeCommentedIdPagination(
			VideoCommentPagination videoCommentPagination) throws Exception;
}
