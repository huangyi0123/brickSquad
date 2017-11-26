package com.brick.squad.expand;

import java.util.Date;

/**
 * 营养膳食扩展类
 * 
 * @author LiangChengYue
 * 
 */
public class NutritionalDiet {
	private String id;
	private Date postTime;
	private String title;
	private String content;
	private String name;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Date getPostTime() {
		return postTime;
	}
	public void setPostTime(Date postTime) {
		this.postTime = postTime;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	

}
