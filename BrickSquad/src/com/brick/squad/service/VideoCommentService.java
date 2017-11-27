package com.brick.squad.service;

import java.util.List;

import com.brick.squad.expand.VideoCommentExtend;
import com.brick.squad.expand.VideoCommentPagination;
import com.brick.squad.pojo.VideoComment;

public interface VideoCommentService {
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
