package com.brick.squad.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONArray;

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
import com.brick.squad.service.TypeService;
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
	@Autowired
	@Qualifier("typeService")
	private TypeService typeService;

	@RequestMapping("/toNewsList")
	public String toRegionList() {
		return "backstage_managed/jsp/news/news_list";
	}

	@RequestMapping("/getNewsList")
	@ResponseBody
	public String getRegionList(int pSize, int cPage, String keyword,
			HttpServletRequest request) throws Exception {
		Pagination pagination = new Pagination();
		pagination.setKeyword(keyword);
		pagination.setCurentPage(cPage);
		pagination.setPageSize(pSize);
		User user = (User) request.getSession().getAttribute("user");
		pagination.setUserId(user.getId());
		pagination.setRoleId(request.getSession().getAttribute("roleId")
				.toString());
		return newsService.newsPagination(pagination);
	}

	/**
	 * 添加News新闻，跳转编辑页面
	 * */
	@RequestMapping("/toAddNews")
	public String toAddRapport(HttpServletRequest request, String id)
			throws Exception {
		String dataType = typeService
				.findTypeByParentId("b6492682cd0011e7aca65254002ec43c");
		request.setAttribute("dataType", dataType);
		if (id != null) {
			News news = newsService.findNewsById(id);
			request.setAttribute("news", news);
			request.setAttribute("msg", "修改");
			request.setAttribute("url", "updateNews");
		} else {
			request.setAttribute("url", "insertNews");
			request.setAttribute("msg", "添加");
		}
		return "backstage_managed/jsp/news/add_news";
	}

	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(
				dateFormat, true));
	}

	@RequestMapping("/insertNews")
	public String insertNews(@Validated News news, BindingResult result,
			HttpServletRequest request) throws Exception {

		if (result.hasErrors()) {
			String dataType = typeService
					.findTypeByParentId("b6492682cd0011e7aca65254002ec43c");
			request.setAttribute("dataType", dataType);
			List<ObjectError> errors = result.getAllErrors();
			request.setAttribute("errors", errors);
			request.setAttribute("url", "insertNews");
			request.setAttribute("msg", "添加");
			return "backstage_managed/jsp/news/add_news";

		}
		User user = (User) request.getSession().getAttribute("user");
		news.setUserId(user.getId());
		news.setPostTime(new Date());
		newsService.insertNews(news);
		return "backstage_managed/jsp/news/news_list";
	}

	@RequestMapping("/findUser")
	@ResponseBody
	public String findUser() throws Exception {
		return userService.findAllUsers();
	}

	@RequestMapping("/deleteNews")
	@ResponseBody
	public String deleteNews(String id) {
		newsService.deleteNews(id);
		return "success";
	}

	@RequestMapping("/updateNews")
	public String updateNews(News news) throws Exception {
		newsService.updateNewsById(news);
		return "backstage_managed/jsp/news/news_list";
	}

	@RequestMapping("/findNews")
	public String findNews(HttpServletRequest request, String id)
			throws Exception {
		String dataType = typeService
				.findTypeByParentId("b6492682cd0011e7aca65254002ec43c");
		request.setAttribute("dataType", dataType);
		News news = newsService.findNewsById(id);
		request.setAttribute("news", news);
		return "backstage_managed/jsp/news/search_news";
	}

	/**
	 * 返回主页新闻列表
	 * 
	 * @param request
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/findNewsReturnIndex")
	@ResponseBody
	public String findNewsReturnIndex(HttpServletRequest request)
			throws Exception {
		String newString = newsService.findNewsList();
		return newString;
	}

	@RequestMapping("/findNewsExpandById")
	public String findNewsExpandById(HttpServletRequest request, String id) {
		NewsExpand newsExpand = newsService.findNewsExpandById(id);
		request.setAttribute("news", newsExpand);
		return "frontEnd_manage/news/newsDetail";
	}

	@RequestMapping("/getNutritionalDietList")
	@ResponseBody
	public String getNutritionalDietList(Pagination pagination) {
		return newsService.NutritionalDietListPagination(pagination);
	}

	@RequestMapping("/getNutritionalDietInfo")
	@ResponseBody
	public String getNutritionalDietInfo(String id) {
		return newsService.NutritionalDietInfoById(id);
	}
		// 官网首页 ：动态新闻查询，日常新闻 
	@RequestMapping("/findNewsDaily")
	@ResponseBody
	public String findNewsDaily() throws Exception{
		//id:日常新闻的ID
		List<News> list=newsService.findNewsDaily("66419468d34411e7880a5254002ec43c");
		JSONArray jsonArray=new JSONArray();
		String data=jsonArray.fromObject(list).toString();
		System.out.println(data);
		return data;
	}

}
