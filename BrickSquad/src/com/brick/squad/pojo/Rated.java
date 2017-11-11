package com.brick.squad.pojo;

import java.util.Date;

/**
 * 
 * @author 吴文鑫 评论
 */
public class Rated {
	private String id;
	private String orderId;
	private Date ratedDate;
	private String centent;

	/**
	 * @return the id
	 */
	public String getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(String id) {
		this.id = id;
	}

	/**
	 * @return the orderId
	 */
	public String getOrderId() {
		return orderId;
	}

	/**
	 * @param orderId
	 *            the orderId to set
	 */
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	/**
	 * @return the ratedDate
	 */
	public Date getRatedDate() {
		return ratedDate;
	}

	/**
	 * @param ratedDate
	 *            the ratedDate to set
	 */
	public void setRatedDate(Date ratedDate) {
		this.ratedDate = ratedDate;
	}

	/**
	 * @return the centent
	 */
	public String getCentent() {
		return centent;
	}

	/**
	 * @param centent
	 *            the centent to set
	 */
	public void setCentent(String centent) {
		this.centent = centent;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Rated [id=" + id + ", orderId=" + orderId + ", ratedDate="
				+ ratedDate + ", centent=" + centent + "]";
	}

}
