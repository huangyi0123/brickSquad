package com.brick.squad.expand;

import com.brick.squad.pojo.MemberShipApplication;

public class MemberShipApplicationExpand extends MemberShipApplication {
	private String typeName;
	private String userUsername;
	private String personalInformationName;

	public String getTypeName() {
		return typeName;
	}

	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}

	public String getUserUsername() {
		return userUsername;
	}

	public void setUserUsername(String userUsername) {
		this.userUsername = userUsername;
	}

	public String getPersonalInformationName() {
		return personalInformationName;
	}

	public void setPersonalInformationName(String personalInformationName) {
		this.personalInformationName = personalInformationName;
	}

	private String tname;
	private String username;
	private String pname;

	public String getTname() {
		return tname;
	}

	public void setTname(String tname) {
		this.tname = tname;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

}
