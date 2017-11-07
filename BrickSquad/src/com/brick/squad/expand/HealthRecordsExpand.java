package com.brick.squad.expand;

import com.brick.squad.pojo.HealthRecords;

public class HealthRecordsExpand extends HealthRecords{
	private String pname;
	private String username;
	private String pgender;
	public String getPgender() {
		return pgender;
	}
	public void setPgender(String pgender) {
		this.pgender = pgender;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	
}
