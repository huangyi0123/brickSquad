package com.brick.squad.pojo;

import java.util.Date;

import org.hibernate.validator.constraints.NotEmpty;

public class Article {

	/**
	 * 商品表 谭超
	 * 
	 */

	private String id;
	private String aname;
	@NotEmpty(message = "商品类型还没有填写呢！")
	private String typeId;
	@NotEmpty(message = "店铺名还没有写啊 哥哥！")
	private String businessId;
	private String price;
	private int stock;
	private String describes;
	private int buyersNumber;

	public int getBuyersNumber() {
		return buyersNumber;
	}

	public void setBuyersNumber(int buyersNumber) {
		this.buyersNumber = buyersNumber;
	}

	public Date getShelfdate() {
		return shelfdate;
	}

	public void setShelfdate(Date shelfdate) {
		this.shelfdate = shelfdate;
	}

	private String image;
	private Date shelfdate;

	public String getAname() {
		return aname;
	}

	public void setAname(String aname) {
		this.aname = aname;
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

	public String getDescribes() {
		return describes;
	}

	public void setDescribes(String describes) {
		this.describes = describes;
	}

	public void setTypeId(String typeId) {
		this.typeId = typeId;
	}

	public String getBusinessId() {
		return businessId;
	}

	public void setBusinessId(String businessId) {
		this.businessId = businessId;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	@Override
	public String toString() {
		return "Article [id=" + id + ", aname=" + aname + ", typeId=" + typeId
				+ ", businessId=" + businessId + ", price=" + price
				+ ", stock=" + stock + ", describes=" + describes + ", image="
				+ image + "]";
	}

}
