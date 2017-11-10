package com.brick.squad.pojo;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

public class MemberShipApplication {

	private String id;
	@NotEmpty(message = "会员类型还没有填")
	private String memberShipTypeId;
	@NotEmpty(message = "申请人还没有填写")
	private String userId;
	@NotEmpty(message = "工作人员是谁还没有填")
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
