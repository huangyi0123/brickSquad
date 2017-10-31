package com.brick.squad.controller;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.expand.ArticleExpand;
import com.brick.squad.pojo.Activities;
import com.brick.squad.pojo.Article;
import com.brick.squad.service.ArticalService;
import com.brick.squad.util.Pagination;

@RequestMapping("/article")
@Controller
public class ArticleController {
	
	@Autowired
	@Qualifier("articleService")
	private  ArticalService articleService;
	
	@RequestMapping("/toArticleList")
	public String toArticleList(){
		return "backstage_managed/jsp/article/article_list";

	}
	@RequestMapping("/getArticleList")
	@ResponseBody
	public String getArticleList(int pSize,int cPage,String keyword){
		
		Pagination pagination=new Pagination();
		pagination.setCurentPage(cPage);
		pagination.setPageSize(pSize);
		return  articleService.articlePagination(pagination);}
	
	@RequestMapping("/toAddArticle")
	public String toAddArticle(HttpServletRequest request, String id) throws Exception{
		 	if (id != null) {
			request.setAttribute("msg", "修改");
			request.setAttribute("url", "updateArticleById");
			Article article = articleService.findArticleById(id);
			request.setAttribute("article", article);
		} else {
			request.setAttribute("url", "addArticle");
			request.setAttribute("msg", "添加");}
		
		return "backstage_managed/jsp/article/add_article";
		
	}	
	
	
	@RequestMapping("/addArticle")
	public String addArticle(Article article) throws Exception{
		articleService.insertArticleById(article);
		
		return "backstage_managed/jsp/article/article_list";}
	
	
	@RequestMapping("/deleteArticleById")
	@ResponseBody
	public String deleteArticleById(String id) throws Exception{
		articleService.deleteArticleById(id);
		return "success";	
	}
	
	
	@RequestMapping("/updateArticleById")
	public String updateArticleById(Article article) throws Exception{
		
		articleService.updateArticleById(article);
		return "backstage_managed/jsp/article/article_list";
	}
	
	
	@RequestMapping("/findAllArticle")
	@ResponseBody
	public String findAllArticle(){
		return articleService.findAllArticle();
	}
	
	
	@RequestMapping("/findArticleById")
	public String findArticleById(HttpServletRequest request,String id){
		ArticleExpand articleExpand = articleService.findArticleAndTypeAndBusiness(id);
		request.setAttribute("articleExpand", articleExpand);
		return "backstage_managed/jsp/article/search_article";
	}

@RequestMapping("/findAllTypeAndBusiness")
@ResponseBody
	public String findAllTypeAndBusiness(){
	System.out.println(articleService.findAllTypeAndBusiness());
		return articleService.findAllTypeAndBusiness();
		
		
	}
	
	
}


