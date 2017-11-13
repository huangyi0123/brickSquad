package com.brick.squad.util;

public class PaginationCollection {
	private int skipNum;// 当前第几条记录开始
	private int takeNum;// 从开始记录开始每页显示条数
	private int curentPage=1;// 当前页
	private int pageSize=2;// 每页显示记录数
	private String keyword;
	private String userId;
	private int count;
	private int pageCount;
	
	 
	
	
	public int getCurentPage() {
		return curentPage;
	}

	public void setCurentPage(int curentPage) {
		this.curentPage = curentPage;
	}
	public int getPageCount() {
		return (int) Math.ceil((float)count/pageSize);
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

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}
	
	public int getSkipNum() {
		return (curentPage - 1) * pageSize;
	}

	public int getTakeNum() {
		return pageSize;
	}

}
