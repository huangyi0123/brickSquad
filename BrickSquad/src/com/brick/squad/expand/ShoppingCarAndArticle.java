package com.brick.squad.expand;

import java.util.Date;

public class ShoppingCarAndArticle {
	private String id;
	private String articleId;
	private String perId;
	private Integer number;
	private Date date;
	private String aname;
	private String typeId;
	private String businessId;
	private String price;
	private int stock;
	private String describes;
	private String image;
	//封装的一个属性用于计算数量和单价
	private  int i;
	private Double allPrice;
	
	public int getI() {
		return i;
	}
	public void setI(int i) {
		this.i = i;
	}
	

	public Double getAllPrice() {
		return allPrice;
	}
	public void setAllPrice(Double allPrice) {
		this.allPrice = allPrice;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getArticleId() {
		return articleId;
	}
	public void setArticleId(String articleId) {
		this.articleId = articleId;
	}
	public String getPerId() {
		return perId;
	}
	public void setPerId(String perId) {
		this.perId = perId;
	}
	public Integer getNumber() {
		return number;
	}
	public void setNumber(Integer number) {
		this.number = number;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public String getTypeId() {
		return typeId;
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
	public String getDescribes() {
		return describes;
	}
	public void setDescribes(String describes) {
		this.describes = describes;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	@Override
	public String toString() {
		return "ShoppingCarAndArticle [id=" + id + ", articleId=" + articleId
				+ ", perId=" + perId + ", number=" + number + ", date=" + date
				+ ", aname=" + aname + ", typeId=" + typeId + ", businessId="
				+ businessId + ", price=" + price + ", stock=" + stock
				+ ", describes=" + describes + ", image=" + image + "]";
	}
	
}
