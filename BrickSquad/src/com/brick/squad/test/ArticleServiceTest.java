package com.brick.squad.test;

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
@RunWith(JunitClassRunner.class)
@ContextConfiguration(locations="classpath:com/brick/squad/config/applicationContext.xml")

public class ArticleServiceTest {
	@Autowired
	@Qualifier("articleService")
	private ArticalService articleService;
	@Test
	public void findArticleById() throws Exception{
		System.out.println(articleService.findArticleById("2").getName());
		
	}
	@Test
	public void deleteArticleById()throws Exception{
		
		articleService.deleteArticleById("1");
	} 
	
	
	@Test
	public void insertArticleById() throws Exception{
		Article article = new Article();
		article.setId("4");
		article.setTypeId("wwee");
		article.setBusinessId("eeee");
		article.setName("铁锤");
		
		articleService.insertArticleById(article);
		
	} 
	
	
	@Test
	public void updateArticleById() throws Exception{
		
		Article article = articleService.findArticleById("1");
		article.setPrice("200");
		
		articleService.updateArticleById(article);
	}
	
}
