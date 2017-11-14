package com.brick.squad.service;

import com.brick.squad.pojo.Coupon;
import com.brick.squad.util.Pagination;

public interface CouponService {
	//根据id查询全部字段
	public Coupon findCouponById(String id);
	/**
	 * 插入
	 */
	public void insertCouponById(Coupon coupon);
	/**
	 * 后台分页显示
	 * @param pagination
	 * @return
	 */
	public String findListCouponPagination(Pagination pagination);
	//根据id 删除
	public void deleteCouponAllById(String id);
	//根据id修改
	public void updateCouponById(Coupon coupon);
}
