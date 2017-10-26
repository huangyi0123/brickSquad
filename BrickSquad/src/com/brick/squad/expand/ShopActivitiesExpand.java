package com.brick.squad.expand;

import com.brick.squad.pojo.ShopActivities;

public class ShopActivitiesExpand extends ShopActivities{
	
	private String businessName;
	private String articleAname;
	private String typeName;
	
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	public String getBusinessName() {
		return businessName;
	}
	public void setBusinessName(String businessName) {
		this.businessName = businessName;
	}
	public String getArticleAname() {
		return articleAname;
	}
	public void setArticleAname(String articleAname) {
		this.articleAname = articleAname;
	}
	
}
