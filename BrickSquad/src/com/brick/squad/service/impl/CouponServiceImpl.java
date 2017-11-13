package com.brick.squad.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.brick.squad.mapper.CouponMapper;
import com.brick.squad.pojo.Coupon;
import com.brick.squad.service.CouponService;

public class CouponServiceImpl implements CouponService {
	@Autowired
	@Qualifier("couponMapper")
	private CouponMapper couponMapper;
	@Override
	public void insertCouponById(Coupon coupon) {
		// TODO Auto-generated method stub
		couponMapper.insertCouponById(coupon);
	}

}
