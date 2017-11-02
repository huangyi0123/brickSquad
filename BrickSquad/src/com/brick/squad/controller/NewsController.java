package com.brick.squad.controller;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.expand.NewsExpand;
import com.brick.squad.pojo.News;
import com.brick.squad.pojo.Type;
import com.brick.squad.pojo.User;
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
	public String getRegionList(int pSize,int cPage,String keyword,HttpServletRequest request) throws Exception {
		Pagination pagination=new Pagination();
		pagination.setKeyword(keyword);
		pagination.setCurentPage(cPage);
		pagination.setPageSize(pSize);
		User user=(User) request.getSession().getAttribute("user");
		pagination.setUserId(user.getId());
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
	public String insertNews(@Validated News news,HttpServletRequest request,BindingResult result) throws Exception{
		System.out.println("+++++++++++++++=============================================================================="+news.getContent());
		if (result.hasErrors()) {
			List<ObjectError> errors = result.getAllErrors();
			request.setAttribute("errors", errors);
			request.setAttribute("url", "insertNews");
			request.setAttribute("msg", "添加");
			return "backstage_managed/jsp/news/add_news";
					
		}
		User user=(User)request.getSession().getAttribute("user");
		news.setUserId(user.getId());
		news.setPostTime(new Date());
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
	
	@RequestMapping("/findNews")
	public String findNews(HttpServletRequest request,String id) throws Exception {
		News news = newsService.findNewsById(id);
		request.setAttribute("news", news);
		return "backstage_managed/jsp/news/search_news";
	}
	
	@RequestMapping("/findNewsExpandById")
	public String findNewsExpandById(HttpServletRequest request,String id){
		NewsExpand newsExpand=newsService.findNewsExpandById(id);
		request.setAttribute("news", newsExpand);
		return "frontEnd_manage/news/newsDetail";
	}
}
