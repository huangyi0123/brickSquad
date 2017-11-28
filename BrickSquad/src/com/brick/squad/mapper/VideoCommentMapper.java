package com.brick.squad.mapper;

import java.util.List;

import com.brick.squad.expand.VideoCommentExtend;
import com.brick.squad.expand.VideoCommentPagination;
import com.brick.squad.pojo.VideoComment;

public interface VideoCommentMapper {
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

	public void insertVideoComment(VideoComment videoComment);

	/**
	 * 根据被 评论的ID查询评论总数
	 * 
	 * @param beCommentedId
	 * @return
	 */
	public int findVideoCommentCountByBeCommentedId(String beCommentedId);

	/**
	 * 根据被 评论的ID分页查询评论
	 * 
	 * @param videoCommentPagination
	 * @return
	 */
	public List<VideoCommentExtend> findVideoCommentCountByBeCommentedIdPagination(
			VideoCommentPagination videoCommentPagination);
}
