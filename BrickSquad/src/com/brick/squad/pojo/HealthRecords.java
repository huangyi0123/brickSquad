package com.brick.squad.pojo;

import java.util.Date;

public class HealthRecords {
	private String id;
	private String perId;
	//查看详情页的性别
	private String pgender;
	public String getPgender() {
		return pgender;
	}
	public void setPgender(String pgender) {
		this.pgender = pgender;
	}
	private Date registrDate;
	private String userId;
	private String diseaseId;
	private String shape;
	private String dietSituation;
	private String sportsSituation;
	private String emotionControl;
	private String thrombus;
	private String bloodPressure;
	private String healthAssessment;
	private String dangerousTips;
	private String conclusionSuggestion;
	private String evaluate;
	/**
	 * @return the id
	 */
	public String getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(String id) {
		this.id = id;
	}
	/**
	 * @return the perId
	 */
	public String getPerId() {
		return perId;
	}
	/**
	 * @param perId the perId to set
	 */
	public void setPerId(String perId) {
		this.perId = perId;
	}
	/**
	 * @return the registrDate
	 */
	public Date getRegistrDate() {
		return registrDate;
	}
	/**
	 * @param registrDate the registrDate to set
	 */
	public void setRegistrDate(Date registrDate) {
		this.registrDate = registrDate;
	}
	/**
	 * @return the userId
	 */
	public String getUserId() {
		return userId;
	}
	/**
	 * @param userId the userId to set
	 */
	public void setUserId(String userId) {
		this.userId = userId;
	}
	/**
	 * @return the diseaseId
	 */
	public String getDiseaseId() {
		return diseaseId;
	}
	/**
	 * @param diseaseId the diseaseId to set
	 */
	public void setDiseaseId(String diseaseId) {
		this.diseaseId = diseaseId;
	}
	/**
	 * @return the shape
	 */
	public String getShape() {
		return shape;
	}
	/**
	 * @param shape the shape to set
	 */
	public void setShape(String shape) {
		this.shape = shape;
	}
	/**
	 * @return the dietSituation
	 */
	public String getDietSituation() {
		return dietSituation;
	}
	/**
	 * @param dietSituation the dietSituation to set
	 */
	public void setDietSituation(String dietSituation) {
		this.dietSituation = dietSituation;
	}
	/**
	 * @return the sportsSituation
	 */
	public String getSportsSituation() {
		return sportsSituation;
	}
	/**
	 * @param sportsSituation the sportsSituation to set
	 */
	public void setSportsSituation(String sportsSituation) {
		this.sportsSituation = sportsSituation;
	}
	/**
	 * @return the emotionControl
	 */
	public String getEmotionControl() {
		return emotionControl;
	}
	/**
	 * @param emotionControl the emotionControl to set
	 */
	public void setEmotionControl(String emotionControl) {
		this.emotionControl = emotionControl;
	}
	/**
	 * @return the thrombus
	 */
	public String getThrombus() {
		return thrombus;
	}
	/**
	 * @param thrombus the thrombus to set
	 */
	public void setThrombus(String thrombus) {
		this.thrombus = thrombus;
	}
	/**
	 * @return the bloodPressure
	 */
	public String getBloodPressure() {
		return bloodPressure;
	}
	/**
	 * @param bloodPressure the bloodPressure to set
	 */
	public void setBloodPressure(String bloodPressure) {
		this.bloodPressure = bloodPressure;
	}
	/**
	 * @return the healthAssessment
	 */
	public String getHealthAssessment() {
		return healthAssessment;
	}
	/**
	 * @param healthAssessment the healthAssessment to set
	 */
	public void setHealthAssessment(String healthAssessment) {
		this.healthAssessment = healthAssessment;
	}
	/**
	 * @return the dangerousTips
	 */
	public String getDangerousTips() {
		return dangerousTips;
	}
	/**
	 * @param dangerousTips the dangerousTips to set
	 */
	public void setDangerousTips(String dangerousTips) {
		this.dangerousTips = dangerousTips;
	}
	/**
	 * @return the conclusionSuggestion
	 */
	public String getConclusionSuggestion() {
		return conclusionSuggestion;
	}
	/**
	 * @param conclusionSuggestion the conclusionSuggestion to set
	 */
	public void setConclusionSuggestion(String conclusionSuggestion) {
		this.conclusionSuggestion = conclusionSuggestion;
	}
	/**
	 * @return the evaluate
	 */
	public String getEvaluate() {
		return evaluate;
	}
	/**
	 * @param evaluate the evaluate to set
	 */
	public void setEvaluate(String evaluate) {
		this.evaluate = evaluate;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "HealthRecords [id=" + id + ", perId=" + perId
				+ ", registrDate=" + registrDate + ", userId=" + userId
				+ ", diseaseId=" + diseaseId + ", shape=" + shape
				+ ", dietSituation=" + dietSituation + ", sportsSituation="
				+ sportsSituation + ", emotionControl=" + emotionControl
				+ ", thrombus=" + thrombus + ", bloodPressure=" + bloodPressure
				+ ", healthAssessment=" + healthAssessment + ", dangerousTips="
				+ dangerousTips + ", conclusionSuggestion="
				+ conclusionSuggestion + ", evaluate=" + evaluate + "]";
	}
	
	
}
