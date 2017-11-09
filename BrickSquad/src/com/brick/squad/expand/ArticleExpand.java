package com.brick.squad.expand;

import java.util.Date;

import com.brick.squad.pojo.Article;

public class ArticleExpand extends Article{
	
	//type表中活动类型名称
	private String tname;
	//business表中店铺名称
	private String bname;
	//获得商品订单量
	private String buyNumber;
	//获得最新上架时间

	public String getBuyNumber() {
		return buyNumber;
	}
	public void setBuyNumber(String buyNumber) {
		this.buyNumber = buyNumber;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	@Override
	public String toString() {
		return "ArticleExpand [tname=" + tname + ", bname=" + bname
				+ ", buyNumber=" + buyNumber + "]";
	}

}
