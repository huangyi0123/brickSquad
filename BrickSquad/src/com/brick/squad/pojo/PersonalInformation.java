package com.brick.squad.pojo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * 老人信息表
 * @author 梁城月
 *
 */
public class PersonalInformation {
	private String id;
	private String name;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date birthday;
	private String gender;
	private String idCard;
	private String addressId;
	private String retirementUnit;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date retirementDate;
	private String engagedIndustry;
	private float weight;
	private float height;
	private float income;
	private String familyHistory;
	private boolean isPurchasing;
	private boolean isSupremacy;
	private boolean isPureq;
	private String pureqTypeId;
	private String nationId;
	private String cultureId;
	private String marriageId;
	private String zip;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getIdCard() {
		return idCard;
	}
	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}
	public String getAddressId() {
		return addressId;
	}
	public void setAddressId(String addressId) {
		this.addressId = addressId;
	}
	public String getRetirementUnit() {
		return retirementUnit;
	}
	public void setRetirementUnit(String retirementUnit) {
		this.retirementUnit = retirementUnit;
	}
	public Date getRetirementDate() {
		return retirementDate;
	}
	public void setRetirementDate(Date retirementDate) {
		this.retirementDate = retirementDate;
	}
	public String getEngagedIndustry() {
		return engagedIndustry;
	}
	public void setEngagedIndustry(String engagedIndustry) {
		this.engagedIndustry = engagedIndustry;
	}
	public float getWeight() {
		return weight;
	}
	public void setWeight(float weight) {
		this.weight = weight;
	}
	public float getHeight() {
		return height;
	}
	public void setHeight(float height) {
		this.height = height;
	}
	public float getIncome() {
		return income;
	}
	public void setIncome(float income) {
		this.income = income;
	}
	public String getFamilyHistory() {
		return familyHistory;
	}
	public void setFamilyHistory(String familyHistory) {
		this.familyHistory = familyHistory;
	}
	public boolean isPurchasing() {
		return isPurchasing;
	}
	public void setPurchasing(boolean isPurchasing) {
		this.isPurchasing = isPurchasing;
	}
	public boolean isSupremacy() {
		return isSupremacy;
	}
	public void setSupremacy(boolean isSupremacy) {
		this.isSupremacy = isSupremacy;
	}
	public boolean isPureq() {
		return isPureq;
	}
	public void setPureq(boolean isPureq) {
		this.isPureq = isPureq;
	}
	public String getPureqTypeId() {
		return pureqTypeId;
	}
	public void setPureqTypeId(String pureqTypeId) {
		this.pureqTypeId = pureqTypeId;
	}
	public String getNationId() {
		return nationId;
	}
	public void setNationId(String nationId) {
		this.nationId = nationId;
	}
	public String getCultureId() {
		return cultureId;
	}
	public void setCultureId(String cultureId) {
		this.cultureId = cultureId;
	}
	public String getMarriageId() {
		return marriageId;
	}
	public void setMarriageId(String marriageId) {
		this.marriageId = marriageId;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	
}
