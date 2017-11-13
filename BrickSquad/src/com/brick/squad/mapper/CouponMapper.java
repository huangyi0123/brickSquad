package com.brick.squad.mapper;

import java.util.List;

import com.brick.squad.expand.CouponPaginationExpand;
import com.brick.squad.pojo.Coupon;
import com.brick.squad.util.Pagination;

public interface CouponMapper {
	/**
	 * 分页查询和统计
	 */
	public List<CouponPaginationExpand> findListCouponPagination (Pagination pagination);
	public int findListCouponPaginationCount();
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
}
