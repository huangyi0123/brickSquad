package com.brick.squad.expand;

import com.brick.squad.pojo.Buyers;

public class BuyersExpand extends Buyers {
	private String pname;
	private String tname;
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}
	
}
