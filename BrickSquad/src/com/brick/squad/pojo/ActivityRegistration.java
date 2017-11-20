package com.brick.squad.pojo;

import java.util.Date;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * 
 * @author hy 活动登记表
 */
public class ActivityRegistration {
	private String id;
	@NotEmpty(message = "请选择用户名")
	private String perId;
	@NotEmpty(message = "请选择活动类型")
	private String activitiesId;
	// @NotEmpty(message="请选择活动时间")
	private Date registrationDate;
	/* @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss") */
	// @NotEmpty(message="请选择预约类型")
	private int appointment;
	//备注
	private String remarks;
	//预约时间
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
