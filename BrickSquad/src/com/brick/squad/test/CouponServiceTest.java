package com.brick.squad.test;

import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;

import com.brick.squad.pojo.Coupon;
import com.brick.squad.service.CouponService;
import com.brick.squad.util.JunitClassRunner;

@RunWith(JunitClassRunner.class)
@ContextConfiguration(locations = "classpath:com/brick/squad/config/applicationContext.xml")
public class CouponServiceTest {
	@Autowired
	@Qualifier("couponService")
	private CouponService couponService;
	
	@Test
	public void testInsert(){
		Coupon coupon = new Coupon();
		coupon.setBuyersId("1");
		coupon.setEndTime(new Date());
		coupon.setFullMoney(10);
		coupon.setTypeId("2");
		coupon.setStartTime(new Date());
		couponService.insertCouponById(coupon);
	}
}
