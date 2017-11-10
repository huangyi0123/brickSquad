package com.brick.squad.expand;

import java.util.Date;

import com.brick.squad.pojo.Article;

public class SecKill extends Article {
	private String time;
	private float activePrice;
	

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public float getActivePrice() {
		return activePrice;
	}

	public void setActivePrice(float activePrice) {
		this.activePrice = activePrice;
	}

	@Override
	public String toString() {
		return "SecKill [time=" + time + ", activePrice=" + activePrice
				+ ", getAname()=" + getAname() + ", getId()=" + getId()
				+ ", getTypeId()=" + getTypeId() + ", getDescribes()="
				+ getDescribes() + ", getBusinessId()=" + getBusinessId()
				+ ", getPrice()=" + getPrice() + ", getStock()=" + getStock()
				+ ", getImage()=" + getImage() + ", toString()="
				+ super.toString() + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + "]";
	}

}
