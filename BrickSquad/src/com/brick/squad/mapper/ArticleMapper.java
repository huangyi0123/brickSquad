package com.brick.squad.mapper;

import java.util.List;
import java.util.Map;

import com.brick.squad.expand.ArticleExpand;
import com.brick.squad.expand.NewsArticle;
import com.brick.squad.pojo.Article;
import com.brick.squad.util.PageBeanUtil;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Select;

public interface ArticleMapper {
	/**
	 * 返回商品表
	 * 
	 * @return
	 */
	/** 查询所有商品总数 */
	public int findSearchArticleAllCount();
	public Article findArticleById(String id);

	public void insertArticle(Article article);

	public void deleteArticleById(String id);

	public void updateArticleById(Article article);

	public List<Article> articlePagination(Pagination pagination);

	public int findArticleAllCount(Pagination pagination);

	/**
	 * 查询商品信息:根据所需字段
	 * */
	public List<Select> findArticle();

	public List<ArticleExpand> findAllArticle();

	public String findAllTypeAndBusiness();
	/**根据type的parentId查询商品的typeId*/
	public List<String> findArticleTypeIdSecond(PageBeanUtil pageBeanUtil);

	public ArticleExpand findArticleAndTypeAndBusiness(String id);

	/***
	 * 医疗器械查询商品信息
	 */
	public List<Article> findArticleImgAndName(String typeId);

	/**
	 * 医疗器械类获取商品订单数量
	 * */
	public List<ArticleExpand> findArticleBuyNumberAndMedicle(String parentId);

	/*
	 * 根据商品ID在订单明细表中查询该商品的销售总量
	 * 
	 * @param id
	 * 
	 * @return
	 */
	public int selectArticleSalesNumberTotalById(String id);

	/**
	 * 医疗器械类获取商品总数
	 * */
	public Integer findCountMedicalInstruments(String parentId);

	/**
	 * 医疗器械类获所有商品
	 * */
	public List<Article> findAllMedicalInstruments(PageBeanUtil pageBean);

	/** 医疗器械商品排序 */
	public List<Article> findOrderByMedicalInstruments(PageBeanUtil pageBean);

	public List<Article> findOrderByMedicalInstrumentsDate(PageBeanUtil pageBean);

	public List<Article> findOrderByMedicalInstrumentsPop(PageBeanUtil pageBean);
	/**首页分类的跳转显示商品信息*/
	public List<Article> findArtivleTypePage(PageBeanUtil pageBean);
	/**
	 * 根据价格范围查询商品
	 * */
	public List<Article> findPriceScope(PageBeanUtil pageBean);
	/**
	 * 搜索框搜索商品信息
	 * */
	public List<Article> findArticleTitle(PageBeanUtil pageBean);
	public List<Article> findArticleTitles(PageBeanUtil pageBean);
	/*
	 * public PageBeanUtil<Article> findArtivleAndMedicalInstrumentsPage(int
	 * page);
	 */
	/*
	 * 根据商品ID在评论表中查询评论总量
	 * 
	 * @param id
	 * 
	 * @return
	 */
	public int selectArticleRatedTotalById(String id);

	/**
	 * 获取商品订单数量
	 */
	public List<ArticleExpand> findArticleBuyNumber();

	/**
	 * 获取最新添加的商品
	 */

	public List<NewsArticle> findFrontTime();

	
	/**获取所有商品数量*/
	public Integer findFrontTimeNumber();
	/**获得团购商品数量*/
	public Integer findNewsArticleNumber();

	/**
	 * 获取最新商品
	 * 
	 * @param map
	 *            参数
	 * 
	 * @return 最新商品列表
	 */
	public List<NewsArticle> findNewsArticleByIndex(Map<String, Object> map);
//查询最新商品中的各类信息
	public List<NewsArticle> findNewsArticle(Map<String, Object> map);

	/**查询所有商品信息：搜索框使用*/
	public List<NewsArticle> findSearchAllArticle(Map<String,Object> map);


//团购查询团购人数和优惠价格
	public List<NewsArticle> findNewsArticles(Map<String, Object> map);
	/**
	 * 查询用户购买的商品
	 * @param map 参数
	 * @return 商品列表
	 */
	public List<NewsArticle> findUserArticle(Map<String, Object> map);
	public List<NewsArticle> findSearchAllArticleSecond(Map<String, Object> map);
	public List<NewsArticle> findSearchAllArticleSecondYiLiao(Map<String, Object> map);
	/**
	 * 根据关键字查询所有商品信息
	 * */
	public List<NewsArticle> findSearchAllArticleSecondAll(Map<String, Object> map);
	/**
	 * 搜索框根据分类查询商品信息
	 * */
	public List<NewsArticle> findSearchAllArticleSecondOther(Map<String, Object> map);
	/**
	 * 搜索框根据分类查询商品信息,如果是一级分类
	 * */
	public List<NewsArticle> findSearchAllArticleSecondYiLiaoSecond(Map<String, Object> map);
	
	
	public int findSearchAllArticleCountSecond(String typeId);


}

