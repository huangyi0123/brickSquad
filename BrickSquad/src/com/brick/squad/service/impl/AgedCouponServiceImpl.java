package com.brick.squad.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.brick.squad.mapper.AgedCouponMapper;
import com.brick.squad.pojo.AgedCoupon;
import com.brick.squad.pojo.Coupon;
import com.brick.squad.service.AgedCouponService;

public class AgedCouponServiceImpl implements AgedCouponService {
	@Autowired
	@Qualifier("agedCouponMapper")
	private AgedCouponMapper agedCouponMapper;

	@Override
	public AgedCoupon findAgedCouponById(String id) {
		// TODO Auto-generated method stub
		return agedCouponMapper.findAgedCouponById(id);
	}

	@Override
	public void insertAgedCouponById(AgedCoupon agedCoupon) {
		// TODO Auto-generated method stub
		agedCouponMapper.insertAgedCouponById(agedCoupon);
	}

	@Override
	public void deleteAgedCouponAllById(String id) {
		// TODO Auto-generated method stub
		agedCouponMapper.deleteAgedCouponAllById(id);
	}

	@Override
	public void updateAgedCouponById(AgedCoupon agedCoupon) {
		// TODO Auto-generated method stub
		agedCouponMapper.updateAgedCouponById(agedCoupon);
	}

	@Override
	public AgedCoupon findAgedCouponByCouponId(AgedCoupon agedCoupon) {
		// TODO Auto-generated method stub
		return agedCouponMapper.findAgedCouponByCouponId(agedCoupon);
	}

	@Override
	public List<Coupon> findAgedCouponByUserId(String userId) {
		// TODO Auto-generated method stub
		return agedCouponMapper.findAgedCouponByUserId(userId);
	}

}
