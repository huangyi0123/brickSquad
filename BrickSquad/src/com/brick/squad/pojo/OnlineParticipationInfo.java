package com.brick.squad.pojo;

import java.util.Date;

import org.hibernate.validator.constraints.NotEmpty;

/**
 * 在线参与信息
 * 
 * @author 吴文鑫
 * 
 */
public class OnlineParticipationInfo {
	private String id;
	private String userName;
	private String sex;
	private int age;
	private String email;
	private String phone;
	private Date submitTime;
	/**
	 * 是否与家人一起住
	 */
	private String IsLiveAlone;
	/**
	 * 需要参加什么活动
	 */
	private String activities;
	/**
	 * 养老服务
	 */
	private String pensionService;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Date getSubmitTime() {
		return submitTime;
	}
	public void setSubmitTime(Date submitTime) {
		this.submitTime = submitTime;
	}
	public String getIsLiveAlone() {
		return IsLiveAlone;
	}
	public void setIsLiveAlone(String isLiveAlone) {
		IsLiveAlone = isLiveAlone;
	}
	public String getActivities() {
		return activities;
	}
	public void setActivities(String activities) {
		this.activities = activities;
	}
	public String getPensionService() {
		return pensionService;
	}
	public void setPensionService(String pensionService) {
		this.pensionService = pensionService;
	}
	@Override
	public String toString() {
		return "OnlineParticipationInfo [id=" + id + ", userName=" + userName
				+ ", sex=" + sex + ", age=" + age + ", email=" + email
				+ ", phone=" + phone + ", submitTime=" + submitTime
				+ ", IsLiveAlone=" + IsLiveAlone + ", activities=" + activities
				+ ", pensionService=" + pensionService + "]";
	}


}
