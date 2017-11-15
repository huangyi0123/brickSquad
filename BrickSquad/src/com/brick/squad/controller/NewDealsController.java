package com.brick.squad.controller;


import java.io.File; 

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.brick.squad.service.ArticleService;
import com.brick.squad.util.PageUtil;

@Controller
@RequestMapping("/new_deals")
public class NewDealsController {
	@Autowired
	@Qualifier("articleService")
	private ArticleService articleService;

	@RequestMapping("/tonew_deals")
	public String findFrontTimeNumber(HttpServletRequest request,PageUtil pageUtil){
		String  path = request
				.getSession()
				.getServletContext()
				.getRealPath("");
		Map<String, Object> map=articleService.findArticlePage(pageUtil, path, "a.shelfdate");
		map.put("url", "tonew_deals");
		request.setAttribute("msg", "最新商品");
		request.setAttribute("map", map);
		return "frontEnd_manage/front_bootstrap/new_deals";	
	}
	@RequestMapping("/findHotArticle")
	public String findHotArticle(HttpServletRequest request,PageUtil pageUtil) {
		String  path = request
				.getSession()
				.getServletContext()
				.getRealPath("");
		Map<String, Object> map=articleService.findArticlePage(pageUtil, path, "totals");
		map.put("url", "tonew_deals");
		request.setAttribute("msg", "热门商品");
		request.setAttribute("map", map);
		return "frontEnd_manage/front_bootstrap/new_deals";	
	}
	@RequestMapping("/findSeckillArticle")
	public String findSeckillArticle() {
		return "frontEnd_manage/front_bootstrap/seckill";
	}
}
