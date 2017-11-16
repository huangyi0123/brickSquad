package com.brick.squad.expand;

import com.brick.squad.pojo.OrderDetails;

public class OrderDetailsAndArticleExtend extends OrderDetails {
	/**
	 * 商品名
	 */
	private String articleName;
	/**
	 * 商品单价
	 */
	private String articlePrice;
	public String getArticleName() {
		return articleName;
	}
	public void setArticleName(String articleName) {
		this.articleName = articleName;
	}
	public String getArticlePrice() {
		return articlePrice;
	}
	public void setArticlePrice(String articlePrice) {
		this.articlePrice = articlePrice;
	}
	@Override
	public String toString() {
		return "OrderDetailsAndArticleExtend [articleName=" + articleName
				+ ", articlePrice=" + articlePrice + "]";
	}
	
}
