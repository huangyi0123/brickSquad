package com.brick.squad.pojo;

import java.util.Date;

/**
 * 视频评论表
 * 
 * @author 吴文鑫
 * 
 */
public class VideoComment {
	private String id;
	/**
	 * 被评论的ID
	 */
	private String beCommentedId;
	/**
	 * 评论内容
	 */
	private String content;
	/**
	 * 评论用户的ID
	 */
	private String commontUserId;
	/**
	 * 评论时间
	 */
	private Date commentTime;
	/**
	 * 贬低量
	 */
	private int belittleAmout;
	/**
	 * 点赞量
	 */
	private int praiseAmout;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getBeCommentedId() {
		return beCommentedId;
	}

	public void setBeCommentedId(String beCommentedId) {
		this.beCommentedId = beCommentedId;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getCommontUserId() {
		return commontUserId;
	}

	public void setCommontUserId(String commontUserId) {
		this.commontUserId = commontUserId;
	}

	public Date getCommentTime() {
		return commentTime;
	}

	public void setCommentTime(Date commentTime) {
		this.commentTime = commentTime;
	}

	public int getBelittleAmout() {
		return belittleAmout;
	}

	public void setBelittleAmout(int belittleAmout) {
		this.belittleAmout = belittleAmout;
	}

	public int getPraiseAmout() {
		return praiseAmout;
	}

	public void setPraiseAmout(int praiseAmout) {
		this.praiseAmout = praiseAmout;
	}

	@Override
	public String toString() {
		return "VideoComment [id=" + id + ", beCommentedId=" + beCommentedId
				+ ", content=" + content + ", commontUserId=" + commontUserId
				+ ", commentTime=" + commentTime + ", belittleAmout="
				+ belittleAmout + ", praiseAmout=" + praiseAmout + "]";
	}

}
