package com.brick.squad.util;

public class Pagination {
	private int skipNum;// 当前第几条记录开始
	private int takeNum;// 从开始记录开始每页显示条数

	private int count;
	private int pageCount;
	//根据角色权限分页显示数据
	private String roleId;
	public String getRoleId() {
		return roleId;
	}


	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}


	public int getCount() {
		return count;
	}

	private int curentPage=1;// 当前页
	private int pageSize=10;// 每页显示记录数
	private String keyword;
	private  String userId;



	public void setCount(int count) {
		this.count = count;
	}

	
	public int getSkipNum() {
		return (curentPage - 1) * pageSize;
	}

	public int getTakeNum() {
		return pageSize;
	}

	public int getCurentPage() {
		return curentPage;
	}

	public void setCurentPage(int curentPage) {
		this.curentPage = curentPage;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

}
