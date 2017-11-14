package com.brick.squad.service;

import com.brick.squad.pojo.AgedCoupon;


public interface AgedCouponService {
	/**
	 * 根据id查询
	 */
	public AgedCoupon findAgedCouponById(String id);
	/** 
	 *根据id插入
	 */
	public void insertAgedCouponById(AgedCoupon agedCoupon);
	/**
	 * 根据id删除
	 */
	public void deleteAgedCouponAllById(String id);
	/**
	 * 根据id修改
	 */
	public void updateAgedCouponById(AgedCoupon agedCoupon);
}
