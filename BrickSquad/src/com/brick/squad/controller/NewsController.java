package com.brick.squad.controller;


import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.pojo.News;
import com.brick.squad.service.NewsService;
import com.brick.squad.util.Pagination;

@Controller
@RequestMapping("/news")
public class NewsController {
	@Autowired
	@Qualifier("newsService")
	private NewsService newsService;
	@RequestMapping("/toNewsList")
	public String toRegionList() {
		return "backstage_managed/jsp/news/news_list";
	}
	@RequestMapping("/getNewsList")
	@ResponseBody
	public String getRegionList(int pSize,int cPage,String keyword) throws Exception {
		Pagination pagination=new Pagination();
		pagination.setCurentPage(cPage);
		pagination.setPageSize(pSize);
		return newsService.newsPagination(pagination);
	}
	/**
	 * 添加News新闻，跳转编辑页面
	 * */
	@RequestMapping("/toAddNews")
	public String toAddRapport() throws Exception {
		return "backstage_managed/jsp/news/add_news";
	}
	
	@InitBinder
	protected void initBinder(WebDataBinder binder) {
	    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	    binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}
	@RequestMapping("/insertNews")
	public String insertNews(News news) throws Exception{
		newsService.insertNews(news);
		return "backstage_managed/jsp/news/news_list";
	}
}
