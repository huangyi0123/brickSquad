package com.brick.squad.pojo;

import java.util.Date;

public class UserVedio {
	private String id;
	private String imgpath;
	private String title;
	private String vediopath;
	private Date posttime;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getImgpath() {
		return imgpath;
	}
	public void setImgpath(String imgpath) {
		this.imgpath = imgpath;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getVediopath() {
		return vediopath;
	}
	public void setVediopath(String vediopath) {
		this.vediopath = vediopath;
	}
	public Date getPosttime() {
		return posttime;
	}
	public void setPosttime(Date posttime) {
		this.posttime = posttime;
	}
	
}
