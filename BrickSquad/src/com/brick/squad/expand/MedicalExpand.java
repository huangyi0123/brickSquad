package com.brick.squad.expand;

import com.brick.squad.pojo.Medical;

public class MedicalExpand extends Medical {
	private String personalInformationName;
	private String typeName;
	private String name;
	private String pId;
	
	

	public String getpId() {
		return pId;
	}

	public void setpId(String pId) {
		this.pId = pId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

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
