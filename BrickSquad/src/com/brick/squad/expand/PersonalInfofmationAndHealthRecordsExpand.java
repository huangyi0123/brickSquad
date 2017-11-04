package com.brick.squad.expand;

import com.brick.squad.pojo.HealthRecords;
import com.brick.squad.pojo.PersonalInformation;

public class PersonalInfofmationAndHealthRecordsExpand{
private PersonalInformation personalInformation;
private HealthRecords healthRecords;
private String nationName;
private String diseaseName;

public String getNationName() {
	return nationName;
}
public void setNationName(String nationName) {
	this.nationName = nationName;
}
public String getDiseaseName() {
	return diseaseName;
}
public void setDiseaseName(String diseaseName) {
	this.diseaseName = diseaseName;
}
public PersonalInformation getPersonalInformation() {
	return personalInformation;
}
public void setPersonalInformation(PersonalInformation personalInformation) {
	this.personalInformation = personalInformation;
}
public HealthRecords getHealthRecords() {
	return healthRecords;
}
public void setHealthRecords(HealthRecords healthRecords) {
	this.healthRecords = healthRecords;
}
@Override
public String toString() {
	return "PersonalInfofmationAndHealthRecordsExpand [personalInformation="
			+ personalInformation + ", healthRecords=" + healthRecords
			+ ", nationName=" + nationName + ", diseaseName=" + diseaseName
			+ "]";
}


}
