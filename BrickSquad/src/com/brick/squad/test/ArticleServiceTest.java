package com.brick.squad.test;

import java.util.ArrayList;
import java.util.List;

import javax.swing.Spring;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

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
		
		articleService.deleteArticleById("1");
	} 
	
	
	@Test
	public void insertArticleById() throws Exception{
		Article article = new Article();

		article.setAname("秋衣");
		article.setDescribes("秋天穿的");
	
		articleService.insertArticleById(article);} 
	
	
	@Test
	public void updateArticleById() throws Exception{
		
		Article article = articleService.findArticleById("1");
		article.setPrice("200");
		
		articleService.updateArticleById(article);
	}
	
	@Test
	public void testArticlePagination(){
		
		List<Article> article = new ArrayList<>();
		Pagination pagination = new  Pagination();
		pagination.setCurentPage(1);
		pagination.setPageSize(4);
		articleService.articlePagination(pagination);
	}
	
	@Test
	public void findArticleAllCount(){
		
		
		System.out.println(articleService.findArticleAllCount());
	}
}
