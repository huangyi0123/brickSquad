package com.brick.squad.mapper;

import java.util.List;

import com.brick.squad.expand.CouponExpand;
import com.brick.squad.expand.CouponPaginationExpand;
import com.brick.squad.pojo.Coupon;
import com.brick.squad.util.Pagination;

public interface CouponMapper {
	/**
	 * 根据id查询
	 */
	public Coupon findCouponById(String id);
	/**
	 * 分页查询和统计
	 */
	public List<CouponPaginationExpand> findListCouponPagination (Pagination pagination);
	public int findListCouponPaginationCount(Pagination pagination);
	/**
	 * 根据id插入
	 */
	public void insertCouponById(Coupon coupon);
	/**
	 * 根据id删除
	 */
	public void deleteCouponAllById(String id);
	/**
	 * 根据id修改
	 */
	public void updateCouponById(Coupon coupon);
	//根据老人优惠券的领取执行的修改方法
	public void updateCouponByIdReceiveAndSurplus(Coupon coupon);
	/**
	 * 根据类型查询优惠劵
	 * @param typpeId 类型id
	 * @return 优惠劵列表
	 */
	public List<CouponExpand> findCouponByTypeId(String typpeId);
}
