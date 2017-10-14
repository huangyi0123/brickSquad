package com.brick.squad.test;

import javax.swing.Spring;

import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.brick.squad.service.ArticalService;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="applicationContext.xml")

public class ArticleServiceTest {
	@Autowired
	private ArticalService articalService;
	public void testfindArticleById(){
		articalService.findArticleById("1");
	}
	
}
