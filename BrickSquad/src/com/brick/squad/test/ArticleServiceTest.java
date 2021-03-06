package com.brick.squad.test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;

import com.brick.squad.expand.ArticleExpand;
import com.brick.squad.expand.NewsArticle;
import com.brick.squad.mapper.ArticleMapper;
import com.brick.squad.pojo.Article;
import com.brick.squad.service.ArticleService;
import com.brick.squad.util.JunitClassRunner;
import com.brick.squad.util.PageBeanUtil;
import com.brick.squad.util.Pagination;

@RunWith(JunitClassRunner.class)
@ContextConfiguration(locations = "classpath:com/brick/squad/config/applicationContext.xml")
public class ArticleServiceTest {
	@Autowired
	@Qualifier("articleService")
	private ArticleService articleService;

	@Autowired
	@Qualifier("newsArticle")
	private NewsArticle newsArticle;
	
	@Test
	public void findNewsArticles(Map<String, Object> map){
	System.out.println(articleMapper.findNewsArticles(map));	
	}
	
	
	@Test
	public void findArticleById() throws Exception {
		System.out.println(articleService.findArticleById(
				"fee1c768c78911e7aca65254002ec43c"));

	}

	@Test
	public void selectArticleRatedTotalById() {
		System.out
				.println(articleService
						.selectArticleRatedTotalById("afdfddacc3bb11e7aca65254002ec43c"));
	}

	@Test
	public void selectArticleSalesNumberTotalByIdTest() {
		System.out
				.println(articleService
						.selectArticleSalesNumberTotalById("afdfddacc3bb11e7aca65254002ec43c"));
	}

	/*
	 * @Test public void deleteArticleById()throws Exception{
	 * articleService.deleteArticleById("de46677cc06b11e7aca65254002ec43c"); }
	 */

	@Test
	public void insertArticleById() throws Exception {
		Article article = new Article();
		article.setAname("秋衣");
		article.setDescribes("秋天穿的");
		articleService.insertArticleById(article);
	}

	@Test
	public void updateArticleById() throws Exception {

		Article article = articleService.findArticleById("2");
		article.setPrice("299");
		article.setTypeId("1");
		articleService.updateArticleById(article);
	}

	@Test
	public void testArticlePagination() {
		List<Article> article = new ArrayList<>();
		Pagination pagination = new Pagination();
		pagination.setCurentPage(1);
		pagination.setPageSize(4);
		String data = articleService.articlePagination(pagination);
		System.out.println(data);
	}

	/*
	 * @Test public void findArticleAllCount(){
	 * System.out.println(articleService.findArticleAllCount()); }
	 */
	@Test
	public void findArticle() throws Exception {
		String data = articleService.findArticle();
		System.out.println(data);
	}

	@Test
	public void findAllTypeAndBusiness() {
		String data = articleService.findAllTypeAndBusiness();
		System.out.println(data);
	}

	@Test
	public void findAllArticle() throws Exception {
		System.out.println("tttttttttttttttttt"
				+ articleService.findAllArticle());
	}

	@Test
	public void findArticleAndTypeAndBusiness() {
		ArticleExpand articleExpand = articleService
				.findArticleAndTypeAndBusiness("12");
		System.out.println(articleExpand.getBname());
	}

	/***
	 * 医疗器械查询商品信息测试
	 * 
	 * @throws Exception
	 * 
	 */
	@Test
	public void findArticleImgAndName() throws Exception {
		List<Article> listArticle = articleService
				.findArticleImgAndName("laorenjianfuyongpin");
		System.out.println("========" + listArticle);
	}

	@Test
	public void findArticleBuyNubmer() {
		List<ArticleExpand> articleExpand = articleService
				.findArticleBuyNumber();
		for (ArticleExpand articleExpand2 : articleExpand) {
			System.out.println(articleExpand2.getAname());
		}

	}

	/**
	 * 医疗器械类获取商品订单数量测试
	 * */
	@Test
	public void findArticleBuyNumberAndMedicle() throws Exception {
		List<ArticleExpand> articleExpand = articleService
				.findArticleBuyNumberAndMedicle("yiliaoqixie");
		for (ArticleExpand articleExpand2 : articleExpand) {
			System.out.println(articleExpand2.getAname());
		}
	}

	/**
	 * 医疗器械类获取商品总数测试
	 * 
	 * @throws Exception
	 * */
	@Test
	public void findCountMedicalInstruments() throws Exception {
		Integer count = articleService
				.findCountMedicalInstruments("yiliaoqixie");
		System.out.println(count);
	}

	/**
	 * 医疗器械类获所有商品测试
	 * 
	 * @throws Exception
	 * */
	@Test
	public void findArtivleAndMedicalInstrumentsPage() throws Exception {
		PageBeanUtil<Article> listArticle = articleService
				.findArtivleAndMedicalInstrumentsPage(1);
		List<Article> list = listArticle.getList();
		for (Article article : list) {
			System.out.println(article.getAname());
		}
	}

	@Test
	public void findArtivleAndMedicalInstrumentsPage1() throws Exception {
		PageBeanUtil<Article> listArticle = articleService
				.findArtivleAndMedicalInstrumentsPage(1, 24);
		List<Article> list = listArticle.getList();
		for (Article article : list) {
			System.out.println(article.getAname());
		}
	}

	@Test
	public void findOrderByMedicalInstruments() throws Exception {
		PageBeanUtil<Article> listArticle = articleService
				.findOrderByMedicalInstruments(1, 4, 24);
		List<Article> list = listArticle.getList();
		for (Article article : list) {
			System.err.println(article.getAname() + "============="
					+ article.getPrice());
		}
	}

	@Autowired
	@Qualifier("articleMapper")
	private ArticleMapper articleMapper;

	@Test
	public void testfindNewsArticleByIndex() {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("take", 4);
		map.put("order", "totals");
		List<NewsArticle> list = articleMapper.findNewsArticleByIndex(map);
		for (NewsArticle newsArticle : list) {
			System.err.println(newsArticle.toString());
		}
	}

	@Test
	public void findSecondMedicalInstruments() throws Exception {
		List<Article> data = articleService
				.findSecondMedicalInstruments("laorenjianfuyongpin");
		for (Article article : data) {
			System.err.println(article);
		}
	}
	@Test
	public void findPriceScope() throws Exception{
		PageBeanUtil<Article> listP=articleService.findPriceScope(0,0,1,500);
		List<Article> list=listP.getList();
		for(Article article:list){
			System.out.println("=============="+article);
		}
	}
	@Test
	public void findSearchAllArticleCountSecond(){
		System.out.println(articleService.findSearchAllArticleCountSecond("yiliaoqixie"));
	}
	@Test
	public void findArticleTypeIdSecond(){
		PageBeanUtil pageBeanUtil=new PageBeanUtil<>();
		pageBeanUtil.setParentId("yiliaoqixie");
		List<String> data=articleService.findArticleTypeIdSecond(pageBeanUtil);
		System.out.println("+++++++++++++++++"+data);
	}
}
