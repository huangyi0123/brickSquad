package com.brick.squad.expand;

import java.util.Date;

import com.brick.squad.pojo.Article;

public class SecKill extends Article {
	private Date time;
	private float activePrice;

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public float getActivePrice() {
		return activePrice;
	}

	public void setActivePrice(float activePrice) {
		this.activePrice = activePrice;
	}

}
