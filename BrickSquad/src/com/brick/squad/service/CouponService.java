package com.brick.squad.service;

import java.util.List;

import com.brick.squad.expand.CouponExpand;
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
	
	public void updateCouponByIdReceiveAndSurplus(Coupon coupon);
	/**
	 * 根据类型查询优惠劵
	 * @param typpeId 类型id
	 * @return 优惠劵列表
	 */
	public List<CouponExpand> findCouponByTypeId(String typpeId);
}
