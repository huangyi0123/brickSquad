package com.brick.squad.pojo;

import javax.validation.constraints.NotNull;

public class MemberShipApplication {

	@NotNull
	private String id;
	@NotNull
	private String memberShipTypeId;
	@NotNull
	private String userId;
	@NotNull
	private String perId;
	private double deposit;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getMemberShipTypeId() {
		return memberShipTypeId;
	}
	public void setMemberShipTypeId(String memberShipTypeId) {
		this.memberShipTypeId = memberShipTypeId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPerId() {
		return perId;
	}
	public void setPerId(String perId) {
		this.perId = perId;
	}
	public double getDeposit() {
		return deposit;
	}
	public void setDeposit(double deposit) {
		this.deposit = deposit;
	}
	
}
