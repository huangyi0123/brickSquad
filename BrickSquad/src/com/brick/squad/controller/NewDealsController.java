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

import com.brick.squad.pojo.Type;
import com.brick.squad.service.ArticleService;
import com.brick.squad.service.TypeService;
import com.brick.squad.util.PageUtil;

@Controller
@RequestMapping("/new_deals")
public class NewDealsController {
	@Autowired
	@Qualifier("articleService")
	private ArticleService articleService;
	@Autowired
	@Qualifier("typeService")
	private TypeService typeService;

	@RequestMapping("/tonew_deals")
	public String findFrontTimeNumber(HttpServletRequest request,PageUtil pageUtil) throws Exception{
		String  path = request
				.getSession()
				.getServletContext()
				.getRealPath("");
		Map<String, Object> map=articleService.findArticlePage(pageUtil, path, "a.shelfdate");
		map.put("url", "tonew_deals");
		request.setAttribute("url2", "findHotArticletotonew_deals");
		request.setAttribute("msg", "最新商品");
		request.setAttribute("map", map);
		//加载商品所有类型,搜索框
		List<Type> listType=typeService.findAllTypeByParentId("splb");
		request.setAttribute("listType", listType);
		return "frontEnd_manage/front_bootstrap/new_deals";	
	}
	@RequestMapping("/findHotArticle")
	public String findHotArticle(HttpServletRequest request,PageUtil pageUtil) throws Exception {
		String  path = request
				.getSession()
				.getServletContext()
				.getRealPath("");
		Map<String, Object> map=articleService.findArticlePage(pageUtil, path, "totals");
		map.put("url", "tonew_deals");
		request.setAttribute("url2", "findHotArticle");
		request.setAttribute("msg", "热门商品");
		request.setAttribute("map", map);
		//加载商品所有类型,搜索框
		List<Type> listType=typeService.findAllTypeByParentId("splb");
		request.setAttribute("listType", listType);
		return "frontEnd_manage/front_bootstrap/new_deals";	
	}
	@RequestMapping("/findSeckillArticle")
	public String findSeckillArticle() {
		return "frontEnd_manage/front_bootstrap/seckill";
	}
	/**搜索框搜索所有的商品信息*/
	@RequestMapping("/findAllArticle")
	public String findArticleAllType(HttpServletRequest request,PageUtil pageUtil) throws Exception{
		String path=request.getSession().getServletContext().getRealPath("");
		Map<String,Object> map=articleService.findSearchAllArticle(pageUtil, path);
		map.put("url", "findAllArticle");
		map.put("s", pageUtil.getS());
		map.put("search_category", pageUtil.getSearch_category());
		request.setAttribute("url", "findAllArticle");
		request.setAttribute("msg", "所有商品");
		request.setAttribute("map", map);
		//加载商品所有类型,搜索框
		List<Type> listType=typeService.findAllTypeByParentId("splb");
		request.setAttribute("listType", listType);
		return "frontEnd_manage/front_bootstrap/new_deals";
	}
}
