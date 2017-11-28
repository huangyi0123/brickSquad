package com.brick.squad.util;

import java.util.List;

public class PageBeanUtil<T> {
	private int page; // 当前页
	private int totalCount;// 总记录
	private int totalPage;// 总页数
	private int limitPage;// 页数
	private List<T> list;
	private String parentId;
	private int begin;
	// 排序使用
	private int sequence;
	private Integer shelfdate;
	private double min_price;
	private double max_price;
	private String s;
	private String search_category;
	private String aname;
	private String typeId;
	private String search;
	private String pId;

	private int page3; // 当前页
	private int totalCount3;// 总记录
	private int totalPage3;// 总页数
	private int limitPage3;// 页数
	private int begin3;
	
	
	private int page1; // 当前页
	private int totalCount1;// 总记录
	private int totalPage1;// 总页数
	private int limitPage1;// 页数
	private int begin1;
	
	public int getPage1() {
		return page1;
	}

	public void setPage1(int page1) {
		this.page1 = page1;
	}

	public int getTotalCount1() {
		return totalCount1;
	}

	public void setTotalCount1(int totalCount1) {
		this.totalCount1 = totalCount1;
	}

	public int getTotalPage1() {
		return totalPage1;
	}

	public void setTotalPage1(int totalPage1) {
		this.totalPage1 = totalPage1;
	}

	public int getLimitPage1() {
		return limitPage1;
	}

	public void setLimitPage1(int limitPage1) {
		this.limitPage1 = limitPage1;
	}

	public int getBegin1() {
		return begin1;
	}

	public void setBegin1(int begin1) {
		this.begin1 = begin1;
	}

	public int getBegin3() {
		return begin3;
	}

	public void setBegin3(int begin3) {
		this.begin3 = begin3;
	}

	public int getPage3() {
		return page3;
	}

	public void setPage3(int page3) {
		this.page3 = page3;
	}



	public int getTotalCount3() {
		return totalCount3;
	}

	public void setTotalCount3(int totalCount3) {
		this.totalCount3 = totalCount3;
	}

	public int getTotalPage3() {
		return totalPage3;
	}

	public void setTotalPage3(int totalPage3) {
		this.totalPage3 = totalPage3;
	}

	public int getLimitPage3() {
		return limitPage3;
	}

	public void setLimitPage3(int limitPage3) {
		this.limitPage3 = limitPage3;
	}

	public String getpId() {
		return pId;
	}

	public void setpId(String pId) {
		this.pId = pId;
	}

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	public String getTypeId() {
		return typeId;
	}

	public void setTypeId(String typeId) {
		this.typeId = typeId;
	}

	public String getAname() {
		return aname;
	}

	public void setAname(String aname) {
		this.aname = aname;
	}

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

	public double getMin_price() {
		return min_price;
	}

	public void setMin_price(double min_price) {
		this.min_price = min_price;
	}

	public double getMax_price() {
		return max_price;
	}

	public void setMax_price(double max_price) {
		this.max_price = max_price;
	}

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
