package com.brick.squad.util;

import java.util.List;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

public class UpLoadFile {
	private int errno;
	private List<String> data;

	public int getErrno() {
		return errno;
	}

	public void setErrno(int errno) {
		this.errno = errno;
	}

	public List<String> getData() {
		return data;
	}

	public void setData(List<String> data) {
		this.data = data;
	}

	public String toJson() {
		JSONObject jsonObject = JSONObject.fromObject(this);
		return jsonObject.toString();
	}

}
