package com.brick.squad.expand;

import com.brick.squad.pojo.ActivityRegistration;

public class ActivityRegistrationExpand extends ActivityRegistration{
	private String personalInformationName;
	private String activitiesName;
	
	
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
