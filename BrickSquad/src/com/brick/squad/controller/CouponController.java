package com.brick.squad.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.brick.squad.service.CouponService;
import com.brick.squad.service.TypeService;

	@RequestMapping("coupon")
	@Controller
public class CouponController {
	@Autowired
	@Qualifier("couponService")
	private CouponService couponService;
	@Autowired
	@Qualifier("typeService")
	private TypeService typeService;
	
	@RequestMapping("/toCouponList")
	public String toCouponList(){
		return "backstage_managed/jsp/coupon/coupon_list";
	}
}
