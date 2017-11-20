package com.brick.squad.expand;

import java.util.Date;

import com.brick.squad.pojo.ActivityRegistration;

public class ActivityRegistrationExpand extends ActivityRegistration {
	private String personalInformationName;
	private String activitiesName;
	private String telephone;
	private String activitiesId;
	private String remarks;
	private Date reservationDate;
	
	
	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public Date getReservationDate() {
		return reservationDate;
	}

	public void setReservationDate(Date reservationDate) {
		this.reservationDate = reservationDate;
	}

	public String getActivitiesId() {
		return activitiesId;
	}

	public void setActivitiesId(String activitiesId) {
		this.activitiesId = activitiesId;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getPersonalInformationName() {
		return personalInformationName;
	}

	public void setPersonalInformationName(String personalInformationName) {
		this.personalInformationName = personalInformationName;
	}

	public String getActivitiesName() {
		return activitiesName;
	}

	public void setActivitiesName(String activitiesName) {
		this.activitiesName = activitiesName;
	}

}
