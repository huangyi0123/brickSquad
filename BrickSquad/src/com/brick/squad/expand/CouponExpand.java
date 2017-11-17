package com.brick.squad.expand;

import com.brick.squad.pojo.Coupon;

public class CouponExpand extends Coupon {
	private String shopname;
	private int  percent;
	public String getShopname() {
		return shopname;
	}
	public void setShopname(String shopname) {
		this.shopname = shopname;
	}
	public int getPercent() {
		float a=((float)super.getReceive())/super.getTotal();
		int s=(int)(a*100);
		return s;
	}
	
}
