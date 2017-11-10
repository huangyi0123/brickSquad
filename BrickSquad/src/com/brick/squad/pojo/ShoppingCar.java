package com.brick.squad.pojo;

import java.util.Date;
import java.util.List;

public class ShoppingCar {
	private String id;

	private String articleId;

	private String perId;

	private Integer number;

	private Date date;
	/** 购物车与商品的关系 */
	private List<Article> articles;
	/** 购物车与老人的关系 */
	private PersonalInformation personalInformation;

	public PersonalInformation getPersonalInformation() {
		return personalInformation;
	}

	public void setPersonalInformation(PersonalInformation personalInformation) {
		this.personalInformation = personalInformation;
	}

	public List<Article> getArticles() {
		return articles;
	}

	public void setArticles(List<Article> articles) {
		this.articles = articles;
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

	@Override
	public String toString() {
		return "ShoppingCar [id=" + id + ", articleId=" + articleId
				+ ", perId=" + perId + ", number=" + number + ", date=" + date
				+ ", articles=" + articles + ", personalInformation="
				+ personalInformation + "]";
	}

}