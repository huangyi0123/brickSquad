package com.brick.squad.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.brick.squad.expand.ArticleExpand;
import com.brick.squad.expand.NewsArticle;
import com.brick.squad.pojo.Article;
import com.brick.squad.util.PageBeanUtil;
import com.brick.squad.util.PageUtil;
import com.brick.squad.util.Pagination;
import com.brick.squad.util.Select;

public interface ArticleService {
	/**
	 * 
	 * @param id
	 * @return 返回商品列表
	 */

	public Article findArticleById(String id) throws Exception;

	public void insertArticleById(Article article) throws Exception;

	public void deleteArticleById(String id, HttpServletRequest request)
			throws Exception;

	public void updateArticleById(Article article) throws Exception;

	public String articlePagination(Pagination pagination);

	// public int findArticleAllCount();
	/**
	 * 查询商品信息:根据所需字段
	 * */
	public String findArticle() throws Exception;

	public String findAllArticle();

	public String findAllTypeAndBusiness();

	public ArticleExpand findArticleAndTypeAndBusiness(String id);

	/***
	 * 医疗器械查询商品信息
	 */
	public List<Article> findArticleImgAndName(String typeId) throws Exception;

	/**
	 * 获取商品订单数量
	 */
	public List<ArticleExpand> findArticleBuyNumber();

	/**
	 * 医疗器械类获取商品订单数量
	 * */
	public List<ArticleExpand> findArticleBuyNumberAndMedicle(String parentId)
			throws Exception;

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
	public Integer findCountMedicalInstruments(String parentId)
			throws Exception;

	/**
	 * 医疗器械类获所有商品
	 * */
	/*
	 * public List<Article> findAllMedicalInstruments(PageBeanUtil
	 * pageBean)throws Exception;
	 */


	
	/*public List<Article> findAllMedicalInstruments(PageBeanUtil pageBean)throws Exception;*/
	/**医疗器械商品分页查询*/
	public PageBeanUtil<Article> findArtivleAndMedicalInstrumentsPage(int page)throws Exception;
	/**医疗器械商品指定页数*/
	public PageBeanUtil<Article> findArtivleAndMedicalInstrumentsPage(int page ,int limitPage)throws Exception;
	/**医疗器械商品排序*/
	public PageBeanUtil<Article> findOrderByMedicalInstruments(int page ,int sequence,int limitPage)throws Exception;
	public PageBeanUtil<Article> findOrderByMedicalInstrumentsDate(int page ,int sequence,int limitPage)throws Exception;
	public PageBeanUtil<Article> findOrderByMedicalInstrumentsPop(int page ,int sequence,int limitPage)throws Exception;

	/********最新商品分页查询 *********/
	public Map<String, Object> findArticlePage(PageUtil pageUtil,String path,String order);
	
	public Map<String, Object> findArticlePages(PageUtil pageUtil,String path,String order);

	
	public int selectArticleRatedTotalById(String id);

	/**
	 * 获取商品首页数据
	 * 
	 * @return 数据集合
	 */
	public Map<String, Object> shopIndex(String userId);

	/**
	 * 获取最新添加的商品
	 */

	public List<NewsArticle> findFrontTime();
	
	
	/**获取所有商品数量*/


	public List<Article> findSecondMedicalInstruments(String typeId)
			throws Exception;
	/**
	 * 根据价格范围查询商品	
	 * */
	public PageBeanUtil<Article> findPriceScope(int page,int limitPage,double minPrice,double maxPrice)throws Exception;
	/**
	 * 导航搜索框搜索
	 * */
	PageBeanUtil findArticleTitle(int page, int limitPage, String s,
			String search_category)throws Exception;

	public PageBeanUtil findArticleTitles(int page, int limitPage,
			String search_category);

}
