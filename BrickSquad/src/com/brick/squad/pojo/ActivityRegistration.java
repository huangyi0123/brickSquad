package com.brick.squad.pojo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

/**
 * 
 * @author hy
 *   活动登记表
 */
public class ActivityRegistration {
	private String id;
	private String perId;
	private String activitiesId;
	private Date registrationDate;
	/*@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")*/
	private int appointment;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPerId() {
		return perId;
	}
	public void setPerId(String perId) {
		this.perId = perId;
	}
	public String getActivitiesId() {
		return activitiesId;
	}
	public void setActivitiesId(String activitiesId) {
		this.activitiesId = activitiesId;
	}
	public Date getRegistrationDate() {
		return registrationDate;
	}
	public void setRegistrationDate(Date registrationDate) {
		this.registrationDate = registrationDate;
	}
	public int getAppointment() {
		return appointment;
	}
	public void setAppointment(int appointment) {
		this.appointment = appointment;
	}
	@Override
	public String toString() {
		return "ActivityRegistration [id=" + id + ", perId=" + perId
				+ ", activitiesId=" + activitiesId + ", registrationDate="
				+ registrationDate + ", appointment=" + appointment + "]";
	}
	
	

}
