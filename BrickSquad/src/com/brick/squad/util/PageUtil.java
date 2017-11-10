package com.brick.squad.util;

public class PageUtil {
	// 总记录数
    private int totalCount = 0;
	// 当前页号，默认显示第一页
    private int pageNumber = 1;
    // 每页大小，默认每页12条
    private int pageSize = 12; 
    // 总页数，默认为0
    private int totalPage = 0;
    // 起始记录行号，默认为从表头开始
    private int startRow = 0;
    
    
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getPageNumber() {
		return pageNumber;
	}
	public void setPageNumber(int pageNumber) {
		this.pageNumber = pageNumber;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getStartRow() {
		return startRow;
	}
	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}
 

}
