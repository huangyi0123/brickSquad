package com.brick.squad.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.brick.squad.pojo.Article;
import com.brick.squad.service.ArticalService;
import com.brick.squad.service.impl.ArticleServiceImpl;
import com.brick.squad.util.Pagination;

@RequestMapping("/article")
@Controller
public class ArticleController {
	
	@Autowired
	@Qualifier("articalService")
	private  ArticalService articalService;
	
	@RequestMapping("/toArticleList")
	public String toArticleList(){
		return "backstage_managed/jsp/article/article_list";

	}
	@RequestMapping("/getArticleList")
	@ResponseBody
	public List<Article> getArticleList(int pSize,int cPage,String keyword){
		Pagination pagination=new Pagination();
		pagination.setCurentPage(cPage);
		pagination.setPageSize(pSize);
		return  articalService.ArticlePagination(pagination);
		
	}
}
