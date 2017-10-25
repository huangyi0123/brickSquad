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
	private int grade;
	private String deliveryAddressId;
	private String informationId;
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
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public String getDeliveryAddressId() {
		return deliveryAddressId;
	}
	public void setDeliveryAddressId(String deliveryAddressId) {
		this.deliveryAddressId = deliveryAddressId;
	}
	public String getInformationId() {
		return informationId;
	}
	public void setInformationId(String informationId) {
		this.informationId = informationId;
	}
	public PersonalInformation getPersonalInformation() {
		return personalInformation;
	}
	public void setPersonalInformation(PersonalInformation personalInformation) {
		this.personalInformation = personalInformation;
	}
	@Override
	public String toString() {
		return "Buyers [id=" + id + ", currentIntegral=" + currentIntegral
				+ ", historicalIntegral=" + historicalIntegral + ", grade="
				+ grade + ", deliveryAddressId=" + deliveryAddressId
				+ ", informationId=" + informationId + "]";
	}
	
	
	
}
