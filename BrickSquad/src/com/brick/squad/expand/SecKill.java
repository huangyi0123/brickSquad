package com.brick.squad.expand;

import java.util.Date;

import com.brick.squad.pojo.Article;

public class SecKill extends Article {
	private String time;
	private float activePrice;
	private int powsr;
	private Date endtime;
	private long timer;

	public long getTimer() {
		return endtime.getTime();
	}

	public void setTimer(long timer) {
		this.timer = endtime.getTime();
	}

	public Date getEndtime() {
		return endtime;
	}

	public void setEndtime(Date endtime) {
		this.endtime = endtime;
	}

	public int getPowsr() {
		float s = activePrice / Float.parseFloat(super.getPrice());
		return (int) ((1.0f - s) * 100);
	}

	public void setPowsr() {
		float s = activePrice / Float.parseFloat(super.getPrice());
		this.powsr = (int) ((1.0f - s) * 100);
	}

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
