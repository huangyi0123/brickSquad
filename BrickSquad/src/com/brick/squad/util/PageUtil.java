package com.brick.squad.util;

public class PageUtil {
	private int skipNum;//当前第几条记录开始
	private int takeNum;//从开始记录开始每页显示条数
	private int curentPage=1;//当前页
	private int pageSize=12;//每页显示记录数
	private int count;//统计总条数
	private int pageCount;
	//搜索需要的字段
	private String s;
	private String search_category;
	
	
	public String getS() {
		return s;
	}
	public void setS(String s) {
		this.s = s;
	}
	public String getSearch_category() {
		return search_category;
	}
	public void setSearch_category(String search_category) {
		this.search_category = search_category;
	}
	public int getPageCount() {
		//math.ceil为向上取整  
		return pageCount=(int) Math.ceil((float)count/pageSize);
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
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
