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
	private String grade;
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	private String deliveryAddressId;
	
	private String tname;
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	/**
	 * 买家与老人信息的关系：一对一 的关系
	 * */
	private PersonalInformation personalInformation;
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
	
	public String getDeliveryAddressId() {
		return deliveryAddressId;
	}
	public void setDeliveryAddressId(String deliveryAddressId) {
		this.deliveryAddressId = deliveryAddressId;
	}
	public PersonalInformation getPersonalInformation() {
		return personalInformation;
	}
	public void setPersonalInformation(PersonalInformation personalInformation) {
		this.personalInformation = personalInformation;
	}	
}
