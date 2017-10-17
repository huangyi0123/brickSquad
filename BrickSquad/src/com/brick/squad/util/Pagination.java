package com.brick.squad.util;

public class Pagination {
	private int skipNum;
	private int takeNum;
	private int curentPage=1;
	private int pageSize=10;
	public int getSkipNum() {
		return (curentPage-1)*pageSize;
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
	
}
