package com.brick.squad.util;

public class Pagination {
	private int skipNum;//当前第几条记录开始
	private int takeNum;//从开始记录开始每页显示条数
	private int curentPage;//当前页
	private int pageSize;//每页显示记录数
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
