package com.brick.squad.expand;

import com.brick.squad.pojo.Medical;

public class MedicalExpand extends Medical{
	private String personalInformationName;
	private String typeName;
	public String getPersonalInformationName() {
		return personalInformationName;
	}
	public void setPersonalInformationName(String personalInformationName) {
		this.personalInformationName = personalInformationName;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	
}
