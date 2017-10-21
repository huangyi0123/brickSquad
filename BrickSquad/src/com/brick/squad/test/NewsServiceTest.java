package com.brick.squad.test;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.brick.squad.pojo.News;
import com.brick.squad.service.NewsService;
import com.brick.squad.util.Pagination;



/**
 * 新闻表 增删改查测试
 * @author Luyujing
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:com/brick/squad/config/applicationContext.xml"})
public class NewsServiceTest {
	
	@Autowired
	@Qualifier("newsService")
	private NewsService newsService;
	//添加新闻
	@Test
	public void addNews(){
		newsService.addNews("4","4","Nike","/image/4.png",Calendar.getInstance().getTime());
	}
	//删除新闻
	//@Test
	public void deleteNews(){
		newsService.deleteNews("1");
	}
	//@Test
	public void updateNews(){
		newsService.updateNews("2","白天头条");
	}
	//查询新闻
	//@Test
	public void findNews(){
		
		List<News> list=newsService.findNews("黑夜头条");
		System.out.println(list.size());
	}
	@Test
	public void findNewsCount() throws Exception{
		System.out.println(newsService.findNewsCount());
	}
	//新闻分页查询
	@Test
	public void ordersPagination() throws Exception{
		Pagination pagination = new Pagination();
		pagination.setCurentPage(1);
		pagination.setPageSize(3);
		System.out.println(newsService.newsPagination(pagination));
	}
	/**
	 * 添加新闻信息测试
	 * @throws Exception 
	 * */
	@Test
	public void insertNews() throws Exception{
		News news=new News();
		news.setId("5");
		news.setContent("阿里云信息发布中心");
		news.setImagePath("img/map4.jpg");
		news.setPostTime(new Date());
		news.setUserId("3");
		newsService.insertNews(news);
	}
}
