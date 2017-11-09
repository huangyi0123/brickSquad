package com.brick.squad.pojo;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 订单评论内容 用于商品详情页面商品评论显示
 * 
 * @author 吴文鑫
 * 
 */
public class OrderRated {
	/**
	 * 订单ID
	 */
	private String orderId;
	/**
	 * 评论内容的用户名
	 */
	private String ratedUserName;
	/**
	 * 评论内容的ID
	 */
	private String ratedId;
	/**
	 * 评论内容
	 */
	private String ratedCentent;
	/**
	 * 评论时间
	 */
	private String ratedDate;
	/**
	 * 处理查出来的评论时间格式
	 */
	SimpleDateFormat dateFormater = new SimpleDateFormat(
			"yyyy年-MM月-dd日 hh:mm:ss");

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public String getRatedUserName() {
		return ratedUserName;
	}

	public void setRatedUserName(String ratedUserName) {
		this.ratedUserName = ratedUserName;
	}

	public String getRatedId() {
		return ratedId;
	}

	public void setRatedId(String ratedId) {
		this.ratedId = ratedId;
	}

	public String getRatedCentent() {
		return ratedCentent;
	}

	public void setRatedCentent(String ratedCentent) {
		this.ratedCentent = ratedCentent;
	}

	public String getRatedDate() {
		return ratedDate;
	}

	public void setRatedDate(Date ratedDate) {
		this.ratedDate = dateFormater.format(ratedDate);
	}

	@Override
	public String toString() {
		return "OrderRated [orderId=" + orderId + ", ratedUserName="
				+ ratedUserName + ", ratedId=" + ratedId + ", ratedCentent="
				+ ratedCentent + ", ratedDate=" + ratedDate + "]";
	}

}
