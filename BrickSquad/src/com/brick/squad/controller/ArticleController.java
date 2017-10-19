package com.brick.squad.controller;


import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
	public String toAddArticle(){
		return "backstage_managed/jsp/article/add_article";
		
	}	
	
	@RequestMapping("/addArticle")
	public String addArticle(Article article) throws Exception{
		articleService.insertArticleById(article);
		
		return "backstage_managed/jsp/article/article_list";}
}
