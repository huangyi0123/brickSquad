package com.brick.squad.controller;


import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.brick.squad.service.CouponService;
import com.brick.squad.service.TypeService;
import com.brick.squad.pojo.Type;

@Controller
@RequestMapping("/coupon")

public class CouponController {
	@Autowired
	@Qualifier("couponService")
	private CouponService couponService;
	@Autowired
	@Qualifier("typeService")
	private TypeService typeService;
	//后台分页显示
	@RequestMapping("/toCouponList")
	public String toCouponList(){
		return "backstage_managed/jsp/coupon/coupon_list";
	}
	//后台添加
	@RequestMapping("")
	public String toAddCoupon(){
		
		
		return "backstage_managed/jsp/coupon/add_coupon";
	}
	@RequestMapping("/findArticleType")
	public String findArticleType(HttpServletRequest request) {
		List<Type> types=typeService.getArctre("splb");
		request.setAttribute("types", types);
		return "frontEnd_manage/front_bootstrap/apply_coupon";
	}
	
}
