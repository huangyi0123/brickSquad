package com.brick.squad.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
}
