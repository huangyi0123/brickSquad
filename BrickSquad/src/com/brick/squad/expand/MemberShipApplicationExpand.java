package com.brick.squad.expand;

import com.brick.squad.pojo.MemberShipApplication;

public class MemberShipApplicationExpand extends MemberShipApplication{
	
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
