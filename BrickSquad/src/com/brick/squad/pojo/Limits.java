package com.brick.squad.pojo;

/**
 * 权限表
 * 
 * @author 梁城月
 * 
 */
public class Limits {
	private String id;
	private String roleId;
	private String tablename;
	private boolean ad;
	private boolean dl;
	private boolean up;
	private boolean query;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getRoleId() {
		return roleId;
	}

	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}

	public String getTablename() {
		return tablename;
	}

	public void setTablename(String tablename) {
		this.tablename = tablename;
	}

	public boolean isAd() {
		return ad;
	}

	public void setAd(boolean ad) {
		this.ad = ad;
	}

	public boolean isDl() {
		return dl;
	}

	public void setDl(boolean dl) {
		this.dl = dl;
	}

	public boolean isUp() {
		return up;
	}

	public void setUp(boolean up) {
		this.up = up;
	}

	public boolean isQuery() {
		return query;
	}

	public void setQuery(boolean query) {
		this.query = query;
	}

}
