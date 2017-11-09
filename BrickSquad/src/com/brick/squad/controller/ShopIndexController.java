package com.brick.squad.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.expand.SecKill;
import com.brick.squad.pojo.Type;
import com.brick.squad.service.ShopActivitiesService;
import com.brick.squad.service.TypeService;

@Controller
@RequestMapping("/shopIndex")
public class ShopIndexController {
	@Autowired
	@Qualifier("typeService")
	private TypeService typeService;
	@Autowired
	@Qualifier("shopActivitiesService")
	private ShopActivitiesService shopActivitiesService;
	@RequestMapping("/toShop")
	public String toShop(HttpServletRequest request) {
		
		return "frontEnd_manage/front_bootstrap/index";
	}
	@RequestMapping("/getArticleType")
	@ResponseBody
	public String getArticleType(String id) {
		String data=typeService.getArticleType(id);
		return data;
	}
}
