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
	/** 查询所有商品总数 */
	public int findSearchArticleAllCount()throws Exception;

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
	/**根据type的parentId查询商品的typeId*/
	public List<String> findArticleTypeIdSecond(PageBeanUtil pageBeanUtil);

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

	/**查询所有商品信息：搜索框使用*/
	public Map<String, Object> findSearchAllArticle(PageUtil pageUtil,String path);
	public Map<String, Object> findSearchAllArticleSecond(PageUtil pageUtil,String path);
	public Map<String, Object> findSearchAllArticleSecondYiLiao(PageUtil pageUtil,String path);
	public int findSearchAllArticleCountSecond(String typeId);
	/**
	 * 根据关键字查询所有商品信息
	 * */
	public  Map<String, Object> findSearchAllArticleSecondAll(PageUtil pageUtil,String path);
	/**
	 * 搜索框根据分类查询商品信息
	 * */
	public Map<String, Object> findSearchAllArticleSecondOther(PageUtil pageUtil,String path);
	/**
	 * 搜索框根据分类查询商品信息,如果是一级分类
	 * */
	public Map<String, Object> findSearchAllArticleSecondYiLiaoSecond(PageUtil pageUtil,String path);
	public Map<String, Object> findArticlePages(PageUtil pageUtil,String path,String order);

	/**
	 * 一二级关联查询总数
	 * */
	public int findSearchAllArticleCountSecondOther(String typeId);
	/**
	 * 根据关键字查询商品信息计算总数
	 * */
	public int findSearchAllArticleCountThreadOther(Map<String, Object> map);
	
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
	/**首页分类的跳转显示商品信息*/
	public PageBeanUtil<Article> findArtivleTypePage(int page,String typeId) throws Exception;

	public PageBeanUtil findArtivleAndMedicalInstrumentsPage(int page,
			int limitPage, String typeId);

	public PageBeanUtil findOrderByTypeSecondDate(int page, int sequence,
			int limitPage, String typeId);

	public PageBeanUtil findOrderByTypePop(int page, int sequence,
			int limitPage, String typeId);

	public PageBeanUtil findOrderByArticlePrice(int page, int sequence,
			int limitPage, String typeId);

	public PageBeanUtil findTitlePriceScope(int page, int limitPage,
			double minPrice, double maxPrice, String typeId);
	/**
	 * 根据商家及区域统计商品类别数量
	 * 
	 * @param map
	 *            商家、区域信息
	 * @return 数据
	 */
	public String findEchartsAreac(Map<String, Object> map);
	/**
	 * 商品销售排行榜
	 * @param map 筛选信息
	 * @return 排行榜
	 */
	public String findEchartsArticleTop(Map<String, Object> map);

}
