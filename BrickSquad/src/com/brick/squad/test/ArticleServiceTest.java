package com.brick.squad.test;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;

import com.brick.squad.expand.ArticleExpand;
import com.brick.squad.pojo.Article;
import com.brick.squad.service.ArticalService;
import com.brick.squad.util.JunitClassRunner;
import com.brick.squad.util.Pagination;
@RunWith(JunitClassRunner.class)
@ContextConfiguration(locations="classpath:com/brick/squad/config/applicationContext.xml")

public class ArticleServiceTest {
	@Autowired
	@Qualifier("articleService")
	private ArticalService articleService;
	@Test
	public void findArticleById() throws Exception{
		System.out.println(articleService.findArticleById("2").getAname());
		
	}
	@Test
	public void deleteArticleById()throws Exception{
		articleService.deleteArticleById("de46677cc06b11e7aca65254002ec43c");
	} 
	
	@Test
	public void insertArticleById() throws Exception{
		Article article = new Article();
		article.setAname("秋衣");
		article.setDescribes("秋天穿的");
		articleService.insertArticleById(article);} 
	
	
	@Test
	public void updateArticleById() throws Exception{
		
		Article article = articleService.findArticleById("2");
		article.setPrice("299");
		article.setTypeId("1");
		articleService.updateArticleById(article);
	}
	
	@Test
	public void testArticlePagination(){
		List<Article> article = new ArrayList<>();
		Pagination pagination = new  Pagination();
		pagination.setCurentPage(1);
		pagination.setPageSize(4);
		String data=articleService.articlePagination(pagination);
		System.out.println(data);
	}
	
	/*@Test
	public void findArticleAllCount(){
		System.out.println(articleService.findArticleAllCount());
	}*/
	@Test
	public void findArticle() throws Exception{
		String data=articleService.findArticle();
		System.out.println(data);
	}
	@Test
	public void findAllTypeAndBusiness(){
		String data=articleService.findAllTypeAndBusiness();
		System.out.println(data);
	}
	@Test
	public void findAllArticle() throws Exception{
		System.out.println("tttttttttttttttttt"+articleService.findAllArticle());
	}
	@Test
	public void findArticleAndTypeAndBusiness(){
		ArticleExpand  articleExpand=articleService.findArticleAndTypeAndBusiness("12");
		System.out.println(articleExpand.getBname());
	}

}
