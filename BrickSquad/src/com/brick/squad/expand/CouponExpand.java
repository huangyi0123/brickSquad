package com.brick.squad.expand;

import com.brick.squad.pojo.Coupon;

public class CouponExpand extends Coupon {
	private String shopname;
	private float  percent;
	public String getShopname() {
		return shopname;
	}
	public void setShopname(String shopname) {
		this.shopname = shopname;
	}
	public float getPercent() {
		float a=((float)super.getSurplus())/super.getTotal();
		return a*100;
	}
	
}
