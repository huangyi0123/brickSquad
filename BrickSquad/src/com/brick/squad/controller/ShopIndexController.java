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
@RequestMapping("/shopIndex")
public class ShopIndexController {
	@Autowired
	@Qualifier("typeService")
	private TypeService typeService;
	@RequestMapping("/toShop")
	public String toShop(HttpServletRequest request) {
		List<Type> aList = typeService.getArctre();
		System.out.println(aList);
		request.setAttribute("alist", aList);
		return "frontEnd_manage/front_bootstrap/index";
	}
}
