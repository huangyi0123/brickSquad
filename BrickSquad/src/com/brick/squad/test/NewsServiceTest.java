package com.brick.squad.test;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;

import com.brick.squad.expand.NewsExpand;
import com.brick.squad.pojo.News;
import com.brick.squad.service.NewsService;
import com.brick.squad.util.JunitClassRunner;
import com.brick.squad.util.Pagination;

/**
 * 新闻表 增删改查测试
 * 
 * @author Luyujing
 * 
 */
@RunWith(JunitClassRunner.class)
@ContextConfiguration(locations = { "classpath:com/brick/squad/config/applicationContext.xml" })
public class NewsServiceTest {

	@Autowired
	@Qualifier("newsService")
	private NewsService newsService;

	// 添加新闻

	@Test
	public void addNews() {
		newsService.addNews("4", "4", "Nike", "/image/4.png", Calendar
				.getInstance().getTime());
	}

	// 删除新闻
	@Test
	public void deleteNews() throws Exception {
		newsService.deleteNews("5ad8f86abdfe11e7aca65254002ec43c");
	}

	@Test
	public void updateNews() {
		newsService.updateNews("4", "白天头条");
	}

	// 查询新闻
	// @Test
	public void findNews() {

		List<News> list = newsService.findNews("黑夜头条");
		System.out.println(list.size());
	}

	@Test
	public void findNewsCount() throws Exception {
		// System.out.println(newsService.findNewsCount());
	}

	// 新闻分页查询
	@Test
	public void newsPagination() throws Exception {
		Pagination pagination = new Pagination();
		pagination.setCurentPage(1);
		pagination.setPageSize(3);
		// System.out.println(newsService.newsPagination(pagination));
	}

	/**
	 * 添加新闻信息测试
	 * 
	 * @throws Exception
	 * */
	@Test
	public void insertNews() throws Exception {
		News news = new News();
		news.setContent("阿里云信息发布中心");
		news.setImagePath("img/map4.jpg");
		news.setPostTime(new Date());
		news.setUserId("3");
		newsService.insertNews(news);
	}

	/**
	 * 根据News的ID修改信息测试
	 * 
	 * @throws Exception
	 * */
	@Test
	public void updateNewsById() throws Exception {
		News news = new News();
		news.setId("2b8d972abbb311e78d4f5254002ec43c");
		news.setContent("阿里云信息发布中心");
		news.setImagePath("xuebiao.jpg");
		news.setPostTime(new Date());
		news.setUserId("555");
		newsService.updateNewsById(news);
	}

	@Test
	public void findNewsExpandById() {
		NewsExpand newsExpand = newsService
				.findNewsExpandById("12e109b4bbb311e78d4f5254002ec43c");
		System.out.println(newsExpand);
	}

	/**
	 * 根据新闻的ID查询新闻信息测试
	 * 
	 * @throws Exception
	 * */
	@Test
	public void findNewsList() {
		String data = newsService.findNewsList();
		System.out.println(data);
	}

	@Test
	public void findNewsById() throws Exception {
		System.out.println(newsService
				.findNewsById("12e109b4bbb311e78d4f5254002ec43c"));
	}
	@Test
	public void findNewsDail() throws Exception{
		String data=newsService.findNewsDaily("66419468d34411e7880a5254002ec43c");
		
			System.out.println("================="+data);
		
	}

}
