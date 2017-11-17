package com.brick.squad.service;

import java.util.List;

import com.brick.squad.pojo.AgedCoupon;
import com.brick.squad.pojo.Coupon;


public interface AgedCouponService {
	/**
	 * 根据用户ID查询当前用户下的所有优惠券信息
	 * 
	 * @param userId
	 * @return
	 */
	public List<Coupon> findAgedCouponByUserId(String userId);
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
	public AgedCoupon findAgedCouponByCouponId(AgedCoupon agedCoupon);
}
