package com.brick.squad.util;

import java.util.List;

public class PageBeanUtil<T> {
	private int page; //当前页
	private int totalCount;//总记录
	private int totalPage;//总页数
	private int limitPage;//页数
	private List<T> list;
	private String parentId;
	private int begin;
	//排序使用
	private int sequence;
	private Integer shelfdate;
	public Integer getShelfdate() {
		return shelfdate;
	}
	public void setShelfdate(Integer shelfdate) {
		this.shelfdate = shelfdate;
	}
	public int getSequence() {
		return sequence;
	}
	public void setSequence(int sequence) {
		this.sequence = sequence;
	}
	public int getBegin() {
		return begin;
	}
	public void setBegin(int begin) {
		this.begin = begin;
	}
	public String getParentId() {
		return parentId;
	}
	public void setParentId(String parentId) {
		this.parentId = parentId;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getLimitPage() {
		return limitPage;
	}
	public void setLimitPage(int limitPage) {
		this.limitPage = limitPage;
	}
	public List<T> getList() {
		return list;
	}
	public void setList(List<T> list) {
		this.list = list;
	}
}
