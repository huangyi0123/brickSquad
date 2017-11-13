package com.brick.squad.service.impl;

import java.util.List;

import net.sf.json.JSONArray;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.brick.squad.expand.CouponPaginationExpand;
import com.brick.squad.mapper.CouponMapper;
import com.brick.squad.pojo.Coupon;
import com.brick.squad.service.CouponService;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Util;

public class CouponServiceImpl implements CouponService {
	@Autowired
	@Qualifier("couponMapper")
	private CouponMapper couponMapper;
	@Override
	public void insertCouponById(Coupon coupon) {
		// TODO Auto-generated method stub
		couponMapper.insertCouponById(coupon);
	}
	@Override
	public String findListCouponPagination(Pagination pagination) {
		// TODO Auto-generated method stub
		List<CouponPaginationExpand> list = couponMapper.findListCouponPagination(pagination);
		int row = couponMapper.findListCouponPaginationCount(pagination);
		Util<CouponPaginationExpand> util = new Util<CouponPaginationExpand>();
		String data = util.SplitPage(list, row);
		return data;
	}
	@Override
	public void deleteCouponAllById(String id) {
		// TODO Auto-generated method stub
		couponMapper.deleteCouponAllById(id);
	}
	@Override
	public void updateCouponById(Coupon coupon) {
		// TODO Auto-generated method stub
		couponMapper.updateCouponById(coupon);
	}
	@Override
	public Coupon findCouponById(String id) {
		// TODO Auto-generated method stub
		
		return couponMapper.findCouponById(id);
	}

}
