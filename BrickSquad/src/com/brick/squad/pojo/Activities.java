package com.brick.squad.pojo;

import java.util.Date;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * 
 * @author 谭超 活动表
 */

public class Activities {

	private String id;
	private String name;
	private String centent;
	@NotEmpty(message = "请选择活动类型")
	private String typeId;

	private Date startTime;

	private Date endTime;
	@NotEmpty(message = "请添加本次活动负责人")
	private String userId;
	@Min(value = 0, message = "人数不足")
	@Max(value = 100000, message = "人数过多")
	private int number;
	private String movie;
	/**
	 * 视频点击量
	 */
	private int clickAmount;
	private String imgpath;
	
	

	public String getImgpath() {
		return imgpath;
	}

	public void setImgpath(String imgpath) {
		this.imgpath = imgpath;
	}

	public int getClickAmount() {
		return clickAmount;
	}

	public void setClickAmount(int clickAmount) {
		this.clickAmount = clickAmount;
	}

	public String getMovie() {
		return movie;
	}

	public void setMovie(String movie) {
		this.movie = movie;
	}

	public String getId() {
		return id;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCentent() {
		return centent;
	}

	public void setCentent(String centent) {
		this.centent = centent;
	}

	public String getTypeId() {
		return typeId;
	}

	public void setTypeId(String typeId) {
		this.typeId = typeId;
	}

	public Date getStartTime() {
		return startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public Date getEndTime() {
		return endTime;
	}

	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	@Override
	public String toString() {
		return "Activities [id=" + id + ", name=" + name + ", centent="
				+ centent + ", typeId=" + typeId + ", startTime=" + startTime
				+ ", endTime=" + endTime + ", userId=" + userId + ", number="
				+ number + ", movie=" + movie + ", clickAmount=" + clickAmount
				+ "]";
	}



}
