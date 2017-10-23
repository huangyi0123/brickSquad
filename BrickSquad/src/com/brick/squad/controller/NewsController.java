package com.brick.squad.controller;


import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.pojo.News;
import com.brick.squad.pojo.Type;
import com.brick.squad.service.NewsService;
import com.brick.squad.service.UserService;
import com.brick.squad.util.Pagination;

@Controller
@RequestMapping("/news")
public class NewsController {
	@Autowired
	@Qualifier("newsService")
	private NewsService newsService;
	@Autowired
	@Qualifier("userService")
	private UserService userService;
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
	public String toAddRapport(HttpServletRequest request,String id) throws Exception {
		if(id!=null){
			request.setAttribute("msg", "修改");
			request.setAttribute("url", "updateNews");
			News news=newsService.findNewsById(id);
			request.setAttribute("news", news);
		}else{
			request.setAttribute("url", "insertNews");
			request.setAttribute("msg", "添加");
		}
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
	@RequestMapping("/findUser")
	@ResponseBody
	public String findUser() throws Exception{
		return userService.findAllUsers();
	}
	
	@RequestMapping("/deleteNews")
	@ResponseBody
	public String deleteNews(String id){
		newsService.deleteNews(id);
		return "success";
	}
	@RequestMapping("/updateNews")
	public String updateNews(News news) throws Exception{
		newsService.updateNewsById(news);
		return "backstage_managed/jsp/news/news_list";
	}
}
