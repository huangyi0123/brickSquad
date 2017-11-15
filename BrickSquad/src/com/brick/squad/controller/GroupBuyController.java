package com.brick.squad.controller;

import java.util.Map;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.brick.squad.service.ArticleService;
import com.brick.squad.util.PageUtil;

@Controller
@RequestMapping("/group_buy")
public class GroupBuyController {
	@Autowired
	@Qualifier("articleService")
	private ArticleService articleService;
	
	@RequestMapping("/togroup_buy")
	public String findFrontTimeNumber(HttpServletRequest request,PageUtil pageUtil){
		String  path = request.getSession().getServletContext().getRealPath("");
		Map<String, Object> map=articleService.findArticlePages(pageUtil, path, "a.shelfdate");
	    request.setAttribute("map", map);
		//System.out.println("________________"+map);
		return "frontEnd_manage/front_bootstrap/group_buy";	
	}
}


