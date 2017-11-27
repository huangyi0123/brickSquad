package com.brick.squad.expand;

import com.brick.squad.pojo.VideoComment;

/**
 * 视频评论继承类
 * 
 * @author 吴文鑫
 * 
 */
public class VideoCommentExtend extends VideoComment {
	/**
	 * 用户名
	 */
	private String userName;
	/**
	 * 用户头像路径
	 */
	private String userPicPath;
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPicPath() {
		return userPicPath;
	}
	public void setUserPicPath(String userPicPath) {
		this.userPicPath = userPicPath;
	}
	@Override
	public String toString() {
		return "VideoCommentExtend [userName=" + userName + ", userPicPath="
				+ userPicPath + "]";
	}
	
	

}
