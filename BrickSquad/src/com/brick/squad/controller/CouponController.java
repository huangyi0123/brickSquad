package com.brick.squad.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.brick.squad.pojo.Type;
import com.brick.squad.service.TypeService;
@Controller
@RequestMapping("/coupon")
public class CouponController {
	@Autowired
	@Qualifier("typeService")
	private TypeService typeService;
	@RequestMapping("/findArticleType")
	public String findArticleType(HttpServletRequest request) {
		List<Type> types=typeService.getArctre("splb");
		request.setAttribute("types", types);
		return "frontEnd_manage/front_bootstrap/apply_coupon";
	}
}
