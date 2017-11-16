package com.brick.squad.util;

public class Select {
	private String id;
	private String name;
	//为了方便不写拓展类，添加活动接收价格
	private String price;
	
	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getId() {
		return id;
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
}
