package com.brick.squad.expand;

import com.brick.squad.pojo.News;

public class NewsExpand extends News {
	private String username;
	private String date;
	
	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}
}
