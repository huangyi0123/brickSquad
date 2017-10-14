package com.brick.squad.test;

import javax.swing.Spring;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.brick.squad.service.ArticalService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="classpath:com/brick/squad/config/applicationContext.xml")

public class ArticleServiceTest {
	@Autowired
	@Qualifier("articalService")
	private ArticalService articalService;
	@Test
	public void testfindArticleById() throws Exception{
		
		
		System.out.println(articalService.findArticleById("1"));
	}
	
}
