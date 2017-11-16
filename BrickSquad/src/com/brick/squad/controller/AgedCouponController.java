package com.brick.squad.controller;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.filefilter.AndFileFilter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.pojo.AgedCoupon;
import com.brick.squad.pojo.Coupon;
import com.brick.squad.pojo.User;
import com.brick.squad.service.AgedCouponService;
import com.brick.squad.service.CouponService;
@Controller
@RequestMapping("agedCoupon")
public class AgedCouponController {
	@Autowired
	@Qualifier("agedCouponService")
	private AgedCouponService agedCouponService;
	@Autowired
	@Qualifier("couponService")
	private CouponService couponService;
	
	@RequestMapping("insertAgedCoupon")
	@ResponseBody
	public String insertAgedCoupon(AgedCoupon agedCoupon,HttpServletRequest request,String id){
		User user = (User) request.getSession().getAttribute("user");
		if (user!=null && id!=null) {
			AgedCoupon agedCoupon2 =new AgedCoupon();
			agedCoupon2.setPerId(user.getId());
			agedCoupon2.setCougonId(id);
			agedCoupon2=agedCouponService.findAgedCouponByCouponId(agedCoupon2);
			if (agedCoupon2==null) {
				agedCoupon.setPerId(user.getId());
				agedCoupon.setCougonId(id);
				agedCouponService.insertAgedCouponById(agedCoupon);
				//先根据id查询
				Coupon coupon=couponService.findCouponById(id);
				//领取之后剩余量减一
				int surplus=coupon.getSurplus();
				int newSurplus=surplus-1;
				coupon.setSurplus(newSurplus);
				//领取之后领取量加一
				int receive=coupon.getReceive();
				int newReceine=receive+1;
				coupon.setReceive(newReceine);
				//将id传入进去执行修改
				coupon.setId(id);
				couponService.updateCouponByIdReceiveAndSurplus(coupon);
				return "领取成功";
			}
			return "领取了就不要领了";
		}else {
			return "请登录再领取";
		}
		
	}
}
