package com.brick.squad.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
@RequestMapping("/coupon")
public class CouponController {
	@RequestMapping("/findArticleType")
	public String findArticleType() {
		return "frontEnd_manage/front_bootstrap/apply_coupon";
	}
}
