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
import com.brick.squad.pojo.User;
import com.brick.squad.service.AgedCouponService;
@Controller
@RequestMapping("agedCoupon")
public class AgedCouponController {
	@Autowired
	@Qualifier("agedCouponService")
	private AgedCouponService agedCouponService;
	
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
				return "领取成功";
			}
			return "已经领取了";
		}else {
			return "请登录再领取";
		}
		
	}
}
