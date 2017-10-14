package com.brick.squad.pojo;
/**
 * 
 * @author 赵荣坤
 *买家表
 */
public class Buyers {
	private String id;
	private int currentIntegral;
	private int historicalIntegral;
	private int grate;
	private String deliveryAddressId;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getCurrentIntegral() {
		return currentIntegral;
	}
	public void setCurrentIntegral(int currentIntegral) {
		this.currentIntegral = currentIntegral;
	}
	public int getHistoricalIntegral() {
		return historicalIntegral;
	}
	public void setHistoricalIntegral(int historicalIntegral) {
		this.historicalIntegral = historicalIntegral;
	}
	public int getGrate() {
		return grate;
	}
	public void setGrate(int grate) {
		this.grate = grate;
	}
	public String getDeliveryAddressId() {
		return deliveryAddressId;
	}
	public void setDeliveryAddressId(String deliveryAddressId) {
		this.deliveryAddressId = deliveryAddressId;
	}
}
