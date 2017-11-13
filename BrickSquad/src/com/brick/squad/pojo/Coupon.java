package com.brick.squad.pojo;

import java.util.Date;



public class Coupon {
	private String id;
	private String typeId;
	private String buyersId;
	private Date startTime;
	private Date endTime;
	private int total;
	private int surplus;
	private float fullMoney;
	private float money;
	private int receive;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTypeId() {
		return typeId;
	}
	public void setTypeId(String typeId) {
		this.typeId = typeId;
	}
	public String getBuyersId() {
		return buyersId;
	}
	public void setBuyersId(String buyersId) {
		this.buyersId = buyersId;
	}
	public Date getStartTime() {
		return startTime;
	}
	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}
	public Date getEndTime() {
		return endTime;
	}
	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public int getSurplus() {
		return surplus;
	}
	public void setSurplus(int surplus) {
		this.surplus = surplus;
	}
	
	public float getFullMoney() {
		return fullMoney;
	}
	public void setFullMoney(float fullMoney) {
		this.fullMoney = fullMoney;
	}
	public float getMoney() {
		return money;
	}
	public void setMoney(float money) {
		this.money = money;
	}
	public int getReceive() {
		return receive;
	}
	public void setReceive(int receive) {
		this.receive = receive;
	}
	@Override
	public String toString() {
		return "Coupon [id=" + id + ", typeId=" + typeId + ", buyersId="
				+ buyersId + ", startTime=" + startTime + ", endTime="
				+ endTime + ", total=" + total + ", surplus=" + surplus
				+ ", fullMoney=" + fullMoney + ", money=" + money
				+ ", receive=" + receive + "]";
	}

}
