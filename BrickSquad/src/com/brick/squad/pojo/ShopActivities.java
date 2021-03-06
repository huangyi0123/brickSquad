package com.brick.squad.pojo;

import java.util.Date;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

public class ShopActivities {
	private String id;
	@NotEmpty(message = "活动类型不能为空！")
	private String typeId;
	private Date startTime;
	private Date endTime;
	@NotEmpty(message = "店铺名不能为空！")
	private String businessId;
	@NotEmpty(message = "商品名不能为空！")
	private String articleId;
	private String activePrice;
	//为了方便，不写扩展类
	private String price;
	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	//商品活动修改回显信息
	private String aname;
	public String getAname() {
		return aname;
	}

	public void setAname(String aname) {
		this.aname = aname;
	}
	
	private Integer buyersNumber;

	public Integer getBuyersNumber() {
		return buyersNumber;
	}

	public void setBuyersNumber(Integer buyersNumber) {
		this.buyersNumber = buyersNumber;

	}

	public String getActivePrice() {
		return activePrice;
	}

	public void setActivePrice(String activePrice) {
		this.activePrice = activePrice;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public String getBusinessId() {
		return businessId;
	}

	public void setBusinessId(String businessId) {
		this.businessId = businessId;
	}

	public String getArticleId() {
		return articleId;
	}

	public void setArticleId(String articleId) {
		this.articleId = articleId;
	}

	@Override
	public String toString() {
		return "ShopActivities [id=" + id + ", typeId=" + typeId
				+ ", startTime=" + startTime + ", endTime=" + endTime
				+ ", businessId=" + businessId + ", articleId=" + articleId
				+ "]";
	}

}
