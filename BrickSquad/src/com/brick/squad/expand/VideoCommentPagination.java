package com.brick.squad.expand;

import com.brick.squad.util.Pagination;

/**
 * 视频评论分页查询，继承Pagination
 * 
 * @author 吴文鑫
 * 
 */
public class VideoCommentPagination extends Pagination {
	private String beCommentedId;

	public String getBeCommentedId() {
		return beCommentedId;
	}

	public void setBeCommentedId(String beCommentedId) {
		this.beCommentedId = beCommentedId;
	}

	@Override
	public String toString() {
		return "CommentCountPagination [beCommentedId=" + beCommentedId + "]";
	}

}
