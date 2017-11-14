package com.brick.squad.expand;

import com.brick.squad.pojo.Article;

/**
 * 最新商品扩展类
 * 
 * @author LiangChengYue
 * 
 */
public class NewsArticle extends Article {

	private int totals;
	private int buyersNumber;
	private int active_price;
	
	public int getActive_price() {
		return active_price;
	}

	public void setActive_price(int active_price) {
		this.active_price = active_price;
	}

	public int getBuyersNumber() {
		return buyersNumber;
	}

	public void setBuyersNumber(int buyersNumber) {
		this.buyersNumber = buyersNumber;
	}

	public int getTotals() {
		return totals;
	}

	public void setTotals(int totals) {
		this.totals = totals;
	}

}
